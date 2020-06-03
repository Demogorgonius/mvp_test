//
//  ViewController.swift
//  mvp_test
//
//  Created by Sergey on 03.06.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: IBOutlet
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // MARK: IBAction
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }
    
}

extension MainViewController: MainViewProtocol {
    
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
    
}

