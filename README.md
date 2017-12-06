# RxSwift Xcode file templates

[![GitHub release](https://img.shields.io/github/release/pixeldock/RxSwift-Xcode-Templates.svg)]()
[![License](https://img.shields.io/badge/License-MIT-gray.svg?style=flat)](https://opensource.org/licenses/MIT)
[![Xcode version](https://img.shields.io/badge/Xcode-9.1-green.svg?style=flat)](https://developer.apple.com/xcode/)
[![Platform](https://img.shields.io/badge/platform-iOS-lightgrey.svg?style=flat)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://swift.org/)
[![Twitter](https://img.shields.io/badge/Twitter-@pixeldock-blue.svg?style=flat)](http://twitter.com/pixeldock)
[![Blog](https://img.shields.io/badge/Blog-pixeldock-FF0066.svg?style=flat)](http://pixeldock.com/blog)

A handful of Xcode file templates for projects that use [RxSwift](https://github.com/ReactiveX/RxSwift) and my own variation of MVVM

# What this is about:

These file templates are meant to be used for the following app architecture setup:

Let's call each "screen" or "view" in the app a **Scene**. So if you have an app that has a list view, a detail view and a login view you have 3 Scenes.

Each Scene consists of the following elements:


### ViewController
####  ✅ Does
- initialize and layout its subviews
- handle user input (if data needs to be fetched or stored it relays that to the ViewModel)
- show Displayable Items that are provided by the ViewModel

#### ❌ Does Not
- have any access to API, DataStore, UserDefaults
- push other ViewControllers or pop itself
- present other ViewControllers modally
- show Alerts
- format Data to be displayable in Views (e.g.  AttributedStrings, DateFormatters)

---
### ViewModel
#### ✅ Does
- fetch data from API
- fetch / store / update Data from DataStore
- fetch / store / update Data from UserDefaults
- format Data to be displayable by the ViewController (e.g. Attributed Strings, DateFormatters)

#### ❌ Does Not
- have any access to UIElements (does not even import UIKit!)

---

### Router
####  ✅ Does
- push other Scenes (if they are should be on the same navigaton stack)
- generate a `RouteRequest` for Scenes that should be presented by the main `AppRouter`

#### ❌ Does Not
- have any access to UIElements (does not even import UIKit!)
- have any access to API, DataStore, UserDefaults

---

### Builder
####  ✅ Does
- initialize ViewController, ViewModel and Router
- provide the ViewController to the outside world (via the `viewController()` method)
- if the Scene needs some initial data it is injected into the Builder who then injects it into the ViewModel

#### ❌ Does Not
- do anything else ;-)

---

![image](http://www.pixeldock.com/img/anatomy-scene.png)

## Initializing a new scene

When you want to show a new scene you never initialize any of its components yourself. Always ask the Scene's Builder to provide the Scene's ViewController via its static `viewController()` method:

```
let nextViewController = NextBuilder.viewController()
```

If the new Scene needs some initial data you inject it into the new Scene's Builder.

**A simple example:**  
You have a `CarListScene` that shows a list of cars. When the user taps on a car in the list you want to navigate to a `CarDetailsScene` that shows the details of the selected car. To hand the `carID` to the Details Scene you inject it into the `CarDetailsBuilder`:

```
class CarListRouter {
    weak var viewController: CarListViewController?

    func navigateToDetails(withCarID carID: String) {
        let detailsViewController = CarDetailsBuilder.viewController(withCarID: carID)
        viewController?.navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
```

The `CarDetailsBuilder` then injects the data into the `CarDetailsViewModel`:

```
struct CarDetailsBuilder {

    static func viewController(withCarID carID: String) -> UIViewController {
        let viewModel = CarDetailsViewModel(withCarID: carID)
        let router = CarDetailsRouter()
        let viewController = CarDetailsViewController(withViewModel: viewModel, router: router)
        router.viewController = viewController

        return viewController
    }
}
```

And then the `CarDetailsViewModel` prepares displayable data for the `CarDetailsViewController` as it always does.


# How to use the Xcode templates:

1. Download the *RxSwift* folder and add it to the following folder on your machine: `~/Library/Developer/Xcode/Templates` (You might need to create that folder if does not exist yet)

2. When you want to add a new scene to your app, open the *New File* dialog and choose *RxSwift* in the left column

3. Select *Scene* and click *Next*

4. Enter a name for the Scene. As you can see that name will be used as a prefix for all the 4 classes that will be needed for the scene (see above)

5. Click *Next* and save the scene. Xcode now creates the 4 classes needed for the scene.

# Requirements

* Xcode 9 (for prior versions use 0.4.0)
* Swift 4
