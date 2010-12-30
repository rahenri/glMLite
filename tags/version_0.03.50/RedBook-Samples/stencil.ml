(* Copyright (c) Mark J. Kilgard, 1994. *)

(* (c) Copyright 1993, Silicon Graphics, Inc.
 * ALL RIGHTS RESERVED
 * Permission to use, copy, modify, and distribute this software for
 * any purpose and without fee is hereby granted, provided that the above
 * copyright notice appear in all copies and that both the copyright notice
 * and this permission notice appear in supporting documentation, and that
 * the name of Silicon Graphics, Inc. not be used in advertising
 * or publicity pertaining to distribution of the software without specific,
 * written prior permission.
 *
 * THE MATERIAL EMBODIED ON THIS SOFTWARE IS PROVIDED TO YOU "AS-IS"
 * AND WITHOUT WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR OTHERWISE,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY OR
 * FITNESS FOR A PARTICULAR PURPOSE.  IN NO EVENT SHALL SILICON
 * GRAPHICS, INC.  BE LIABLE TO YOU OR ANYONE ELSE FOR ANY DIRECT,
 * SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY
 * KIND, OR ANY DAMAGES WHATSOEVER, INCLUDING WITHOUT LIMITATION,
 * LOSS OF PROFIT, LOSS OF USE, SAVINGS OR REVENUE, OR THE CLAIMS OF
 * THIRD PARTIES, WHETHER OR NOT SILICON GRAPHICS, INC.  HAS BEEN
 * ADVISED OF THE POSSIBILITY OF SUCH LOSS, HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE
 * POSSESSION, USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 * US Government Users Restricted Rights
 * Use, duplication, or disclosure by the Government is subject to
 * restrictions set forth in FAR 52.227.19(c)(2) or subparagraph
 * (c)(1)(ii) of the Rights in Technical Data and Computer Software
 * clause at DFARS 252.227-7013 and/or in similar or successor
 * clauses in the FAR or the DOD or NASA FAR Supplement.
 * Unpublished-- rights reserved under the copyright laws of the
 * United States.  Contractor/manufacturer is Silicon Graphics,
 * Inc., 2011 N.  Shoreline Blvd., Mountain View, CA 94039-7311.
 *
 * OpenGL(TM) is a trademark of Silicon Graphics, Inc.
 *)

(*  stencil.ml
 *  This program draws two rotated tori in a window.
 *  A diamond in the center of the window masks out part
 *  of the scene.  Within this mask, a different model
 *  (a sphere) is drawn in a different color.
 *)

(* !!! NOTE !!!
 *
 * This demo is poorly written.  The stencil buffer should be
 * redrawn in display(), not in the reshape() function.
 * The reason is if the window gets "damaged" then the stencil buffer
 * contents will be in an undefined state (reshape is not called when
 * a window is damaged and needs to be redrawn).  If the stencil buffer
 * contents are undefined, the results of display() are unpredictable.
 *
 * -Brian
 *)

(* OCaml version by Florent Monnier *)

open GL
open Glu
open Glut

let yellow_mat = 1
let blue_mat = 2


let myinit () =
  let yellow_diffuse = (0.7, 0.7, 0.0, 1.0)
  and yellow_specular = (1.0, 1.0, 1.0, 1.0)

  and blue_diffuse = (0.1, 0.1, 0.7, 1.0)
  and blue_specular = (0.1, 1.0, 1.0, 1.0)

  and position_one = (1.0, 1.0, 1.0, 0.0) in

  glNewList yellow_mat GL_COMPILE;
  glMaterial GL_FRONT (Material.GL_DIFFUSE yellow_diffuse);
  glMaterial GL_FRONT (Material.GL_SPECULAR yellow_specular);
  glMaterial GL_FRONT (Material.GL_SHININESS 64.0);
  glEndList();

  glNewList blue_mat GL_COMPILE;
  glMaterial GL_FRONT (Material.GL_DIFFUSE blue_diffuse);
  glMaterial GL_FRONT (Material.GL_SPECULAR blue_specular);
  glMaterial GL_FRONT (Material.GL_SHININESS 45.0);
  glEndList();

  glLight (GL_LIGHT 0) (Light.GL_POSITION position_one);

  glEnable GL_LIGHT0;
  glEnable GL_LIGHTING;
  glDepthFunc GL_LESS;
  glEnable GL_DEPTH_TEST;

  glClearStencil 0x0;
  glEnable GL_STENCIL_TEST;
;;


(*  Draw a sphere in a diamond-shaped section in the
 *  middle of a window with 2 tori.
 *)
let display() =
  glClear[GL_COLOR_BUFFER_BIT; GL_DEPTH_BUFFER_BIT];

  glStencilOp GL_KEEP  GL_KEEP  GL_KEEP;

(* draw blue sphere where the stencil is 1 *)
  glStencilFunc GL_EQUAL  0x1  0x1;
  glCallList blue_mat;
  glutSolidSphere 0.5 15 15;

(* draw the tori where the stencil is not 1 *)
  glStencilFunc GL_NOTEQUAL 0x1 0x1;
  glPushMatrix();
    glRotate 45.0 0.0 0.0 1.0;
    glRotate 45.0 0.0 1.0 0.0;
    glCallList yellow_mat;
    glutSolidTorus 0.275 0.85 15 15;
    glPushMatrix();
      glRotate 90.0 1.0 0.0 0.0;
      glutSolidTorus 0.275 0.85 15 15;
    glPopMatrix();
  glPopMatrix();

  glFlush();
  glutSwapBuffers();
;;


(*  Whenever the window is reshaped, redefine the
 *  coordinate system and redraw the stencil area.
 *)
let reshape ~width:w ~height:h =
  glViewport 0 0 w h;

  glClear [GL_STENCIL_BUFFER_BIT];
(* create a diamond shaped stencil area *)
  glMatrixMode GL_PROJECTION;
  glLoadIdentity();
  glOrtho(-3.0) (3.0) (-3.0) (3.0) (-1.0) (1.0);
  glMatrixMode GL_MODELVIEW;
  glLoadIdentity();

  glStencilFunc GL_ALWAYS  0x1  0x1;
  glStencilOp GL_REPLACE  GL_REPLACE  GL_REPLACE;
  glBegin GL_QUADS;
      glVertex2 (-1.0) ( 0.0);
      glVertex2 ( 0.0) ( 1.0);
      glVertex2 ( 1.0) ( 0.0);
      glVertex2 ( 0.0) (-1.0);
  glEnd();

  glMatrixMode GL_PROJECTION;
  glLoadIdentity();
  gluPerspective 45.0 ((float w)/.(float h)) 3.0 7.0;
  glMatrixMode GL_MODELVIEW;
  glLoadIdentity();
  glTranslate 0.0 0.0 (-5.0);
;;


let keyboard ~key ~x ~y =
  begin match key with
  | '\027' ->  (* Escape *)
      exit 0;
  | _ -> ()
  end;
  glutPostRedisplay();
;;


(*  Main Loop
 *  Open window with initial window size, title bar,
 *  RGBA display mode, and handle input events.
 *)
let () =
  ignore(glutInit Sys.argv);
  glutInitDisplayMode [GLUT_DOUBLE; GLUT_RGB; GLUT_DEPTH; GLUT_STENCIL];
  glutInitWindowSize 400 400;
  ignore(glutCreateWindow Sys.argv.(0));
  myinit();
  glutReshapeFunc ~reshape;
  glutDisplayFunc ~display;
  glutKeyboardFunc ~keyboard;
  glutMainLoop();
;;

