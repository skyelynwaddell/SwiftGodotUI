## SwiftGodot UI 

## This is a small example how to create a Swift UI to display native iOS UIKit features into your Godot 4.2+ games/projects. Utilizes SwiftGodot to present native iOS UI displays.

## Setup
You will need to first clone the repo and then for the example project you can simply run `./build.sh ios debug` or `./build.sh ios release` depending on your current needs (use debug for testing...) in your terminal

## Adding frameworks to Godot
After running the build command inside `/Bin/ios/` there should be 2 new files
```
SwiftGodotUI.framework
SwiftGodot.framework
```
You will want to drag these 2 files that were built, into the Godot Project Example folder
```
/bin/SwiftGodotUI_debug/ >> Drag both of these folders there
```

## Current Details
Current project just has a simple .xib file which can be used to use the visual editor to develop UI applications.
You can modify this to customize the design UI.
There is a simple button created in the xib storyboard, and in the code I link them and change the title text, and link the button to close the UI window created.

Test around with what you want.
Make sure to add to `Package.swift` if you add any new ViewControllers! You can see how I'm currently adding the SwiftGodotUIViewController in there for reference.

## In godot you can export to iOS
Make sure you add your team ID and add some bundle identifier.

## IMPORTANT! You must include the .xib (the UI design) in the Exported XCODE Project for your game 
Select Xcode Project for the Export Game from Godot > Target > Build Phases > Copy Bundle Resources
and then you can add from `Sources/SwiftGodotUI/SwiftGodotUIViewController.xib`

You need the .xib file to be included to build!!!

## Adding new stuff.
You can use UIKit features (basically any UI class) to implement new features. For example a user login screen, etc.