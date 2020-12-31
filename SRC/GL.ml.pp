(* {{{ COPYING *(

  This file belongs to glMLite, an OCaml binding to the OpenGL API.

  Copyright (C) 2006 - 2011  Florent Monnier

  Permission is hereby granted, free of charge, to any person obtaining a
  copy of this software and associated documentation files (the "Software"),
  to deal in the Software without restriction, including without limitation the
  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
  sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  The Software is provided "as is", without warranty of any kind, express or
  implied, including but not limited to the warranties of merchantability,
  fitness for a particular purpose and noninfringement. In no event shall
  the authors or copyright holders be liable for any claim, damages or other
  liability, whether in an action of contract, tort or otherwise, arising
  from, out of or in connection with the software or the use or other dealings
  in the Software.

)* }}} *)

#define NOALLOC [@@noalloc]
(* http://camltastic.blogspot.com/2008/08/tip-calling-c-functions-directly-with.html
 *)

(** OpenGL functions *)

(**
{{:http://www.opengl.org/documentation/specs/version1.1/glspec1.1/}OpenGL Specifications}

{{:http://www.opengl.org/resources/faq/technical/}OpenGL FAQ}
*)

(*
http://www.opengl.org/code/
*)

(** {3 Drawing Functions} *)

#include "enums/primitive.inc.ml"

external begin_: primitive:primitive -> unit = "ml_glbegin" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glBegin.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external end_: unit -> unit = "ml_glend" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glEnd.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external vertex2: x:float -> y:float -> unit = "ml_glvertex2" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glVertex.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external vertex3: x:float -> y:float -> z:float -> unit = "ml_glvertex3" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glVertex.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external vertex4: x:float -> y:float -> z:float -> w:float -> unit = "ml_glvertex4" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glVertex.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external vertex2v: float * float -> unit = "ml_glvertex2v" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glVertex.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external vertex3v: float * float * float -> unit = "ml_glvertex3v" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glVertex.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external vertex4v: float * float * float * float -> unit = "ml_glvertex4v" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glVertex.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external normal3: nx:float -> ny:float -> nz:float -> unit = "ml_glnormal3" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glNormal.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external normal3v: v:float * float * float -> unit = "ml_glnormal3v" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glNormal.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external index: c:float -> unit = "ml_glindexd" NOALLOC
external indexi: c:int -> unit = "ml_glindexi" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glIndex.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external color3: r:float -> g:float -> b:float -> unit = "ml_glcolor3" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColor.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external color4: r:float -> g:float -> b:float -> a:float -> unit = "ml_glcolor4" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColor.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external color3v: v:float * float * float -> unit = "ml_glcolor3v" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColor.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external color4v: v:float * float * float * float -> unit = "ml_glcolor4v" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColor.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external color3c: r:char -> g:char -> b:char -> unit = "ml_glcolor3c" NOALLOC
external color4c: r:char -> g:char -> b:char -> a:char -> unit = "ml_glcolor4c" NOALLOC
(** not clamped to range [\[0.0 - 1.0\]] but [\['\000' - '\255'\]] *)

external color3cv: v:char * char * char -> unit = "ml_glcolor3cv" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColor.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external color4cv: v:char * char * char * char -> unit = "ml_glcolor4cv" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColor.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external edgeFlag: flag:bool -> unit = "ml_gledgeflag" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glEdgeFlag.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external rasterPos2: x:float -> y:float -> unit = "ml_glrasterpos2d" NOALLOC
external rasterPos3: x:float -> y:float -> z:float -> unit = "ml_glrasterpos3d" NOALLOC
external rasterPos4: x:float -> y:float -> z:float -> w:float -> unit = "ml_glrasterpos4d" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glRasterPos.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external rasterPos2i: x:int -> y:int -> unit = "ml_glrasterpos2i" NOALLOC
external rasterPos3i: x:int -> y:int -> z:int -> unit = "ml_glrasterpos3i" NOALLOC
external rasterPos4i: x:int -> y:int -> z:int -> w:int -> unit = "ml_glrasterpos4i" NOALLOC

external rasterPos2v: v:float * float -> unit = "ml_glrasterpos2dv" NOALLOC
external rasterPos3v: v:float * float * float -> unit = "ml_glrasterpos3dv" NOALLOC
external rasterPos4v: v:float * float * float * float -> unit = "ml_glrasterpos4dv" NOALLOC
external rasterPos2iv: v:int * int -> unit = "ml_glrasterpos2iv" NOALLOC
external rasterPos3iv: v:int * int * int -> unit = "ml_glrasterpos3iv" NOALLOC
external rasterPos4iv: v:int * int * int * int -> unit = "ml_glrasterpos4iv" NOALLOC

(** All glRasterPos* functions are deprecated in core OpenGL 3. *)

external recti: x1:int -> y1:int -> x2:int -> y2:int -> unit = "ml_glrecti" NOALLOC
external rect: x1:float -> y1:float -> x2:float -> y2:float -> unit = "ml_glrect" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glRect.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


(** {3 Transformations} *)

#include "enums/matrix_mode.inc.ml"
external matrixMode: mode:matrix_mode -> unit = "ml_glmatrixmode" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glMatrixMode.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external viewport: x:int -> y:int -> width:int -> height:int -> unit = "ml_glviewport" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glViewport.xml}
    manual page on opengl.org} *)

external ortho: left:float -> right:float -> bottom:float ->
                  top:float -> near:float -> far:float -> unit
         = "ml_glortho_bytecode"
           "ml_glortho_native"
           NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glOrtho.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external frustum: left:float -> right:float -> bottom:float ->
                    top:float -> near:float -> far:float -> unit
         = "ml_glfrustum_bytecode"
           "ml_glfrustum_native"
           NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glFrustum.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external pushMatrix: unit -> unit = "ml_glpushmatrix" NOALLOC
external popMatrix: unit -> unit = "ml_glpopmatrix" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPushMatrix.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external loadIdentity: unit -> unit = "ml_glloadidentity" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLoadIdentity.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


external rotatev: angle:float -> vec:float * float * float -> unit = "ml_glrotatev" NOALLOC
external rotate: angle:float -> x:float -> y:float -> z:float -> unit = "ml_glrotate" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glRotate.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external translatev: float * float * float -> unit = "ml_gltranslatev" NOALLOC
external translate: x:float -> y:float -> z:float -> unit = "ml_gltranslate" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTranslate.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external scalev: float * float * float -> unit = "ml_glscalev" NOALLOC
external scale: x:float -> y:float -> z:float -> unit = "ml_glscale" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glScale.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

(* TODO
glMultTransposeMatrix
glLoadTransposeMatrix
*)

(* {{{ glMultMatrix *)
#ifdef MLI

val glMultMatrix: mat:float array array -> unit
(** checks the matrix given is 4x4 with assertions

    {{:http://www.opengl.org/sdk/docs/man/xhtml/glMultMatrix.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

#else
(* ML *)

external _glMultMatrix: mat:float array array -> unit = "ml_glmultmatrixd" NOALLOC

let glMultMatrix ~mat =
  (*
  assert(Array.length mat = 4);
  for i = 0 to 3 do
    let line = Array.unsafe_get mat i in
    assert(Array.length line = 4);
  done;
  *)
  assert(Array.length mat = 4
     && (Array.length (Array.unsafe_get mat 0) = 4)
     && (Array.length (Array.unsafe_get mat 1) = 4)
     && (Array.length (Array.unsafe_get mat 2) = 4)
     && (Array.length (Array.unsafe_get mat 3) = 4)
    );
  _glMultMatrix ~mat
;;

#endif
(* }}} *)

external multMatrixFlat: float array -> unit = "ml_glmultmatrixd_flat" NOALLOC
(** same than [glMultMatrix] but with an array of length 16

    {{:http://www.opengl.org/sdk/docs/man/xhtml/glMultMatrix.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external multMatrixFlat_unsafe: float array -> unit = "ml_glmultmatrixd_flat_unsafe"
(** same than [glMultMatrixFlat] but doesn't make any checks.
    @deprecated in core OpenGL 3. *)


(* {{{ glLoadMatrix *)
#ifdef MLI

val glLoadMatrix: mat:float array array -> unit
(** checks the matrix given is 4x4 with assertions

    {{:http://www.opengl.org/sdk/docs/man/xhtml/glLoadMatrix.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

#else
(* ML *)

external _glLoadMatrix: mat:float array array -> unit = "ml_glloadmatrixd" NOALLOC

let glLoadMatrix ~mat =
  (*
  assert(Array.length mat = 4);
  for i = 0 to 3 do
    let line = Array.unsafe_get mat i in
    assert(Array.length line = 4);
  done;
  *)
  assert(Array.length mat = 4
     && (Array.length (Array.unsafe_get mat 0) = 4)
     && (Array.length (Array.unsafe_get mat 1) = 4)
     && (Array.length (Array.unsafe_get mat 2) = 4)
     && (Array.length (Array.unsafe_get mat 3) = 4)
    );
  _glLoadMatrix ~mat
;;

#endif
(* }}} *)

external loadMatrixFlat: float array -> unit = "ml_glloadmatrixd_flat" NOALLOC
(** as [glLoadMatrix] but with an array of length 16

    {{:http://www.opengl.org/sdk/docs/man/xhtml/glLoadMatrix.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external loadMatrixFlat_unsafe: float array -> unit = "ml_glloadmatrixd_flat_unsafe" NOALLOC
(** same than [glLoadMatrixFlat] but doesn't make any checks
    @deprecated in core OpenGL 3. *)



(** {3 Miscellaneous} *)

external flush: unit -> unit = "ml_glflush" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glFlush.xml}
    manual page on opengl.org} *)

#include "enums/orientation.inc.ml"
external frontFace: orientation:orientation -> unit = "ml_glfrontface" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glFrontFace.xml}
    manual page on opengl.org} *)

external scissor: x:int -> y:int -> width:int -> height:int -> unit = "ml_glscissor" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glScissor.xml}
    manual page on opengl.org} *)

external finish: unit -> unit = "ml_glfinish" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glFinish.xml}
    manual page on opengl.org} *)


external clearColor: r:float -> g:float -> b:float -> a:float -> unit = "ml_glclearcolor" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glClearColor.xml}
    manual page on opengl.org} *)

