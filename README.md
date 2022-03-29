# Hello 👋

Thank you for taking the time to tackle our challenge. Today, you will get the opportunity to put yourself in the shoes of a Clay Software Engineer and re-create one of our classic animated paywalls. A version of this paywall went live a few months ago and helped us improve our conversions. 

Creating beautiful and intuitive screens is one of the most exciting tasks at Clay, and we are grateful that you let us share some of this excitement with you. 

# The Challenge

Our Design team extracted an animated paywall with a slideshow and a switch button from our previous designs and created a [Figma prototype for you](https://www.figma.com/file/ZETVmypYdXrjALtzrlimL2/Dev-test?node-id=0%3A1). If you do not have a Figma account, you might have to create a free Figma account to access the file. 

If you click the play on the top-right while nothing is selected in the Figma file, you'll launch the Figma prototype they created. This prototype shows real-time how the switch button and slideshow should operate. 

Your challenge is to replicate the UI/UX of our Figma prototype inside a mobile app.

# Rules

1. The implementation should be as accurate as possible and pixel-perfect.
2. Use the system default font but respect the weight and size as explained in the topography section.
   1. For Flutter iOS --> use the Cupertino text theme.
   2. For iOS --> use the system default.
   3. For Flutter Android --> use Roboto.
   4. For Web --> use the system default.
3. Implement the slideshow animation and the switch click.
4. All the other elements should do nothing, but they must be semantically correct (a button should be a button and not a label).

# Animations

In case you're not familiar with Figma, here thre are the videos of the slideshow animation and the switch click.

## Slideshow

https://user-images.githubusercontent.com/6044244/160395989-7cc38dc8-e51f-4a1c-8ca0-853c56772571.mp4

## Switch click

https://user-images.githubusercontent.com/6044244/160611213-0930f39f-6c3d-471f-9944-049fa51bbd96.mov

# Implementation

We've already created for you the scaffold to tackle this challenger.

You can choose to solve this challenge using one of the following:

1. Flutter app located in `paywall_challenge_flutter`.
2. iOS app using UIKit located in `paywall_challenge_uikit`.
3. iOS app using SwiftUI located in `paywall_challenge_swiftui`.
4. Dartpad (see below for further instructions).

## Flutter

All the assets you need are in the `assets` folder within `paywall_challenge_flutter` and have already been added to `pubspec.yaml`.

## iOS

All the assets are in the `Assets.xcassets` catalog are ready to be used.

## Dartpad

To solve this challenge, you can use a [Dartpad](https://dartpad.dev/?id). Once you've finished, copy the dart code in `paywall_challenge_dartpad/main.dart`.
For Dartpad here are the link for the remote assets:

| Asset | URL |
|---|---|
| `all_collections.jpg` | [LINK](https://firebasestorage.googleapis.com/v0/b/plx-clay.appspot.com/o/paywall_challenge%2Fall_collections.jpg?alt=media&token=27689de0-d8ac-47a6-955f-b8101b81c695) |
| `stickers.jpg` | [LINK](https://firebasestorage.googleapis.com/v0/b/plx-clay.appspot.com/o/paywall_challenge%2Fstickers.jpg?alt=media&token=4ab7c7d3-d3d9-4ac5-8c6b-c76265f66faa) |
| `fonts.jpg` | [LINK](https://firebasestorage.googleapis.com/v0/b/plx-clay.appspot.com/o/paywall_challenge%2Ffonts.jpg?alt=media&token=07217cd2-b68a-4f47-bb8b-55b35d7bb580) |
| `features.jpg` | [LINK](https://firebasestorage.googleapis.com/v0/b/plx-clay.appspot.com/o/paywall_challenge%2Ffeatures.jpg?alt=media&token=16bb32bf-82b8-4afe-9799-dc80a7206f3a)

# Additional notes on Figma

- Clicking on a text will show the text style that has to be applied on the right column.

- To inspect the padding, click on an element, hold `Option`, and then hover a different element.
