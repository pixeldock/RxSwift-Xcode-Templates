# RxSwift Xcode file templates
A handful of Xcode file templates for projects that use RXSwift and MVVM

# What this is about:

These file templates are meant to be used for the following app architecture setup:

Let's call each "screen" or "view" in the app a **Scene**. So if you have an app that has a list view, a detail view and a login view you have 3 Scenes.

Each Scene consists of the following elements:

1.  A **ViewController** (that displays the data from the ViewModel and sends user input to the ViewModel using binding in both cases)

2.  A **ViewModel** (that holds the model, provides the ViewController with displayable data and mutates the model after user input)

3.  A **Wireframe** (that takes care of routing to another scene)

4.  A **Builder** (that initializes and connects the Wireframe, ViewModel and ViewController and returns the ViewController)

In most cases the ViewModel uses other helper objects (like DataStore classes) to access and mutate the model or download data from an API but those might be shared by multiple Scenes so I don't consider them part of a scene.

# How to use it:

1. Download the *RxSwift* folder and add it to the following folder on your machine: `~/Library/Developer/Xcode/Templates`

2. When you want to add a new scene to your app, open the *New File* dialog and choose *RxSwift* in the left column

3. Select *Scene* and click *Next*

4. Enter a name for the Scene. As you can see that name will be used as a prefix for all the 4 classes that will be needed for the scene (see above)

5. Click *Next* and save the scene. Xcode now creates the 4 classes needed for the scene.