external clearIndex: float -> unit = "ml_glclearindex" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glClearIndex.xml}
    manual page on opengl.org} *)

external colorMask: r:bool -> g:bool -> b:bool -> a:bool -> unit = "ml_glcolormask" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColorMask.xml}
    manual page on opengl.org} *)


module Attrib = struct (* PACK_ENUM *)
#include "enums/attrib_bit.inc.ml"
end (* PACK_ENUM *)
external pushAttrib: attrib:Attrib.attrib_bit list -> unit = "ml_glpushattrib" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPushAttrib.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external popAttrib: unit -> unit = "ml_glpopattrib" NOALLOC
(** @deprecated in core OpenGL 3. *)


#include "enums/face_mode.inc.ml"
#include "enums/polygon_mode.inc.ml"
external polygonMode: face:face_mode -> mode:polygon_mode -> unit = "ml_glpolygonmode" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPolygonMode.xml}
    manual page on opengl.org} *)

external getPolygonMode: unit -> polygon_mode * polygon_mode = "ml_glgetpolygonmode"
(** glGet with argument POLYGON_MODE
    {{:http://www.opengl.org/sdk/docs/man/xhtml/glGet.xml}
    manual page on opengl.org} *)

#include "enums/clear_mask.inc.ml"
external clear: mask:clear_mask list -> unit = "ml_glclear" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glClear.xml}
    manual page on opengl.org} *)


external lineWidth: width:float -> unit = "ml_gllinewidth" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLineWidth.xml}
    manual page on opengl.org}.
    In OpenGL 3, this function does not support values greater than 1.0 anymore. *)

external pointSize: size:float -> unit = "ml_glpointsize" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPointSize.xml}
    manual page on opengl.org} *)

(* {{{ glPointParameter *)

type sprite_coord_origin = LOWER_LEFT | UPPER_LEFT

type point_parameter =
  | POINT_SIZE_MIN of float
  | POINT_SIZE_MAX of float
  | POINT_FADE_THRESHOLD_SIZE of float
  | POINT_DISTANCE_ATTENUATION of float * float * float
  | POINT_SPRITE_COORD_ORIGIN of sprite_coord_origin

#ifdef MLI

(* glext *)

val glPointParameter: point_parameter -> unit
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPointParameter.xml}
    manual page on opengl.org} *)

#else
(* ML *)

external pointParameterf: int -> float -> unit = "ml_glpointparameterf" NOALLOC
external pointParameterfv: float -> float -> float -> unit = "ml_glpointparameterfv" NOALLOC
external pointParameteri: sprite_coord_origin -> unit = "ml_glpointparameteri" NOALLOC

let glPointParameter = function
  | POINT_SIZE_MIN param -> pointParameterf 0 param;
  | POINT_SIZE_MAX param -> pointParameterf 1 param;
  | POINT_FADE_THRESHOLD_SIZE param -> pointParameterf 2 param;
  | POINT_DISTANCE_ATTENUATION(d1, d2, d3) -> pointParameterfv d1 d2 d3;
  | POINT_SPRITE_COORD_ORIGIN param -> pointParameteri param;
;;

#endif
(* }}} *)


#include "enums/gl_func.inc.ml"

external alphaFunc: func:gl_func -> ref:float -> unit = "ml_glalphafunc" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glAlphaFunc.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

#include "enums/hint_target.inc.ml"
#include "enums/hint_mode.inc.ml"
external hint: target:hint_target -> mode:hint_mode -> unit = "ml_glhint" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glHint.xml}
    manual page on opengl.org} *)

external cullFace: mode:face_mode -> unit = "ml_glcullface" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCullFace.xml}
    manual page on opengl.org} *)

(* TODO
test this function:
*)
external getCullFaceMode: unit -> face_mode = "ml_glgetcullfacemode" NOALLOC
(** associated get for {!glCullFace} *)

external lineStipple: factor:int -> pattern:int -> unit = "ml_gllinestipple" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLineStipple.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

type polygon_stipple_mask = (int, Bigarray.int8_unsigned_elt, Bigarray.c_layout) Bigarray.Array1.t
external polygonStipple: mask:polygon_stipple_mask -> unit = "ml_glpolygonstipple" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPolygonStipple.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external polygonStipple_unsafe: mask:polygon_stipple_mask -> unit = "ml_glpolygonstipple_unsafe" NOALLOC
(** Same than [glPolygonStipple] but does not check the size of the big array.
    @deprecated in core OpenGL 3. *)

module DrawBuffer = struct (* PACK_ENUM *)
#include "enums/draw_buffer_mode.inc.ml"
end (* PACK_ENUM *)
external drawBuffer: mode:DrawBuffer.draw_buffer_mode -> unit = "ml_gldrawbuffer" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDrawBuffer.xml}
    manual page on opengl.org} *)

module ReadBuffer = struct (* PACK_ENUM *)
#include "enums/read_buffer_mode.inc.ml"
end (* PACK_ENUM *)
external readBuffer: mode:ReadBuffer.read_buffer_mode -> unit = "ml_glreadbuffer" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glReadBuffer.xml}
    manual page on opengl.org} *)


module Sfactor = struct (* PACK_ENUM *)
#include "enums/blend_sfactor.inc.ml"
end (* PACK_ENUM *)
module Dfactor = struct (* PACK_ENUM *)
#include "enums/blend_dfactor.inc.ml"
end (* PACK_ENUM *)
external blendFunc: sfactor:Sfactor.blend_sfactor -> dfactor:Dfactor.blend_dfactor -> unit = "ml_glblendfunc" NOALLOC
(**
  {{:http://www.opengl.org/sdk/docs/man/xhtml/glBlendFunc.xml}
  manual page on opengl.org} ;
  {{:http://www.opengl.org/resources/faq/technical/transparency.htm}
  Transparency, Translucency, and Blending Chapter}
*)

(* TODO
glBlendFuncSeparate
http://www.opengl.org/sdk/docs/man/xhtml/glBlendFuncSeparate.xml
*)

#include "enums/blend_mode.inc.ml"
external blendEquation: mode:blend_mode -> unit = "ml_glblendequation" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glBlendEquation.xml}
    manual page on opengl.org} *)

(*
#include "enums/blend_mode_ext.inc.ml"
external blendEquationEXT: mode:blend_mode_ext -> unit = "ml_glblendequationext"
(** {{:http://techpubs.sgi.com/library/tpl/cgi-bin/getdoc.cgi?db=man&fname=/usr/share/catman/g_man/cat3/OpenGL/glblendequationext.z}
    man page on sgi.com} *)
*)

module Op = struct (* PACK_ENUM *)
#include "enums/op_code.inc.ml"
end (* PACK_ENUM *)
external logicOp: opcode:Op.op_code -> unit = "ml_gllogicop" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLogicOp.xml}
    manual page on opengl.org} *)


(* TODO
glIndexMask
*)

external polygonOffset: factor:float -> units:float -> unit = "ml_glpolygonoffset" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPolygonOffset.xml}
    manual page on opengl.org} *)




