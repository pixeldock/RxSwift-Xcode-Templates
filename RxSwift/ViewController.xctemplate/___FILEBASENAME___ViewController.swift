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

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {
    fileprivate let viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel
    fileprivate let router: ___FILEBASENAMEASIDENTIFIER___Router
    fileprivate let disposeBag = DisposeBag()
    
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
        setupRx()
    }
    
    // MARK: Setup
    
    func setupViews() {
        
    }
    
    func setupLayout() {
    
    }
    
    func setupRx() {
    
    }
}
