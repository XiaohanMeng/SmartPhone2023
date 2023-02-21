//
//  ViewController.swift
//  FoodTableViewWithXIB
//
//  Created by lime on 2023/2/19.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let foodNames = ["chaogan", "malatang", "sacima", "tanghulu", "xiaolongbao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // want Nib named TableViewCell and the owner is myself
        // the return can be array, find the first one and cast it as TableViewCell
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        
        cell.imageContainer.image = UIImage(named: "\(foodNames[indexPath.row])")
        cell.lblImage.text = foodNames[indexPath.row]
        
        return cell
    }
    


}

