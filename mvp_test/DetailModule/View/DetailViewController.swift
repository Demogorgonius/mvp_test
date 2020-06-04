//
//  DetailViewController.swift
//  mvp_test
//
//  Created by Sergey on 04.06.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //MARK: IBOutlets
    
    @IBOutlet weak var commentLaber: UILabel!
    
    //MARK: IBActions
    
    
    @IBAction func tapAction(_ sender: Any) {
        presenter.tap()
    }
    
    var presenter: DetailViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setComment()
       
    }
}

extension DetailViewController: DetailViewProtocol {
    func setComment(comment: Comment?) {
        commentLaber.text = comment?.body
    }
}