(** {3 Lighting} *)

#include "enums/shade_mode.inc.ml"
external shadeModel: shade_mode -> unit = "ml_glshademodel" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glShadeModel.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

(* TODO
glGet with argument GL_SHADE_MODEL
*)

(* {{{ glLight *)

module Light = struct (* _PACK_ENUM *)
type light_pname =
  | SPOT_EXPONENT of float
  | SPOT_CUTOFF of float
  | CONSTANT_ATTENUATION of float
  | LINEAR_ATTENUATION of float
  | QUADRATIC_ATTENUATION of float
  | SPOT_DIRECTION of (float * float * float)
  | AMBIENT of (float * float * float * float)
  | DIFFUSE of (float * float * float * float)
  | SPECULAR of (float * float * float * float)
  | POSITION of (float * float * float * float)
end (* _PACK_ENUM *)

type gl_light = LIGHT of int

#ifdef MLI

val glLight: light:gl_light -> pname:Light.light_pname -> unit
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLight.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

#else
(* ML *)

external _glLight1: light_i:int -> pname:int -> param:float -> unit = "ml_gllight1" NOALLOC
external _glLight3: light_i:int -> float -> float -> float -> unit = "ml_gllight3" NOALLOC
external _glLight4: light_i:int -> pname:int -> float -> float -> float -> float -> unit
         = "ml_gllight4_bytecode"
           "ml_gllight4_native"
           NOALLOC

let glLight ~light ~pname =
  let light_i =
    match light with LIGHT i -> i
  in
  match pname with
  | Light.SPOT_EXPONENT param         -> _glLight1 light_i 0 param
  | Light.SPOT_CUTOFF param           -> _glLight1 light_i 1 param
  | Light.CONSTANT_ATTENUATION param  -> _glLight1 light_i 2 param
  | Light.LINEAR_ATTENUATION param    -> _glLight1 light_i 3 param
  | Light.QUADRATIC_ATTENUATION param -> _glLight1 light_i 4 param
  | Light.SPOT_DIRECTION(p1, p2, p3) -> _glLight3 light_i p1 p2 p3
  | Light.AMBIENT (p1, p2, p3, p4) -> _glLight4 light_i 0 p1 p2 p3 p4
  | Light.DIFFUSE (p1, p2, p3, p4) -> _glLight4 light_i 1 p1 p2 p3 p4
  | Light.SPECULAR(p1, p2, p3, p4) -> _glLight4 light_i 2 p1 p2 p3 p4
  | Light.POSITION(p1, p2, p3, p4) -> _glLight4 light_i 3 p1 p2 p3 p4
;;

#endif
(* }}} *)
(* {{{ glLightModel *)

type color_control =
  | SEPARATE_SPECULAR_COLOR
  | SINGLE_COLOR

type light_model =
  | LIGHT_MODEL_AMBIENT of (float * float * float * float)
  | LIGHT_MODEL_COLOR_CONTROL of color_control
  | LIGHT_MODEL_LOCAL_VIEWER of bool
  | LIGHT_MODEL_TWO_SIDE of bool

#ifdef MLI

val glLightModel: light_model:light_model -> unit
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLightModel.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

(** See [glGetLight] for associated get. *)

#else
(* ML *)

external _glLightModel1: int -> unit = "ml_glLightModel1" NOALLOC
external _glLightModel2: int -> bool -> unit = "ml_glLightModel2" NOALLOC
external _glLightModel4: float -> float -> float -> float -> unit = "ml_glLightModel4" NOALLOC

let glLightModel ~light_model =
  match light_model with
  | LIGHT_MODEL_COLOR_CONTROL  SEPARATE_SPECULAR_COLOR -> _glLightModel1 0;
  | LIGHT_MODEL_COLOR_CONTROL  SINGLE_COLOR            -> _glLightModel1 1;
  | LIGHT_MODEL_LOCAL_VIEWER p -> _glLightModel2 0 p;
  | LIGHT_MODEL_TWO_SIDE p     -> _glLightModel2 1 p;
  | LIGHT_MODEL_AMBIENT(r, g, b, a) -> _glLightModel4 r g b a;
;;

#endif
(* }}} *)


(* {{{ glMaterial *)

module Material = struct (* _PACK_ENUM *)
type material_mode =
  | AMBIENT of (float * float * float * float)
  | DIFFUSE of (float * float * float * float)
  | SPECULAR of (float * float * float * float)
  | EMISSION of (float * float * float * float)
  | SHININESS of float
  | AMBIENT_AND_DIFFUSE of (float * float * float * float)
  | COLOR_INDEXES of (int * int * int)  (* TODO: check if these should be floats *)
end (* _PACK_ENUM *)

#ifdef MLI

val glMaterial: face:face_mode -> mode:Material.material_mode -> unit
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glMaterial.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

#else
(* ML *)

external _glMaterial1: face_mode -> float -> unit = "ml_glmaterial1" NOALLOC
external _glMaterial3: face_mode -> int -> int -> int -> unit = "ml_glmaterial3i" NOALLOC
external _glMaterial4: face_mode -> int -> float -> float -> float -> float -> unit
    = "ml_glmaterial4_bytecode"
      "ml_glmaterial4_native"
      NOALLOC

let glMaterial ~face ~mode =
  match mode with
  | Material.SHININESS p -> _glMaterial1 face p
  | Material.AMBIENT  (p1, p2, p3, p4) -> _glMaterial4 face 0 p1 p2 p3 p4
  | Material.DIFFUSE  (p1, p2, p3, p4) -> _glMaterial4 face 1 p1 p2 p3 p4
  | Material.SPECULAR (p1, p2, p3, p4) -> _glMaterial4 face 2 p1 p2 p3 p4
  | Material.EMISSION (p1, p2, p3, p4) -> _glMaterial4 face 3 p1 p2 p3 p4
  | Material.AMBIENT_AND_DIFFUSE (p1, p2, p3, p4) -> _glMaterial4 face 4 p1 p2 p3 p4
  | Material.COLOR_INDEXES (p1, p2, p3) -> _glMaterial3 face p1 p2 p3
;;

#endif

(* }}} *)


module GetMat = struct (* _PACK_ENUM *)
type face_mode = FRONT | BACK
type get_material_4f =
  | AMBIENT
  | DIFFUSE
  | SPECULAR
  | EMISSION
type get_material_1f =
  | SHININESS
type get_material_3i =
  | COLOR_INDEXES  (* TODO: check if these should be floats *)
end (* _PACK_ENUM *)

external getMaterial4f: GetMat.face_mode -> mode:GetMat.get_material_4f -> float * float * float * float = "ml_glgetmaterial4f"
external getMaterial1f: GetMat.face_mode -> mode:GetMat.get_material_1f -> float = "ml_glgetmaterial1f"
external getMaterial3i: GetMat.face_mode -> mode:GetMat.get_material_3i -> int * int * int = "ml_glgetmaterial3i"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetMaterial.xml}
    manual page on opengl.org} *)


#include "enums/color_material_mode.inc.ml"
external colorMaterial: face:face_mode -> mode:color_material_mode -> unit = "ml_glcolormaterial" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glColorMaterial.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


external secondaryColor3: red:float -> green:float -> blue:float -> unit = "ml_glsecondarycolor3d" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glSecondaryColor.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)
(* TODO
glSecondaryColor3c
glSecondaryColor3v
glSecondaryColor3cv
*)



(** {3 Stenciling} *)

external stencilFunc: func:gl_func -> ref:int -> mask:int -> unit = "ml_glstencilfunc" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glStencilFunc.xml}
    manual page on opengl.org} *)

external stencilFuncn: func:gl_func -> ref:int -> mask:nativeint -> unit = "ml_glstencilfuncn" NOALLOC
(** OCaml standard ints have 1 bit missing from nativeint. *)

external stencilMask: mask:int -> unit = "ml_glstencilmask" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glStencilMask.xml}
    manual page on opengl.org} *)

(* TODO: get the full range of the GLuint
void glStencilMask( GLuint mask );
*)

#include "enums/stencil_op.inc.ml"
external stencilOp: sfail:stencil_op -> dpfail:stencil_op -> dppass:stencil_op -> unit = "ml_glstencilop" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glStencilOp.xml}
    manual page on opengl.org} *)

external clearStencil: s:int -> unit = "ml_glclearstencil" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glClearStencil.xml}
    manual page on opengl.org} *)





(** {3 Depth Buffer} *)

external depthRange: near:float -> far:float -> unit = "ml_gldepthrange" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDepthRange.xml}
    manual page on opengl.org} *)

