//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

struct ___FILEBASENAMEASIDENTIFIER___Builder {
    
    static func viewController() -> UIViewController {
        let viewModel = ___FILEBASENAMEASIDENTIFIER___ViewModel()
        let router = ___FILEBASENAMEASIDENTIFIER___Router()
        let viewController = ___FILEBASENAMEASIDENTIFIER___ViewController(withViewModel: viewModel, router: router)
        router.viewController = viewController
        
        return viewController
    }
}
