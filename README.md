# cs50-darwin
Allopatric Speciation Simulator

What this app does:
It simulates the process of allopatric speciation by allowing the user to change the landscape and displaying the changes in species populations per an algorithm. The app starts with a single landmass in the middle of an ocean. Species populations are represented by colored regions on top of land. Tap anywhere on the water to create a piece of land. Tap anywhere on land (some species may be occupying it) to submerge it below water. The app recalculates the populations after any change is made to the landscape. Tap ‘reset’ to revert the view back to the original. Shake the device to simulate a founder event, whereby the populations will change and all colors will be different.

Background:
Allopatric speciation is a term used in evolutionary biology referring to the evolution of new species due to events that cause geographic separation, or vicariance events. An example of a vicariance event is rising sea levels, which may submerge land bridges and create two separate landmasses which were once connected. The result is allopatric speciation, whereby the populations of species on the now separated landmasses diverge due to various environmental factors and the absence of gene flow.

Requirements:
This is an iOS app made using Apple’s Xcode development software. Download the latest version of Xcode here: https://developer.apple.com/xcode/.  The app is not available in the App Store because this requires an approval process/money. Instead, the recreational user can run the app either on their iPhone/iPad or using Xcode’s built-in Simulator (see instructions below.)

The necessary files provided are:
Final Project CS50Darwin.xcodeproj
AppDelegate.swift
Assets.xcassets folder
Base.lproj folder
CustomColors.swift
Info.plist
ViewController.swift

If you have downloaded Xcode, opening the first file should bring up the entire collection of source code and storyboards. To run the app on the Simulator, simply select a device from the menu in the left of the top banner and press the play button. To run the app on an iOS device, connect your device to your computer and select the name of your device from the same menu before pressing play. You may need to follow on-screen instructions or change your device settings to allow access to the app.

Understanding:
The Final Project CS50Darwin.xcodeproj file encompasses all components that make the app run. AppDelegate.swift is a default file that pulls all the components together to make the iOS app per Apple’s specifications. The Assets.xcassets folder contains some image files, including the app icon. The Base.lproj folder contains Main.storyboard and LaunchScreen.storyboard. Main.storyboard shows the UI, with interactive displays connected to the code. CustomColors.swift was a custom class I created to pick the colors for the different species. Info.plist contains some specifications about the app itself. ViewController.swift is where most of the Swift code is, as it is responsible for responding to user input as well as the algorithm for speciation.