external clearDepth: depth:float -> unit = "ml_glcleardepth" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glClearDepth.xml}
    manual page on opengl.org} *)

external depthFunc: func:gl_func -> unit = "ml_gldepthfunc" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDepthFunc.xml}
    manual page on opengl.org} *)

external depthMask: bool -> unit = "ml_gldepthmask" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDepthMask.xml}
    manual page on opengl.org} *)



(** {3 Accumulation Buffer} *)

#include "enums/accum_op.inc.ml"
external accum: op:accum_op -> value:float -> unit = "ml_glaccum" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glAccum.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external clearAccum: r:float -> g:float -> b:float -> a:float -> unit = "ml_glclearaccum" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glClearAccum.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)



(** {3 GL Capabilities} *)

#include "enums/gl_capability.inc.ml"
external enable: cap:gl_capability -> unit = "ml_glenable" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glEnable.xml}
    manual page on opengl.org} *)
external disable: cap:gl_capability -> unit = "ml_gldisable" NOALLOC


module Enabled = struct (* PACK_ENUM *)
#include "enums/enabled_cap.inc.ml"
end (* PACK_ENUM *)
external isEnabled: Enabled.enabled_cap -> bool = "ml_glisenabled" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glIsEnabled.xml}
    manual page on opengl.org} *)



(** {3 Texture mapping} *)

#ifdef MLI
type texture_id = private int
val invalid_texture_id : texture_id
#else
type texture_id = int
let invalid_texture_id : texture_id =  -1
;;
#endif

external genTextures: n:int -> texture_id array = "ml_glgentextures" (* DOES ALLOC *)
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGenTextures.xml}
    manual page on opengl.org} *)

external genTexture: unit -> texture_id = "ml_glgentexture" NOALLOC

module BindTex = struct (* PACK_ENUM *)
#include "enums/texture_binding.inc.ml"
end (* PACK_ENUM *)
external bindTexture: target:BindTex.texture_binding -> texture:texture_id -> unit = "ml_glbindtexture" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glBindTexture.xml}
    manual page on opengl.org} *)

external unbindTexture: target:BindTex.texture_binding -> unit = "ml_glunbindtexture" NOALLOC
(* deactive the previous active texture
   (is equivalent to the C call glBindTexture(target, 0)) *)

external bindTexture2D: texture:texture_id -> unit = "ml_glbindtexture2d" NOALLOC
(** equivalent to [glBindTexture] with parameter [GL_TEXTURE_2D] *)

external unbindTexture2D: unit -> unit = "ml_glunbindtexture2d" NOALLOC
(* deactive the previous active texture
   (is equivalent to the C call glBindTexture(GL_TEXTURE_2D, 0)) *)

external deleteTextures: textures:texture_id array -> unit = "ml_gldeletetextures" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDeleteTextures.xml}
    manual page on opengl.org} *)

external deleteTexture: texture:texture_id -> unit = "ml_gldeletetexture" NOALLOC

external isTexture: texture:texture_id -> bool = "ml_glistexture" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glIsTexture.xml}
    manual page on opengl.org} *)

external prioritizeTextures: textures:texture_id array -> priority:float array -> unit = "ml_glprioritizetextures" NOALLOC
external prioritizeTexture: texture:texture_id -> priority:float -> unit = "ml_glprioritizetexture" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPrioritizeTextures.xml}
    manual page on opengl.org} *)

external prioritizeTexturesp: prioritized_textures:(texture_id * float) array -> unit = "ml_glprioritizetexturesp" NOALLOC

(* TODO
type target = GL_TEXTURE_ENV | GL_TEXTURE_FILTER_CONTROL | GL_POINT_SPRITE
type pname =
    GL_TEXTURE_ENV_MODE
  | GL_TEXTURE_LOD_BIAS
  | GL_COMBINE_RGB
  | GL_COMBINE_ALPHA
  | GL_SRC0_RGB
  | GL_SRC1_RGB
  | GL_SRC2_RGB
  | GL_SRC0_ALPHA
  | GL_SRC1_ALPHA
  | GL_SRC2_ALPHA
  | GL_OPERAND0_RGB
  | GL_OPERAND1_RGB
  | GL_OPERAND2_RGB
  | GL_OPERAND0_ALPHA
  | GL_OPERAND1_ALPHA
  | GL_OPERAND2_ALPHA
  | GL_RGB_SCALE
  | GL_ALPHA_SCALE
  | GL_COORD_REPLACE
type param =
    GL_ADD
  | GL_ADD_SIGNED
  | GL_INTERPOLATE
  | GL_MODULATE
  | GL_DECAL
  | GL_BLEND
  | GL_REPLACE
  | GL_SUBTRACT
  | GL_COMBINE
  | GL_TEXTURE
  | GL_CONSTANT
  | GL_PRIMARY_COLOR
  | GL_PREVIOUS
  | GL_SRC_COLOR
  | GL_ONE_MINUS_SRC_COLOR
  | GL_SRC_ALPHA
  | GL_ONE_MINUS_SRC_ALPHA
  (* a single boolean value for the point sprite texture coordinate replacement,
     a single floating-point value for the texture level-of-detail bias, or 1.0,
     2.0, or 4.0 when specifying the GL_RGB_SCALE or GL_ALPHA_SCALE. *)

void glTexEnvfv( GLenum target, GLenum pname, const GLfloat * params);
void glTexEnviv( GLenum target, GLenum pname, const GLint * params);

void glTexEnvf( GLenum target, GLenum pname, GLfloat  param);
void glTexEnvi( GLenum target, GLenum pname, GLint  param);


type target = GL_TEXTURE_ENV | GL_TEXTURE_FILTER_CONTROL
type pname = GL_TEXTURE_ENV_MODE | GL_TEXTURE_ENV_COLOR of rgba | GL_TEXTURE_LOD_BIAS
type params = (* Specifies a pointer to a parameter array that contains either
     a single symbolic constant,
     single floating-point number,
     or an RGBA color. *)
*)
module TexEnv = struct (* PACK_ENUM *)
#include "enums/texenv_target.inc.ml"
#include "enums/texenv_pname.inc.ml"
#include "enums/texenv_param.inc.ml"
end (* PACK_ENUM *)
(*
type texenv_scale = SCALE_1 | SCALE_2 | SCALE_4
  | GL_RGB_SCALE of texenv_scale
  | GL_ALPHA_SCALE of texenv_scale
*)
external texEnv: TexEnv.texenv_target -> TexEnv.texenv_pname -> TexEnv.texenv_param -> unit = "ml_gltexenv" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexEnv.xml}
    manual page on opengl.org} *)

#include "enums/tex_coord.inc.ml"
#include "enums/tex_coord_gen_func.inc.ml"
#include "enums/tex_gen_param.inc.ml"
external texGen: tex_coord -> tex_coord_gen_func -> tex_gen_param -> unit = "ml_gltexgen" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexGen.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

#include "enums/tex_coord_fun_params.inc.ml"

external texGenv: tex_coord -> tex_coord_fun_params -> float * float * float * float -> unit = "ml_gltexgenv"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexGen.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external texGenva: tex_coord -> tex_coord_fun_params -> float array -> unit = "ml_gltexgenva"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexGen.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


module TexTarget = struct (* _PACK_ENUM *)
#include "enums/target_2d.inc.ml"

type target_1d = TEXTURE_1D | PROXY_TEXTURE_1D
type target_3d = TEXTURE_3D | PROXY_TEXTURE_3D
end (* _PACK_ENUM *)

module InternalFormat = struct (* PACK_ENUM *)
#include "enums/internal_format.inc.ml"
end (* PACK_ENUM *)
#include "enums/pixel_data_format.inc.ml"
#include "enums/pixel_data_type.inc.ml"

(** input type to provide the textures *)
type img_input =
  | Filename of string  (** provide the filename of a texture *)
  | Buffer of string    (** provide the image data as a buffer *)

(*
type image_data
*)
type image_data =
  (int, Bigarray.int8_unsigned_elt, Bigarray.c_layout) Bigarray.(*Array3*)Genarray.t


#ifdef MLI
val assert_size : width:int -> height:int -> unit
(** utility function to check if the dimensions of the image are compatible with OpenGL textures. *)
#else
(* ML *)
let assert_size ~width ~height =
  let allowed = [64; 128; 256; 512; 1024; 2048] in
  if not(List.mem width allowed &&
         List.mem height allowed) then
    invalid_arg "image dimensions not compatible with OpenGL"
;;
#endif
 

