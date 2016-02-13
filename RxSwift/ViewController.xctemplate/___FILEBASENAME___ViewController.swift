//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxViewModel

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {
    private let viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel
    private let router: ___FILEBASENAMEASIDENTIFIER___Router
    private let disposeBag = DisposeBag()
    
    init(withViewModel viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel, router: ___FILEBASENAMEASIDENTIFIER___Router) {
        self.viewModel = viewModel
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupLayout()
        setupBindings()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.active = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        viewModel.active = false
    }
    
    func setupViews() {
        view.backgroundColor = UIColor.whiteColor()
        
    }
    
    func setupLayout() {
    
    }
    
    func setupBindings() {
    
    }
}
