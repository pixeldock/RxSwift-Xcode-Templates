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
    case command1
}

enum ___FILEBASENAMEASIDENTIFIER___Result {
    case Success
    case Error(message: String)
}

class ___FILEBASENAMEASIDENTIFIER___ViewModel: RxViewModel {
    
    // input
    var command = PublishSubject<___FILEBASENAMEASIDENTIFIER___Command>()
    
    // output
    var result: Observable<___FILEBASENAMEASIDENTIFIER___Result> = Observable.never()
    
    // private
    private let dataStore: ___FILEBASENAMEASIDENTIFIER___DataStore
    
    init(withDataStore dataStore: ___FILEBASENAMEASIDENTIFIER___DataStore) {
        self.dataStore = dataStore
        super.init()
        setupBindings()
    }
    
    func setupBindings() {
        result = command
            .map({ (theCommand) -> ___FILEBASENAMEASIDENTIFIER___Result in
                // do what you have to do
                return .Success
            })
    }
}
