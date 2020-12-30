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

(** Glut interface *)

(**
{{:http://www.opengl.org/resources/libraries/glut/spec3/spec3.html}Online documentation of the C API}
*)

(** {2 Initialization} *)

external init: argv:string array -> string array = "ml_glutinit"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node10.html}
    doc on opengl.org} *)

external initWindowPosition: x:int -> y:int -> unit = "ml_glutinitwindowposition"
external initWindowSize: width:int -> height:int -> unit = "ml_glutinitwindowsize"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node11.html}
    doc on opengl.org} *)

#include "enums/init_mode.inc.ml"
external initDisplayMode: mode:init_mode list -> unit = "ml_glutinitdisplaymode"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node12.html}
    doc on opengl.org} *)

external initDisplayString: string -> unit = "ml_glutinitdisplaystring"
(** {{:http://www.opengl.org/documentation/specs/glut/spec3/node70.html}
    doc on opengl.org} *)

external initContextVersion: major:int -> minor:int -> unit = "ml_glutinitcontextversion"

#include "enums/context_profile.inc.ml"
external initContextProfile: profile:context_profile -> unit = "ml_glutinitcontextprofile"

(** {2 Beginning Event Processing} *)

external mainLoop: unit -> unit = "ml_glutmainloop"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node14.html}
    doc on opengl.org} *)

external leaveMainLoop: unit -> unit = "ml_glutleavemainloop"
(** function only available with some implementations (ex: 
    {{:http://freeglut.sourceforge.net/}FreeGlut} or
    {{:http://openglut.sourceforge.net/}OpenGlut}) *)


(** {2 Window Management} *)

type window_id
external createWindow: title:string -> window_id = "ml_glutcreatewindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node16.html}
    doc on opengl.org} *)

external setWindow: win:window_id -> unit = "ml_glutsetwindow"
external getWindow: unit -> window_id = "ml_glutgetwindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node18.html}
    doc on opengl.org} *)

external createSubWindow: win:window_id -> x:int -> y:int -> width:int -> height:int -> window_id = "ml_glutcreatesubwindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node17.html}
    doc on opengl.org} *)

external destroyWindow: win:window_id -> unit = "ml_glutdestroywindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node19.html}
    doc on opengl.org} *)

external postRedisplay: unit -> unit = "ml_glutpostredisplay"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node20.html}
    doc on opengl.org} *)

external swapBuffers: unit -> unit = "ml_glutswapbuffers"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node21.html}
    doc on opengl.org} *)

external positionWindow: x:int -> y:int -> unit = "ml_glutpositionwindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node22.html}
    doc on opengl.org} *)

external reshapeWindow: width:int -> height:int -> unit = "ml_glutreshapewindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node23.html}
    doc on opengl.org} *)

external fullScreen: unit -> unit = "ml_glutfullscreen"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node24.html}
    doc on opengl.org} *)

external popWindow: unit -> unit = "ml_glutpopwindow"
external pushWindow: unit -> unit = "ml_glutpushwindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node25.html}
    doc on opengl.org} *)

external showWindow: unit -> unit = "ml_glutshowwindow"
external hideWindow: unit -> unit = "ml_gluthidewindow"
external iconifyWindow: unit -> unit = "ml_gluticonifywindow"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node26.html}
    doc on opengl.org} *)

external setWindowTitle: name:string -> unit = "ml_glutsetwindowtitle"
external setIconTitle: name:string -> unit = "ml_glutseticontitle"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node27.html}
    doc on opengl.org} *)


#include "enums/cursor_type.inc.ml"
external setCursor: cursor:cursor_type -> unit = "ml_glutsetcursor"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node28.html}
    doc on opengl.org} *)

external warpPointer: x:int -> y:int -> unit = "ml_glutwarppointer"

external ignoreKeyRepeat: ignore:bool -> unit = "ml_glutignorekeyrepeat"


(* * {2 Overlay Management} *)
(* TODO
    glutEstablishOverlay
    glutUseLayer
    glutRemoveOverlay
    glutPostOverlayRedisplay
    glutShowOverlay
    glutHideOverlay
*)


(** {2 Menu Management} *)
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node35.html}
    doc on opengl.org} *)

type menu_id

val glutCreateMenu: menu:(value:int -> unit) -> menu_id
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node36.html}
    doc on opengl.org} *)

external getMenu: unit -> menu_id = "ml_glutgetmenu"
external setMenu: menu:menu_id -> unit = "ml_glutsetmenu"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node37.html}
    doc on opengl.org} *)

external destroyMenu: menu:menu_id -> unit = "ml_glutdestroymenu"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node38.html}
    doc on opengl.org} *)

external addMenuEntry: name:string -> value:int -> unit = "ml_glutaddmenuentry"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node39.html}
    doc on opengl.org} *)

