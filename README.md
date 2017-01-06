# RxSwift Xcode file templates

[![GitHub release](https://img.shields.io/github/release/pixeldock/RxSwift-Xcode-Templates.svg)]()

A handful of Xcode file templates for projects that use RXSwift and MVVM

# What this is about:

These file templates are meant to be used for the following app architecture setup:

Let's call each "screen" or "view" in the app a **Scene**. So if you have an app that has a list view, a detail view and a login view you have 3 Scenes.

Each Scene consists of the following elements:

1.  A **ViewController** (that displays the data from the ViewModel out and sends user input to the ViewModel input using binding in both cases)

2.  A **ViewModel** (that provides the ViewController with displayabe Data by defining one or more transformation chains connecting the input to the output)

3.  A **Router** (that takes care of routing to another scene)

4.  A **Builder** (that initializes and connects the Router, ViewModel and ViewController and returns the ViewController)

In most cases the ViewModel uses other helper objects (e.g. an APIClient) to access and mutate the model or download data but those might be shared by multiple Scenes so I don't consider them part of a scene.

# How to use it:

1. Download the *RxSwift* folder and add it to the following folder on your machine: `~/Library/Developer/Xcode/Templates` (You might need to create that folder if does not exist yet)

2. When you want to add a new scene to your app, open the *New File* dialog and choose *RxSwift* in the left column

3. Select *Scene* and click *Next*

4. Enter a name for the Scene. As you can see that name will be used as a prefix for all the 4 classes that will be needed for the scene (see above)

5. Click *Next* and save the scene. Xcode now creates the 4 classes needed for the scene.

