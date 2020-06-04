//
//  MainPresenterTest.swift
//  mvp_testTests
//
//  Created by Sergey on 03.06.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import XCTest
@testable import mvp_test

class MockView: MainViewProtocol {
    func success() {
        
    }
    
    func failure(error: Error) {
        
    }
    
    
}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var presenter: MainPresenter!
    var networkService: NetworkServiceProtocol!
    var router: RouterProtocol!
    var comment = [Comment]()
    
    
    
    override func setUp() {
        
    }
    
    override func tearDown() {
        view = nil
        networkService = nil
        presenter = nil
    }
    
    
    
}
