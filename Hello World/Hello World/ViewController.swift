//
//  ViewController.swift
//  Hello World
//
//  Created by lime on 2023/1/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("I am inside viewDidLoad() function")
    }

    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        lblExample.text = "Hello World"
    }
    
}

