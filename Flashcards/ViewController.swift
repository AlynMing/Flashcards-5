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
    
    func updateFlashcard(question: String, answer: String) {
        frontlabel.text = question
        backlabel.text = answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // we know the destination of the segue is the Navigation Controller
        let navigationController = segue.destination as! UINavigationController
        
        // we know the Navigation Controller only contains a Creation View Controller
        let creationController = navigationController.topViewController as! CreationViewController
        
        // we set the flashcardsController property to self
        creationController.flashcardsController = self
    }
}