(* TODO
 add all new type for recent GL versions
*)
external texImage2D:
    target:TexTarget.target_2d -> level:int ->
    internal_format:InternalFormat.internal_format ->
    width:int -> height:int ->
    format_:pixel_data_format ->
    type_:pixel_data_type ->
    pixels:image_data -> unit
    = "ml_glteximage2d_bytecode"
      "ml_glteximage2d_native"
      NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexImage2D.xml}
    manual page on opengl.org} *)

external texImage2D_str:
    target:TexTarget.target_2d -> level:int ->
    internal_format:InternalFormat.internal_format ->
    width:int -> height:int ->
    format_:pixel_data_format ->
    type_:pixel_data_type ->
    pixels:string -> unit
    = "ml_glteximage2d_str_bytecode"
      "ml_glteximage2d_str_native"
      NOALLOC

external texImage1D: target:TexTarget.target_1d -> level:int ->
    internal_format:InternalFormat.internal_format ->
    width:int ->
    format_:pixel_data_format ->
    type_:pixel_data_type ->
    pixels:image_data -> unit
    = "ml_glteximage1d_bytecode"
      "ml_glteximage1d_native"
      NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexImage1D.xml}
    manual page on opengl.org} *)

external texImage3D: target:TexTarget.target_3d -> level:int ->
    internal_format:InternalFormat.internal_format ->
    width:int -> height:int -> depth:int ->
    format_:pixel_data_format ->
    type_:pixel_data_type ->
    pixels:image_data -> unit
    = "ml_glteximage3d_bytecode"
      "ml_glteximage3d_native"
      NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexImage3D.xml}
    manual page on opengl.org} *)

external texCoord1: s:float -> unit = "ml_gltexcoord1" NOALLOC
external texCoord2: s:float -> t:float -> unit = "ml_gltexcoord2" NOALLOC
external texCoord3: s:float -> t:float -> r:float -> unit = "ml_gltexcoord3" NOALLOC
external texCoord4: s:float -> t:float -> r:float -> q:float -> unit = "ml_gltexcoord4" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexCoord.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external texCoord2v: v:float * float -> unit = "ml_gltexcoord2v" NOALLOC
external texCoord3v: v:float * float * float -> unit = "ml_gltexcoord3v" NOALLOC
external texCoord4v: v:float * float * float * float -> unit = "ml_gltexcoord4v" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexCoord.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


(* {{{ glTexParameter *)

module Min = struct (* PACK_ENUM *)
#include "enums/min_filter.inc.ml"
end (* PACK_ENUM *)
module Mag = struct (* PACK_ENUM *)
#include "enums/mag_filter.inc.ml"
end (* PACK_ENUM *)

#include "enums/wrap_param.inc.ml"

module TexParam = struct (* _PACK_ENUM *)

#include "enums/tex_param_target.inc.ml"

type texture_compare_mode =
  (*
  | VERSION_1_4::GL_COMPARE_R_TO_TEXTURE
  *)
  | NONE

type depth_texture_mode =
  | LUMINANCE
  | INTENSITY
  | ALPHA

(** parameter for [glTexParameter] *)
type tex_param =
  | TEXTURE_MIN_FILTER of Min.min_filter
  | TEXTURE_MAG_FILTER of Mag.mag_filter
  | TEXTURE_MIN_LOD of float
  | TEXTURE_MAX_LOD of float
  | TEXTURE_BASE_LEVEL of int
  | TEXTURE_MAX_LEVEL of int
  | TEXTURE_WRAP_S of wrap_param
  | TEXTURE_WRAP_T of wrap_param
  | TEXTURE_WRAP_R of wrap_param
  | TEXTURE_BORDER_COLOR of (float * float * float * float)
  | TEXTURE_PRIORITY of float

  | TEXTURE_COMPARE_MODE of texture_compare_mode  (** only in GL >= 1.4 *)
  | TEXTURE_COMPARE_FUNC of gl_func               (** only in GL >= 1.4 *)
  | DEPTH_TEXTURE_MODE of depth_texture_mode      (** only in GL >= 1.4 *)
  | GENERATE_MIPMAP of bool                       (** only in GL >= 1.4 *)  (* GL_TRUE / GL_FALSE *)

end (* _PACK_ENUM *)

#ifdef MLI
val texParameter:
    target:TexParam.tex_param_target ->
    param:TexParam.tex_param -> unit
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glTexParameter.xml}
    manual page on opengl.org} *)
#else
(* ML *)

external texParameterMinFilter: TexParam.tex_param_target -> Min.min_filter -> unit = "ml_gltexparameter_minfilter"
external texParameterMagFilter: TexParam.tex_param_target -> Mag.mag_filter -> unit = "ml_gltexparameter_magfilter"
external texParameter1i: TexParam.tex_param_target -> int -> int -> unit = "ml_gltexparameter1i"
external texParameter1f: TexParam.tex_param_target -> int -> float -> unit = "ml_gltexparameter1f"
external texParameterWrap: TexParam.tex_param_target -> int -> wrap_param -> unit = "ml_gltexparameter_wrap"
external texParameter4f: TexParam.tex_param_target -> float * float * float * float -> unit = "ml_gltexparameter4f"
external texParameter_gen_mpmp: TexParam.tex_param_target -> bool -> unit = "ml_gltexparameter_gen_mpmp"

let texParameter ~target ~param =
  match param with
  | TexParam.TEXTURE_MIN_FILTER min_filter -> texParameterMinFilter target min_filter
  | TexParam.TEXTURE_MAG_FILTER mag_filter -> texParameterMagFilter target mag_filter
  | TexParam.TEXTURE_MIN_LOD  d -> texParameter1f target 0 d
  | TexParam.TEXTURE_MAX_LOD  d -> texParameter1f target 1 d
  | TexParam.TEXTURE_PRIORITY d -> texParameter1f target 2 d
  | TexParam.TEXTURE_BASE_LEVEL d -> texParameter1i target 0 d
  | TexParam.TEXTURE_MAX_LEVEL  d -> texParameter1i target 1 d
  | TexParam.TEXTURE_WRAP_S wrap_param -> texParameterWrap target 0 wrap_param
  | TexParam.TEXTURE_WRAP_T wrap_param -> texParameterWrap target 1 wrap_param
  | TexParam.TEXTURE_WRAP_R wrap_param -> texParameterWrap target 2 wrap_param
  | TexParam.TEXTURE_BORDER_COLOR color -> texParameter4f target color

  | TexParam.TEXTURE_COMPARE_MODE tex_comp_mode -> assert(false) (** TODO switch GL_VERSION_1_4 *)
  | TexParam.TEXTURE_COMPARE_FUNC gl_func -> assert(false)       (** TODO switch GL_VERSION_1_4 *)
  | TexParam.DEPTH_TEXTURE_MODE dtexmode -> assert(false)        (** TODO switch GL_VERSION_1_4 *)
  | TexParam.GENERATE_MIPMAP gm -> texParameter_gen_mpmp target gm
;;

#endif

(* }}} *)

(* TODO
http://www.opengl.org/sdk/docs/man/xhtml/glGetTexParameter.xml
*)

module CopyTex = struct (* PACK_ENUM *)
#include "enums/copy_tex_target.inc.ml"
end (* PACK_ENUM *)

external copyTexImage2D:
    target:CopyTex.copy_tex_target ->
    level:int ->
    internal_format:InternalFormat.internal_format ->
    x:int ->
    y:int ->
    width:int ->
    height:int ->
    border:int -> unit
    = "ml_glcopyteximage2d_bytecode"
      "ml_glcopyteximage2d_native"
      NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCopyTexImage2D.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external sampleCoverage: value:float -> invert:bool -> unit = "ml_glsamplecoverage" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glSampleCoverage.xml}
    manual page on opengl.org} *)


(** {3 Raster functions} *)

#include "enums/pixel_packing_b.inc.ml"
external pixelStoreb: pixel_packing:pixel_packing_b -> param:bool -> unit = "ml_glpixelstoreb" NOALLOC

#include "enums/pixel_packing_i.inc.ml"
external pixelStorei: pixel_packing:pixel_packing_i -> param:int -> unit = "ml_glpixelstorei" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPixelStore.xml}
    manual page on opengl.org} *)

external pixelZoom: xfactor:float -> yfactor:float -> unit = "ml_glpixelzoom" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPixelZoom.xml}
    manual page on opengl.org} *)



#include "enums/pixel_map.inc.ml"
external pixelMapfv: map:pixel_map -> v:float array -> unit = "ml_glpixelmapfv"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPixelMap.xml}
    manual page on opengl.org} *)


(*
void glPixelMapfv( GLenum map, GLsizei mapsize, const GLfloat *values );
void glPixelMapuiv( GLenum map, GLsizei mapsize, const GLuint *values );
void glPixelMapusv( GLenum map, GLsizei mapsize, const GLushort *values );
*)

