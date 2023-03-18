//
//  DetailsViewController.swift
//  SevenWonders
//
//  Created by lime on 2023/3/18.
//

import UIKit

class DetailsViewController: UIViewController {


    
    @IBOutlet weak var textWonder: UITextView!
    var wonderText = ""
    var selectRow = 0;
    override func viewDidLoad() {
        super.viewDidLoad()

        textWonder.text = wonderText
    }
    
    
    


}
