//
//  MainPresenter.swift
//  mvp_test
//
//  Created by Sergey on 03.06.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import Foundation

protocol MainViewProtocol: class {
    func success()
    func failure()
}

protocol MainViewPresenterProtocol: class {
    init(view: MainViewProtocol, networkService: NetworkServiceProtocol)
    func getComments()
    var comments: [Comment]? {get  set}
}

class MainPresenter: MainViewPresenterProtocol {
    
    weak var view: MainViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comments: [Comment]?
    
    required init(view: MainViewProtocol, networkService: NetworkServiceProtocol) {
        self.view = view
        self.networkService = networkService
        
    }
    
    func getComments() {
        <#code#>
    }
    
    
}
