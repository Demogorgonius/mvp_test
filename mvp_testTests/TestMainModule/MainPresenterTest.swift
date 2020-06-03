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
    var titleTest: String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }

}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    
    
    
    override func setUp() {
        view = MockView()
        person = Person(firstName: "Baz", lastName: "Bar")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDown() {
        view = nil
        person = nil
        presenter = nil
    }
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

    func testModuleIsNotNil() {
        
        XCTAssertNotNil(view, "view is not nil")
        
    }

    

}
