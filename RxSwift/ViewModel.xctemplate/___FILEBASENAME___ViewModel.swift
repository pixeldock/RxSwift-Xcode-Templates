//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import RxSwift
import RxViewModel

enum ___FILEBASENAMEASIDENTIFIER___Command {
    case aCommand
}

enum ___FILEBASENAMEASIDENTIFIER___CommandResponse {
    case Success
    case Error(message: String)
}

class ___FILEBASENAMEASIDENTIFIER___ViewModel: RxViewModel {
    
    // input
    var commandInput = PublishSubject<___FILEBASENAMEASIDENTIFIER___Command>()
    
    // output
    var commandOutput: Observable<___FILEBASENAMEASIDENTIFIER___CommandResponse> = Observable.never()
    
    // private
    private let apiClient: ___FILEBASENAMEASIDENTIFIER___APIClient
    
    init(withAPIClient apiClient: ___FILEBASENAMEASIDENTIFIER___APIClient) {
        self.apiClient = apiClient
        super.init()
        setupTransformationChains()
    }
    
    func setupTransformationChains() {
        commandOutput = commandInput
            .map({ (command) -> ___FILEBASENAMEASIDENTIFIER___CommandResponse in
                // do what you have to do
                return .Success
            })
    }
}