external addSubMenu: name:string -> menu:menu_id -> unit = "ml_glutaddsubmenu"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node40.html}
    doc on opengl.org} *)

external changeToMenuEntry: entry:int -> name:string -> value:int -> unit = "ml_glutchangetomenuentry"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node41.html}
    doc on opengl.org} *)

external changeToSubMenu: entry:int -> name:string -> menu:menu_id -> unit = "ml_glutchangetosubmenu"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node42.html}
    doc on opengl.org} *)

external removeMenuItem: entry:int -> unit = "ml_glutremovemenuitem"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node43.html}
    doc on opengl.org} *)

#include "enums/mouse_button.inc.ml"
external attachMenu: button:mouse_button -> unit = "ml_glutattachmenu"
external detachMenu: button:mouse_button -> unit = "ml_glutdetachmenu"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node44.html}
    doc on opengl.org} *)



(** {2 Callback Registration} *)
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node45.html}
    Index of Callback Registration on OpenGL.org} *)

val glutDisplayFunc: display:(unit -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node46.html}
    doc on opengl.org} *)

(* TODO
    glutOverlayDisplayFunc
*)
val glutReshapeFunc: reshape:(width:int -> height:int -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node48.html}
    doc on opengl.org} *)

val glutKeyboardFunc: keyboard:(key:char -> x:int -> y:int -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node49.html}
    doc on opengl.org} *)

val glutKeyboardUpFunc: keyboard_up:(key:char -> x:int -> y:int -> unit) -> unit

#include "enums/mouse_button_state.inc.ml"
val glutMouseFunc: mouse:(button:mouse_button -> state:mouse_button_state -> x:int -> y:int -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node50.html}
    doc on opengl.org} *)

val glutMotionFunc: motion:(x:int -> y:int -> unit) -> unit
val glutPassiveMotionFunc: passive:(x:int -> y:int -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node51.html}
    doc on opengl.org} *)


#include "enums/visibility_state.inc.ml"
val glutVisibilityFunc: visibility:(state:visibility_state -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node52.html}
    doc on opengl.org} *)

#include "enums/entry_state.inc.ml"
val glutEntryFunc: entry:(state:entry_state -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node53.html}
    doc on opengl.org} *)

#include "enums/special_key.inc.ml"
val glutSpecialFunc: special:(key:special_key -> x:int -> y:int -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node54.html}
    doc on opengl.org} *)

val glutSpecialUpFunc: special_up:(key:special_key -> x:int -> y:int -> unit) -> unit
(* TODO
    glutSpaceballMotionFunc
    glutSpaceballRotateFunc
    glutSpaceballButtonFunc
    glutButtonBoxFunc
    glutDialsFunc
    glutTabletMotionFunc
    glutTabletButtonFunc
    glutMenuStatusFunc
*)
val glutIdleFunc: idle:(unit -> unit) -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node63.html}
    doc on opengl.org} *)

external removeIdleFunc: unit -> unit = "ml_glutremoveidlefunc"

val glutTimerFunc: msecs:int -> timer:(value:'a -> unit) -> value:'a -> unit
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node64.html}
    doc on opengl.org} *)


(** {2 Color Index Colormap Management} *)

(* TODO
    glutCopyColormap
*)

external setColor: cell:int -> r:float -> g:float -> b:float -> unit = "ml_glutsetcolor"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node66.html}
    doc on opengl.org}
    to use with [glIndex] *)

external getColor: cell:int -> float * float * float = "ml_glutgetcolor"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node67.html}
    doc on opengl.org} *)



(** {2 State Retrieval} *)

#include "enums/get_state.inc.ml"
external get: state:get_state -> int = "ml_glutget"
(** {{:http://www.opengl.org/documentation/specs/glut/spec3/node70.html}
    doc on opengl.org} *)

(* TODO
    glutLayerGet
*)

#include "enums/glut_device.inc.ml"
external deviceGet: device:glut_device -> int = "ml_glutdeviceget"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node72.html}
    doc on opengl.org} *)

type active_modifier =
  | GLUT_ACTIVE_SHIFT
  | GLUT_ACTIVE_CTRL
  | GLUT_ACTIVE_ALT

external getModifiers: unit -> active_modifier list = "ml_glutgetmodifiers"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node73.html}
    doc on opengl.org} *)

external getModifiersB: unit -> bool * bool * bool = "ml_glutgetmodifiers_t"
(** same as [glutGetModifiers] but returns a tuple
{[let (shift, ctrl, alt) = glutGetModifiersB() in]} *)

external extensionSupported: extension:string -> bool = "ml_glutextensionsupported"
(** {{:http://www.opengl.org/documentation/specs/glut/spec3/node74.html}
    doc on opengl.org} *)



(** {2 Font Rendering} *)

(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node75.html}
    doc on opengl.org} *)

type stroke_font =
  | GLUT_STROKE_ROMAN
  | GLUT_STROKE_MONO_ROMAN

