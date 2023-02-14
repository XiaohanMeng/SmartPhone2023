//
//  ViewController.swift
//  RestaurantApp
//
//  Created by lime on 2023/2/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let resturants = ["Subway", "Din Tai Fung", "Cookie Shop", "Coffee Shop"]
    
    let foods =  [["The MexiCali Sandwich", "Veggie Delite Sandwich", "Oven-Roasted Turkey Sandwich", "Sweet Onion Chicken Teriyaki Sandwich"],
                  ["Shrimp Fried Rice", "Vegan Dumplings", "Hot & Soup Soup", "Red Bean Bun", "Shaomai"],
                  ["Double Chocolate Cookie", "Milk Cookie", "Sweet & Salty Cookie", "White Chocolate Cookie"],
                  ["Latte", "Caramel Macchiato", "Cappuccino", "Americano", "Espresso", "Black Tea Lemonade"]]
    
    // varibale to show in the bottom table view
    var foodItems : [String]  = []
    
    
    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop{
            return resturants.count
        }else{
            return foodItems.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // operations in the top table view
        if tableView == tblViewTop{
            let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantcell", for: indexPath)
            
            cell.textLabel?.text = resturants[indexPath.row]
            
            return cell
        }else{  // operations in the bottom table view
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodcell", for: indexPath)
            
            cell.textLabel?.text = foodItems[indexPath.row]
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop{
            
            // get the selected row
            let selectRow = indexPath.row
            
            // update the food items data
            foodItems = foods[selectRow]
            
            // reload the bottom table view
            self.tblViewBottom.reloadData()
        }
    }

}

