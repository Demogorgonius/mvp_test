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


    func testModuleIsNotNil() {
        
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "model person is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }

    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Baz Bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(person.firstName, "Baz")
        XCTAssertEqual(person.lastName, "Bar")
    }

}