type bitmap_font =
  | GLUT_BITMAP_9_BY_15
  | GLUT_BITMAP_8_BY_13
  | GLUT_BITMAP_TIMES_ROMAN_10
  | GLUT_BITMAP_TIMES_ROMAN_24
  | GLUT_BITMAP_HELVETICA_10
  | GLUT_BITMAP_HELVETICA_12
  | GLUT_BITMAP_HELVETICA_18

external bitmapCharacter: font:bitmap_font -> c:char -> unit = "ml_glutbitmapcharacter"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node76.html}
    doc on opengl.org} *)

external bitmapWidth: font:bitmap_font -> c:char -> int = "ml_glutbitmapwidth"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node77.html}
    doc on opengl.org} *)

external strokeCharacter: font:stroke_font -> c:char -> unit = "ml_glutstrokecharacter"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node78.html}
    doc on opengl.org} *)

external strokeWidth: font:stroke_font -> c:char -> int = "ml_glutstrokewidth"
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node79.html}
    doc on opengl.org} *)

external bitmapHeight: font:bitmap_font -> int = "ml_glutbitmapheight"
external strokeHeight: font:stroke_font -> float = "ml_glutstrokeheight"

external bitmapLength: font:bitmap_font -> str:string -> int = "ml_glutbitmaplength"
external strokeLength: font:stroke_font -> str:string -> int = "ml_glutstrokelength"


(** {2 Geometric Object Rendering} *)
(** {{:http://www.opengl.org/resources/libraries/glut/spec3/node80.html}
    doc on opengl.org} *)

external wireSphere: radius:float -> slices:int -> stacks:int -> unit = "ml_glutwiresphere"
external solidSphere: radius:float -> slices:int -> stacks:int -> unit = "ml_glutsolidsphere"
external wireCone: base:float -> height:float -> slices:int -> stacks:int -> unit = "ml_glutwirecone"
external solidCone: base:float -> height:float -> slices:int -> stacks:int -> unit = "ml_glutsolidcone"
external wireCube: size:float -> unit = "ml_glutwirecube"
external solidCube: size:float -> unit = "ml_glutsolidcube"
external wireTorus: innerRadius:float -> outerRadius:float -> sides:int -> rings:int -> unit = "ml_glutwiretorus"
external solidTorus: innerRadius:float -> outerRadius:float -> sides:int -> rings:int -> unit = "ml_glutsolidtorus"
external wireDodecahedron: unit -> unit = "ml_glutwiredodecahedron"
external solidDodecahedron: unit -> unit = "ml_glutsoliddodecahedron"
external wireTeapot: size:float -> unit = "ml_glutwireteapot"
external solidTeapot: size:float -> unit = "ml_glutsolidteapot"
external wireOctahedron: unit -> unit = "ml_glutwireoctahedron"
external solidOctahedron: unit -> unit = "ml_glutsolidoctahedron"
external wireTetrahedron: unit -> unit = "ml_glutwiretetrahedron"
external solidTetrahedron: unit -> unit = "ml_glutsolidtetrahedron"
external wireIcosahedron: unit -> unit = "ml_glutwireicosahedron"
external solidIcosahedron: unit -> unit = "ml_glutsolidicosahedron"

external wireRhombicDodecahedron: unit -> unit = "ml_glutwirerhombicdodecahedron"
(** {{:http://openglut.sourceforge.net/group__geometry.html#ga18}
    doc from openglut} *)

external solidRhombicDodecahedron: unit -> unit = "ml_glutsolidrhombicdodecahedron"
(** {{:http://openglut.sourceforge.net/group__geometry.html#ga19}
    doc from openglut} *)

(* TODO
external wireSierpinskiSponge: num_levels:int -> offset:float * float * float -> scale:float -> unit = "ml_glutwiresierpinskisponge"

void glutWireSierpinskiSponge( int num_levels, const GLdouble offset[3], GLdouble scale );
http://openglut.sourceforge.net/group__geometry.html#ga20

void glutSolidSierpinskiSponge( int num_levels, const GLdouble offset[3], GLdouble scale );
http://openglut.sourceforge.net/group__geometry.html#ga21
*)


(** {2 Game Mode} *)
(** {{:http://openglut.sourceforge.net/group__gamemode.html}
    doc from OpenGlut} *)

external gameModeString: mode:string -> unit = "ml_glutgamemodestring"

external enterGameMode: unit -> unit = "ml_glutentergamemode"
(** {{:http://openglut.sourceforge.net/group__gamemode.html#ga1}
    doc from openglut} *)

external leaveGameMode: unit -> unit = "ml_glutleavegamemode"

#include "enums/game_mode.inc.ml"
external gameModeGet: game_mode:game_mode -> int = "ml_glutgamemodeget"



(* vim: et fdm=marker filetype=ocaml
 *)
