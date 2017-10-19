//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

struct ___VARIABLE_sceneName___Builder {

    static func viewController() -> UIViewController {
        let viewModel = ___VARIABLE_sceneName___ViewModel()
        let router = ___VARIABLE_sceneName___Router()
        let viewController = ___VARIABLE_sceneName___ViewController(withViewModel: viewModel, router: router)
        router.viewController = viewController

        return viewController
    }
}
