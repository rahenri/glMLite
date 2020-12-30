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


external init: argv:string array -> string array = "ml_glutinit"

external initWindowPosition: x:int -> y:int -> unit = "ml_glutinitwindowposition"
external positionWindow: x:int -> y:int -> unit = "ml_glutpositionwindow"
external initWindowSize: width:int -> height:int -> unit = "ml_glutinitwindowsize"
external reshapeWindow: width:int -> height:int -> unit = "ml_glutreshapewindow"

type window_id
external createWindow: title:string -> window_id = "ml_glutcreatewindow"
external setWindow: win:window_id -> unit = "ml_glutsetwindow"
external getWindow: unit -> window_id = "ml_glutgetwindow"
external createSubWindow: win:window_id -> x:int -> y:int -> width:int -> height:int -> window_id = "ml_glutcreatesubwindow"
external destroyWindow: win:window_id -> unit = "ml_glutdestroywindow"

external swapBuffers: unit -> unit = "ml_glutswapbuffers"
external postRedisplay: unit -> unit = "ml_glutpostredisplay"
external fullScreen: unit -> unit = "ml_glutfullscreen"
external mainLoop: unit -> unit = "ml_glutmainloop"
external leaveMainLoop: unit -> unit = "ml_glutleavemainloop"

external setWindowTitle: name:string -> unit = "ml_glutsetwindowtitle"
external setIconTitle: name:string -> unit = "ml_glutseticontitle"
external popWindow: unit -> unit = "ml_glutpopwindow"
external pushWindow: unit -> unit = "ml_glutpushwindow"
external showWindow: unit -> unit = "ml_glutshowwindow"
external hideWindow: unit -> unit = "ml_gluthidewindow"
external iconifyWindow: unit -> unit = "ml_gluticonifywindow"


#include "enums/cursor_type.inc.ml"
external setCursor: cursor:cursor_type -> unit = "ml_glutsetcursor"

external warpPointer: x:int -> y:int -> unit = "ml_glutwarppointer"

external ignoreKeyRepeat: ignore:bool -> unit = "ml_glutignorekeyrepeat"


#include "enums/init_mode.inc.ml"
external initDisplayMode: mode:init_mode list -> unit = "ml_glutinitdisplaymode"

external initContextVersion: major:int -> minor:int -> unit = "ml_glutinitcontextversion"

#include "enums/context_profile.inc.ml"
external initContextProfile: profile:context_profile -> unit = "ml_glutinitcontextprofile"

external displayFunc: unit -> unit = "ml_glutdisplayfunc"
let glutDisplayFunc ~display =
  Callback.register "GL callback display" display;
  displayFunc();
;;

external reshapeFunc: unit -> unit = "ml_glutreshapefunc"
let glutReshapeFunc ~reshape =
  Callback.register "GL callback reshape" reshape;
  reshapeFunc();
;;

external keyboardFunc: unit -> unit = "ml_glutkeyboardfunc"
let glutKeyboardFunc ~keyboard =
  Callback.register "GL callback keyboard" keyboard;
  keyboardFunc();
;;

external keyboardUpFunc: unit -> unit = "ml_glutkeyboardupfunc"
let glutKeyboardUpFunc ~keyboard_up =
  Callback.register "GL callback keyboard-up" keyboard_up;
  keyboardUpFunc();
;;

external passiveMotionFunc: unit -> unit = "ml_glutpassivemotionfunc"
let glutPassiveMotionFunc ~passive =
  Callback.register "GL callback passive" passive;
  passiveMotionFunc();
;;

external motionFunc: unit -> unit = "ml_glutmotionfunc"
let glutMotionFunc ~motion =
  Callback.register "GL callback motion" motion;
  motionFunc();
;;

#include "enums/mouse_button_state.inc.ml"

external mouseFunc: unit -> unit = "ml_glutmousefunc"
let glutMouseFunc ~mouse =
  Callback.register "GL callback mouse" mouse;
  mouseFunc ();
;;

#include "enums/visibility_state.inc.ml"

external visibilityFunc: unit -> unit = "ml_glutvisibilityfunc"
let glutVisibilityFunc ~visibility =
  Callback.register "GL callback visibility" visibility;
  visibilityFunc();
;;

#include "enums/entry_state.inc.ml"

external entryFunc: unit -> unit = "ml_glutentryfunc"
let glutEntryFunc ~entry =
  Callback.register "GL callback entry" entry;
  entryFunc ();
;;

#include "enums/special_key.inc.ml"

external specialFunc: unit -> unit = "ml_glutspecialfunc"
let glutSpecialFunc ~special =
  Callback.register "GL callback special" special;
  specialFunc();
;;

