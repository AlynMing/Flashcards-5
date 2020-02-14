//
//  ViewController.swift
//  Flashcards
//
//  Created by Wendy Zhu on 2/14/20.
//  Copyright © 2020 Wendy Zhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontlabel: UILabel!
    @IBOutlet weak var backlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func didTapOnFlashcard(_ sender: Any) {
        self.frontlabel.isHidden = true
    }
}

