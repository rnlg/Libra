SetDirectory[DirectoryName[$InputFileName]]
appdir=$UserBaseDirectory <> "/Applications/Libra/";
file = FileNames["Libra*.m"];
If[file==={},Print["No Libra*.m in "<>Directory[]<>". Changed nothing, quitting..."];Quit[]];
file=Last[file];
Quiet[CreateDirectory[appdir]];
init=OpenWrite[appdir<>"init.m"];
WriteString[init,"Begin[\"Libra`Private`\"]\n\
  Module[{path=\""<>Directory[]<>"/\",file=\""<>file<>"\"},\n\
    If[FileExistsQ[path<>file],\n\
      Get[path<>file],\n\
      Print[\"Error: can not find \"<>file<>\"\\nCheck if this file exists in \"<>path]\n\
    ]\n\
  ]"<>"\n\
End[];"
]
Close[init]
Print["Installed shortcut for "<>file<>".\nTo load the package, use\n  <<Libra`"]
Quit[]