(* TODO
void glGetPixelMapfv( GLenum map, GLfloat *values );
void glGetPixelMapuiv( GLenum map, GLuint *values );
void glGetPixelMapusv( GLenum map, GLushort *values );
*)

external bitmap: width:int -> height:int -> xorig:float -> yorig:float ->
    xmove:float -> ymove:float -> bitmap:('a, 'b, 'c) Bigarray.Array1.t -> unit
    = "ml_glbitmap_bytecode"
      "ml_glbitmap_native"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glBitmap.xml}
    manual page on opengl.org} *)


#include "enums/pixel_type.inc.ml"
external copyPixels: x:int -> y:int -> width:int -> height:int -> pixel_type:pixel_type -> unit = "ml_glcopypixels" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCopyPixels.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

(* TODO
void glPixelTransferf( GLenum pname, GLfloat param);
void glPixelTransferi( GLenum pname, GLint param);
http://www.opengl.org/sdk/docs/man/xhtml/glPixelTransfer.xml
http://www.opengl.org/documentation/specs/man_pages/hardcopy/GL/html/gl/pixeltransfer.html
*)


#include "enums/pixel_transfer_i.inc.ml"
#include "enums/pixel_transfer_f.inc.ml"
#include "enums/pixel_transfer_b.inc.ml"

(** if the [ARB_imaging] extension is supported, these symbolic names are accepted *)
#include "enums/pixel_transfer_f_ARB.inc.ml"

external pixelTransferi: pname:pixel_transfer_i -> param:int -> unit = "ml_glpixeltransferi"
external pixelTransferf: pname:pixel_transfer_f -> param:float -> unit = "ml_glpixeltransferf"
external pixelTransferb: pname:pixel_transfer_b -> param:bool -> unit = "ml_glpixeltransferb"
external pixelTransferfARB: pname:pixel_transfer_f_ARB -> param:float -> unit = "ml_glpixeltransferfARB"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPixelTransfer.xml}
    manual page on opengl.org} *)



module Framebuffer = struct (* PACK_ENUM *)
#include "enums/pixel_buffer_format.inc.ml"
#include "enums/pixel_buffer_type.inc.ml"
end (* PACK_ENUM *)
external readPixelsBA_unsafe: x:int -> y:int -> width:int -> height:int ->
    Framebuffer.pixel_buffer_format -> Framebuffer.pixel_buffer_type -> image_data -> unit
    = "ml_glreadpixels_ba_unsafe_bytecode"
      "ml_glreadpixels_ba_unsafe_native"
      NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glReadPixels.xml}
    manual page on opengl.org} *)

external readPixelsBA: x:int -> y:int -> width:int -> height:int ->
    Framebuffer.pixel_buffer_format -> Framebuffer.pixel_buffer_type -> image_data -> unit
    = "ml_glreadpixels_ba_bytecode"
      "ml_glreadpixels_ba_native"
      NOALLOC
(** same than [glReadPixelsBA_unsafe] but checks the size of the big-array *)

external drawPixels_str:
  width:int -> height:int -> format_:pixel_data_format ->
  type_:pixel_data_type -> pixels:string -> unit
  = "ml_gldrawpixels_str"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDrawPixels.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


(** {3 Clipping} *)

module Plane = struct (* PACK_ENUM *)
#include "enums/clip_plane.inc.ml"
end (* PACK_ENUM *)
external clipPlane: plane:Plane.clip_plane -> equation:float array -> unit = "ml_glclipplane"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glClipPlane.xml}
    manual page on opengl.org} *)

external clipPlane_unsafe: plane:Plane.clip_plane -> equation:float array -> unit = "ml_glclipplane_unsafe"
(** same than [glClipPlane] but doesn't check that [equation] contains 4 items. *)

type clip_plane_i = CLIP_PLANE of int

#ifdef MLI

val glClipPlanei: plane:clip_plane_i -> equation:float array -> unit
val glClipPlanei_unsafe: plane:clip_plane_i -> equation:float array -> unit

#else
(* ML *)

external clipPlanei: plane:int -> equation:float array -> unit = "ml_glclipplane_i"
external clipPlanei_unsafe: plane:int -> equation:float array -> unit = "ml_glclipplane_i_unsafe"

let glClipPlanei ~plane ~equation =
  match plane with
  | CLIP_PLANE i -> clipPlanei ~plane:i ~equation ;;

let glClipPlanei_unsafe ~plane ~equation =
  match plane with
  | CLIP_PLANE i -> clipPlanei_unsafe ~plane:i ~equation ;;

#endif

(* TODO
http://www.opengl.org/sdk/docs/man/xhtml/glGetClipPlane.xml
*)

(** {3 Evaluators} *)

module Map1 = struct (* PACK_ENUM *)
#include "enums/map1_target.inc.ml"
end (* PACK_ENUM *)
external map1: target:Map1.map1_target -> u1:float -> u2:float -> stride:int -> order:int -> points:float array -> unit
         = "ml_glmap1d_bytecode"
           "ml_glmap1d_native"
           NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glMap1.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


module Map2 = struct (* PACK_ENUM *)
#include "enums/map2_target.inc.ml"
end (* PACK_ENUM *)
external map2: target:Map2.map2_target ->
                 u1:float -> u2:float -> ustride:int -> uorder:int ->
                 v1:float -> v2:float -> vstride:int -> vorder:int ->
                 points:float array array array -> unit
         = "ml_glmap2d_bytecode"
           "ml_glmap2d_native"
           NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glMap2.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external evalCoord1: u:float -> unit = "ml_glevalcoord1d" NOALLOC
external evalCoord2: u:float -> v:float -> unit = "ml_glevalcoord2d" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glEvalCoord.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

module EvalMesh1 = struct
type eval_mesh_1 = POINT | LINE
end

module EvalMesh2 = struct
type eval_mesh_2 = POINT | LINE | FILL
end

external evalMesh1: mode:EvalMesh1.eval_mesh_1 -> i1:int -> i2:int -> unit = "ml_glevalmesh1" NOALLOC
external evalMesh2: mode:EvalMesh2.eval_mesh_2 -> i1:int -> i2:int -> j1:int -> j2:int -> unit = "ml_glevalmesh2" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glEvalMesh.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external evalPoint1: i:int -> unit = "ml_glevalpoint1" NOALLOC
external evalPoint2: i:int -> j:int -> unit = "ml_glevalpoint2" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glEvalPoint.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


external mapGrid1: un:int -> u1:float -> u2:float -> unit = "ml_glmapgrid1d" NOALLOC
external mapGrid2: un:int -> u1:float -> u2:float -> vn:int -> v1:float -> v2:float -> unit
    = "ml_glmapgrid2d_bytecode"
      "ml_glmapgrid2d_native"
      NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glMapGrid.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)



(** {3 Display Lists} *)

#include "enums/list_mode.inc.ml"
external newList: gl_list:int -> mode:list_mode -> unit = "ml_glnewlist" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glNewList.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external endList: unit -> unit = "ml_glendlist" NOALLOC
(** @deprecated in core OpenGL 3. *)

external genList: unit -> int = "ml_glgenlist" NOALLOC
external genLists: range:int -> int = "ml_glgenlists" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGenLists.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external callList: gl_list:int -> unit = "ml_glcalllist" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCallList.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external callLists: gl_lists:int array -> unit = "ml_glcalllists" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCallLists.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external deleteLists: gl_list:int -> range:int -> unit = "ml_gldeletelists" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDeleteLists.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external listBase: base:int -> unit = "ml_gllistbase" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glListBase.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external isList: gl_list:int -> bool = "ml_glislist" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glIsList.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external getListMode: unit -> list_mode = "ml_glgetlistmode" NOALLOC
(** @deprecated in core OpenGL 3. *)
 


(** {3 Picking} *)

#include "enums/render_mode.inc.ml"
external renderMode: mode:render_mode -> int = "ml_glrendermode" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glRenderMode.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external initNames: unit -> unit = "ml_glinitnames" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glInitNames.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external loadName: name:int -> unit = "ml_glloadname" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLoadName.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external pushName: name:int -> unit = "ml_glpushname" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPushName.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external popName: unit -> unit = "ml_glpopname" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glPopName.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)


(* WIP *)

type select_buffer
external new_select_buffer: buffer_size:int -> select_buffer = "ml_alloc_select_buffer" NOALLOC
external free_select_buffer: select_buffer:select_buffer -> unit = "ml_free_select_buffer" NOALLOC
external select_buffer_get: select_buffer:select_buffer -> index:int -> int = "ml_select_buffer_get" NOALLOC