external specialUpFunc: unit -> unit = "ml_glutspecialupfunc"
let glutSpecialUpFunc ~special_up =
  Callback.register "GL callback special-up" special_up;
  specialUpFunc();
;;

external idleFunc: unit -> unit = "ml_glutidlefunc"
let glutIdleFunc ~idle =
  Callback.register "GL callback idle" idle;
  idleFunc();
;;

external removeIdleFunc: unit -> unit = "ml_glutremoveidlefunc"


type menu_id = int

external createMenu: unit -> menu_id = "ml_glutcreatemenu"
let glutCreateMenu ~menu =
  Callback.register "GL callback menu" menu;
  createMenu();
;;



external init_glutTimerFunc : (int -> unit) -> unit = "init_gluttimerfunc_cb"

let timer_hashtbl = Hashtbl.create 32 ;;

let real_call_back i = (Hashtbl.find timer_hashtbl i) () ;;
      
let () = init_glutTimerFunc real_call_back ;;
    

external _glutTimerFunc : int -> int -> unit = "ml_gluttimerfunc"

let timer_count = ref 0 ;;

let glutTimerFunc ~msecs ~timer:(cb:(value:'a -> unit)) ~value =
  let i = !timer_count in
  incr timer_count;
  Hashtbl.add timer_hashtbl i (fun () ->
      Hashtbl.remove timer_hashtbl i;
      cb value);
  _glutTimerFunc msecs i
;;



external addSubMenu: name:string -> menu:menu_id -> unit = "ml_glutaddsubmenu"
external addMenuEntry: name:string -> value:int -> unit = "ml_glutaddmenuentry"
external getMenu: unit -> menu_id = "ml_glutgetmenu"
external setMenu: menu:menu_id -> unit = "ml_glutsetmenu"
external destroyMenu: menu:menu_id -> unit = "ml_glutdestroymenu"

#include "enums/mouse_button.inc.ml"
external attachMenu: button:mouse_button -> unit = "ml_glutattachmenu"
external detachMenu: button:mouse_button -> unit = "ml_glutdetachmenu"

external changeToMenuEntry: entry:int -> name:string -> value:int -> unit = "ml_glutchangetomenuentry"
external changeToSubMenu: entry:int -> name:string -> menu:menu_id -> unit = "ml_glutchangetosubmenu"
external removeMenuItem: entry:int -> unit = "ml_glutremovemenuitem"


external initDisplayString: string -> unit = "ml_glutinitdisplaystring"


(* State Retrieval *)

#include "enums/get_state.inc.ml"
external get: state:get_state -> int = "ml_glutget"

#include "enums/glut_device.inc.ml"
external deviceGet: device:glut_device -> int = "ml_glutdeviceget"

type active_modifier =
  | GLUT_ACTIVE_SHIFT
  | GLUT_ACTIVE_CTRL
  | GLUT_ACTIVE_ALT

external getModifiers: unit -> active_modifier list = "ml_glutgetmodifiers"
external getModifiersB: unit -> bool * bool * bool = "ml_glutgetmodifiers_t"

external extensionSupported: extension:string -> bool = "ml_glutextensionsupported"


(* Game Mode *)

external gameModeString: mode:string -> unit = "ml_glutgamemodestring"

external enterGameMode: unit -> unit = "ml_glutentergamemode"
external leaveGameMode: unit -> unit = "ml_glutleavegamemode"

#include "enums/game_mode.inc.ml"
external gameModeGet: game_mode:game_mode -> int = "ml_glutgamemodeget"


(* Font Rendering *)

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
external bitmapWidth: font:bitmap_font -> c:char -> int = "ml_glutbitmapwidth"

external strokeCharacter: font:stroke_font -> c:char -> unit = "ml_glutstrokecharacter"
external strokeWidth: font:stroke_font -> c:char -> int = "ml_glutstrokewidth"

external bitmapHeight: font:bitmap_font -> int = "ml_glutbitmapheight"
external strokeHeight: font:stroke_font -> float = "ml_glutstrokeheight"

external bitmapLength: font:bitmap_font -> str:string -> int = "ml_glutbitmaplength"
external strokeLength: font:stroke_font -> str:string -> int = "ml_glutstrokelength"


(* Geometric Object Rendering *)

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
external solidRhombicDodecahedron: unit -> unit = "ml_glutsolidrhombicdodecahedron"


(* Color Index *)

external setColor: cell:int -> r:float -> g:float -> b:float -> unit = "ml_glutsetcolor"
(** to use with [glIndex] *)

external getColor: cell:int -> float * float * float = "ml_glutgetcolor"


(* vim: et fdm=marker filetype=ocaml
 *)
