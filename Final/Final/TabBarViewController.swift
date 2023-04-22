//
//  TabBarViewController.swift
//  Final
//
//  Created by lime on 2023/4/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let hometViewController = viewControllers?[0] as! HomeViewController
        let uploadPicVC = viewControllers?[1] as! UploadImageViewController
        
        uploadPicVC.UploadProtocol = hometViewController.self
    }
    


}