external selectBuffer: buffer_size:int -> select_buffer:select_buffer -> unit = "ml_glselectbuffer" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glSelectBuffer.xml}
    manual page on opengl.org}
    @deprecated in core OpenGL 3. *)

external selectBufferBA: 
    (*
    ('a, 'b, Bigarray.c_layout) Bigarray.Array1.t
    *)
    (nativeint, Bigarray.nativeint_elt, Bigarray.c_layout) Bigarray.Array1.t
    -> unit
    = "ml_glselectbuffer_ba" NOALLOC

(* TODO?
void glFeedbackBuffer( GLsizei size, GLenum type, GLfloat *buffer );  !!! deprecated in core OpenGL 3.2
void glPassThrough( GLfloat token );  !!! deprecated in core OpenGL 3.2
*)


(** {3 Fog} *)

(* {{{ glFog *)

type fog_mode =
  | LINEAR
  | EXP
  | EXP2

type fog_coord_src =
  | FOG_COORD
  | FRAGMENT_DEPTH

type fog_param =
  | FOG_MODE of fog_mode
  | FOG_DENSITY of float
  | FOG_START of float
  | FOG_END of float
  | FOG_INDEX of float
  | FOG_COLOR of (float * float * float * float)
  | FOG_COORD_SRC of fog_coord_src
;;

#ifdef MLI

val glFog: pname:fog_param -> unit
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glFog.xml}
    manual page on opengl.org} *)

#else
(* ML *)

external fog2: pname:int -> param:float -> unit = "ml_glfog2" NOALLOC
external fog1: i:int -> unit = "ml_glfog1" NOALLOC
external fog4: float -> float -> float -> float -> unit = "ml_glfog4" NOALLOC

let glFog ~pname =
  match pname with
  | FOG_DENSITY density -> fog2 1 density
  | FOG_START start     -> fog2 2 start
  | FOG_END _end        -> fog2 3 _end
  | FOG_INDEX index     -> fog2 4 index
  | FOG_COORD_SRC   FOG_COORD      -> fog1 1
  | FOG_COORD_SRC   FRAGMENT_DEPTH -> fog1 2
  | FOG_MODE   LINEAR -> fog1 3
  | FOG_MODE   EXP    -> fog1 4
  | FOG_MODE   EXP2   -> fog1 5
  | FOG_COLOR(r, g, b, a) -> fog4 r g b a
;;

#endif

(* }}} *)

(* glFogCoord() is deprecated in core OpenGL 3.2 *)


(** {3 GLSL Shaders} *)

type shader_object
type shader_program

#include "enums/shader_type.inc.ml"
external createShader: shader_type:shader_type -> shader_object = "ml_glcreateshader"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCreateShader.xml}
    manual page on opengl.org} *)

external deleteShader: shader:shader_object -> unit = "ml_gldeleteshader"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDeleteShader.xml}
    manual page on opengl.org} *)

external isShader: shader:shader_object -> bool = "ml_glisshader"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glIsShader.xml}
    manual page on opengl.org} *)

external shaderSource: shader:shader_object  -> string -> unit = "ml_glshadersource"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glShaderSource.xml}
    manual page on opengl.org} *)

external compileShader: shader:shader_object -> unit = "ml_glcompileshader"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCompileShader.xml}
    manual page on opengl.org} *)

external createProgram: unit -> shader_program = "ml_glcreateprogram"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glCreateProgram.xml}
    manual page on opengl.org} *)

external deleteProgram: program:shader_program -> unit = "ml_gldeleteprogram"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDeleteProgram.xml}
    manual page on opengl.org} *)

external attachShader: program:shader_program -> shader:shader_object  -> unit = "ml_glattachshader"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glAttachShader.xml}
    manual page on opengl.org} *)

external detachShader: program:shader_program -> shader:shader_object -> unit = "ml_gldetachshader"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDetachShader.xml}
    manual page on opengl.org} *)

external linkProgram: program:shader_program -> unit = "ml_gllinkprogram"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glLinkProgram.xml}
    manual page on opengl.org} *)

external useProgram: program:shader_program -> unit = "ml_gluseprogram"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glUseProgram.xml}
    manual page on opengl.org} *)

external unuseProgram: unit -> unit = "ml_glunuseprogram"
(** equivalent to the C call glUseProgram(0) that desactivates the program *)

external getShaderCompileStatus: shader:shader_object -> bool = "ml_glgetshadercompilestatus"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetShader.xml}
    manual page on opengl.org} *)

external getShaderCompileStatus_exn: shader:shader_object -> unit = "ml_glgetshadercompilestatus_exn"
(** same than [glGetShaderCompileStatus] but raises an exception instead of returning false *)

external getUniformLocation: program:shader_program -> name:string -> int = "ml_glgetuniformlocation"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetUniformLocation.xml}
    manual page on opengl.org} *)


type get_program_bool =
  | DELETE_STATUS
  | LINK_STATUS
  | VALIDATE_STATUS

type get_program_int =
  | INFO_LOG_LENGTH
  | ATTACHED_SHADERS
  | ACTIVE_ATTRIBUTES
  | ACTIVE_ATTRIBUTE_MAX_LENGTH
  | ACTIVE_UNIFORMS
  | ACTIVE_UNIFORM_MAX_LENGTH

external getProgrami: program:shader_program -> pname:get_program_int -> int = "ml_glgetprogram_int"
external getProgramb: program:shader_program -> pname:get_program_bool -> bool = "ml_glgetprogram_bool"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetProgram.xml}
    manual page on opengl.org} *)


external uniform1f: location:int -> v0:float -> unit = "ml_gluniform1f" NOALLOC
external uniform2f: location:int -> v0:float -> v1:float -> unit = "ml_gluniform2f" NOALLOC
external uniform3f: location:int -> v0:float -> v1:float -> v2:float -> unit = "ml_gluniform3f" NOALLOC
external uniform4f: location:int -> v0:float -> v1:float -> v2:float -> v3:float -> unit = "ml_gluniform4f" NOALLOC
external uniform1i: location:int -> v0:int -> unit = "ml_gluniform1i" NOALLOC
external uniform2i: location:int -> v0:int -> v1:int -> unit = "ml_gluniform2i" NOALLOC
external uniform3i: location:int -> v0:int -> v1:int -> v2:int -> unit = "ml_gluniform3i" NOALLOC
external uniform4i: location:int -> v0:int -> v1:int -> v2:int -> v3:int -> unit = "ml_gluniform4i" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glUniform.xml}
    manual page on opengl.org} *)

external uniform1fv: location:int -> value:float array -> unit = "ml_gluniform1fv"
external uniform2fv: location:int -> count:int -> value:float array -> unit = "ml_gluniform2fv"
external uniform3fv: location:int -> count:int -> value:float array -> unit = "ml_gluniform3fv"
external uniform4fv: location:int -> count:int -> value:float array -> unit = "ml_gluniform4fv"
external uniform1iv: location:int -> value:int array -> unit = "ml_gluniform1iv"
external uniform2iv: location:int -> count:int -> value:int array -> unit = "ml_gluniform2iv"
external uniform3iv: location:int -> count:int -> value:int array -> unit = "ml_gluniform3iv"
external uniform4iv: location:int -> count:int -> value:int array -> unit = "ml_gluniform4iv"
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glUniform.xml}
    manual page on opengl.org} *)


external uniformMatrix2f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix2f"
external uniformMatrix3f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix3f"
external uniformMatrix4f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix4f"

external uniformMatrix2x3f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix2x3f"
external uniformMatrix3x2f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix3x2f"

external uniformMatrix2x4f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix2x4f"
external uniformMatrix4x2f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix4x2f"

external uniformMatrix3x4f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix3x4f"
external uniformMatrix4x3f: location:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix4x3f"


external uniformMatrix2fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix2fv"
external uniformMatrix3fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix3fv"
external uniformMatrix4fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix4fv"

external uniformMatrix2x3fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix2x3fv"
external uniformMatrix3x2fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix3x2fv"

external uniformMatrix2x4fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix2x4fv"
external uniformMatrix4x2fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix4x2fv"

external uniformMatrix3x4fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix3x4fv"
external uniformMatrix4x3fv: location:int -> count:int -> transpose:bool -> value:float array -> unit = "ml_gluniformmatrix4x3fv"



external getAttribLocation: program:shader_program -> name:string -> int = "ml_glgetattriblocation" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetAttribLocation.xml}
    manual page on opengl.org} *)

external bindAttribLocation: program:shader_program -> index:int -> name:string -> unit = "ml_glbindattriblocation" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glBindAttribLocation.xml}
    manual page on opengl.org} *)


external vertexAttrib1s: index:int -> v:int -> unit = "ml_glvertexattrib1s" NOALLOC
external vertexAttrib1d: index:int -> v:float -> unit = "ml_glvertexattrib1d" NOALLOC

external vertexAttrib2s: index:int -> v0:int -> v1:int -> unit = "ml_glvertexattrib2s" NOALLOC
external vertexAttrib2d: index:int -> v0:float -> v1:float -> unit = "ml_glvertexattrib2d" NOALLOC

external vertexAttrib3s: index:int -> v0:int -> v1:int -> v2:int -> unit = "ml_glvertexattrib3s" NOALLOC
external vertexAttrib3d: index:int -> v0:float -> v1:float -> v2:float -> unit = "ml_glvertexattrib3d" NOALLOC

external vertexAttrib4s: index:int -> v0:int -> v1:int -> v2:int -> v3:int -> unit = "ml_glvertexattrib4s" NOALLOC
external vertexAttrib4d: index:int -> v0:float -> v1:float -> v2:float -> v3:float -> unit = "ml_glvertexattrib4d" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glVertexAttrib.xml}
    manual page on opengl.org} *)

external getShaderInfoLog: shader:shader_object -> string = "ml_glgetshaderinfolog" (* DOES ALLOC *)
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetShaderInfoLog.xml}
    manual page on opengl.org} *)

external getProgramInfoLog: program:shader_program -> string = "ml_glgetprograminfolog" (* DOES ALLOC *)
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetProgramInfoLog.xml}
    manual page on opengl.org} *)

external enableVertexAttribArray: index:int -> unit = "ml_glenablevertexattribarray" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glEnableVertexAttribArray.xml}
    manual page on opengl.org} *)

external disableVertexAttribArray: index:int -> unit = "ml_gldisablevertexattribarray" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glDisableVertexAttribArray.xml}
    manual page on opengl.org} *)


(** {3 Gets} *)

module Get = struct (* _PACK_ENUM *)
#include "enums/get_boolean_1.inc.ml"
#include "enums/get_boolean_4.inc.ml"
#include "enums/get_integer_4.inc.ml"
#include "enums/get_integer_2.inc.ml"
#include "enums/get_integer_1.inc.ml"
#include "enums/get_float_3.inc.ml"
#include "enums/get_float_4.inc.ml"
#include "enums/get_matrix.inc.ml"
#include "enums/get_float_1.inc.ml"
#include "enums/get_float_2.inc.ml"
#include "enums/get_texture_binding.inc.ml"

type get_light =
  | SPOT_EXPONENT
  | SPOT_CUTOFF
  | CONSTANT_ATTENUATION
  | LINEAR_ATTENUATION
  | QUADRATIC_ATTENUATION
  | SPOT_DIRECTION
  | AMBIENT
  | DIFFUSE
  | SPECULAR
  | POSITION
  | LIGHT_MODEL_COLOR_CONTROL
end (* _PACK_ENUM *)

(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGet.xml}
    manual page on opengl.org} *)

external getBoolean1: Get.get_boolean_1 -> bool = "ml_glgetboolean1" NOALLOC
external getBoolean4: Get.get_boolean_4 -> bool * bool * bool * bool = "ml_glgetboolean4" (* DOES ALLOC *)
external getInteger4: Get.get_integer_4 -> int * int * int * int = "ml_glgetinteger4" (* DOES ALLOC *)
external getInteger1: Get.get_integer_1 -> int = "ml_glgetinteger1" NOALLOC
external getInteger2: Get.get_integer_2 -> int * int = "ml_glgetinteger2" (* DOES ALLOC *)
external getFloat4: Get.get_float_4 -> float * float * float * float = "ml_glgetfloat4" (* DOES ALLOC *)
external getFloat3: Get.get_float_3 -> float * float * float = "ml_glgetfloat3" (* DOES ALLOC *)
external getFloat2: Get.get_float_2 -> float * float = "ml_glgetfloat2" (* DOES ALLOC *)
external getFloat1: Get.get_float_1 -> float = "ml_glgetfloat1" (* DOES ALLOC *)
external getMatrix: Get.get_matrix -> float array array = "ml_glgetmatrix" (* DOES ALLOC *)
external getMatrixFlat: Get.get_matrix -> float array = "ml_glgetmatrix_flat" (* DOES ALLOC *)
external getTextureBinding: Get.get_texture_binding -> texture_id = "ml_glgettexturebinding" NOALLOC

#include "enums/get_string.inc.ml"
external getString: name:get_string -> string = "ml_glgetstring" (* DOES ALLOC *)
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetString.xml}
    manual page on opengl.org} *)

#include "enums/gl_error.inc.ml"
external getError: unit -> gl_error = "ml_glgeterror" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetError.xml}
    manual page on opengl.org} *)


(* perhaps remove tuple_params ? *)

(* {{{ glGetLight *)

type tuple_params =
  | P1 of float
  | P3 of float * float * float
  | P4 of float * float * float * float
  | PCC of color_control

#ifdef MLI

val glGetLight: light:gl_light -> pname:Get.get_light -> tuple_params
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glGetLight.xml}
    manual page on opengl.org} *)

#else
(* ML *)

external _glGetLight1: light_i:int -> int -> float = "ml_glgetlight1" (* DOES ALLOC *)
external _glGetLight3: light_i:int -> float * float * float = "ml_glgetlight3" (* DOES ALLOC *)
external _glGetLight4: light_i:int -> int -> float * float * float * float = "ml_glgetlight4" (* DOES ALLOC *)

external getLightModelColorControl: unit -> color_control = "ml_glgetlightmodelcolorcontrol"


let glGetLight ~light ~pname =
  let light_i =
    match light with LIGHT i -> i
  in
  match pname with
  | Get.SPOT_EXPONENT         -> P1(_glGetLight1 light_i 0)
  | Get.SPOT_CUTOFF           -> P1(_glGetLight1 light_i 1)
  | Get.CONSTANT_ATTENUATION  -> P1(_glGetLight1 light_i 2)
  | Get.LINEAR_ATTENUATION    -> P1(_glGetLight1 light_i 3)
  | Get.QUADRATIC_ATTENUATION -> P1(_glGetLight1 light_i 4)

  | Get.SPOT_DIRECTION -> let p1, p2, p3 = _glGetLight3 light_i in P3(p1, p2, p3)

  | Get.AMBIENT  -> let p1, p2, p3, p4 = _glGetLight4 light_i 0 in P4(p1, p2, p3, p4)
  | Get.DIFFUSE  -> let p1, p2, p3, p4 = _glGetLight4 light_i 1 in P4(p1, p2, p3, p4)
  | Get.SPECULAR -> let p1, p2, p3, p4 = _glGetLight4 light_i 2 in P4(p1, p2, p3, p4)
  | Get.POSITION -> let p1, p2, p3, p4 = _glGetLight4 light_i 3 in P4(p1, p2, p3, p4)

  | Get.LIGHT_MODEL_COLOR_CONTROL -> PCC(getLightModelColorControl())
;;

#endif
(* }}} *)


(* {{{ Multitexture *)
(** {3 Multitexture} *)

(** {{:http://www.opengl.org/resources/code/samples/sig99/advanced99/notes/node60.html}
    Multitexture Node},
    {{:http://www.opengl.org/wiki/GL_ARB_multitexture}
    ARB multitexture wiki}
*)

#include "enums/texture_i.inc.ml"
external activeTexture: texture:texture_i -> unit = "ml_glactivetexture" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glActiveTexture.xml}
    manual page on opengl.org} *)

external activeTexturei: texture:int -> unit = "ml_glactivetexture_i" NOALLOC
(** [glActiveTexturei i] is equivalent to [glActiveTexture GL_TEXTUREi] *)


external multiTexCoord2: texture:texture_i -> s:float -> t:float -> unit = "ml_glmultitexcoord2d" NOALLOC
(** {{:http://www.opengl.org/sdk/docs/man/xhtml/glMultiTexCoord.xml}
    manual page on opengl.org} *)

external multiTexCoord2i: texture:int -> s:float -> t:float -> unit = "ml_glmultitexcoord2f_i"

(* }}} *)
(* TODO glMultiTexCoord(3|4) *)

(** {3 Library Version} *)

#ifdef MLI
val glmlite_version : int * int * int
#else
(* ML *)
let glmlite_version = (0,0,0)
#endif

(* vim: sw=2 sts=2 ts=2 et fdm=marker filetype=ocaml nowrap
 *)
