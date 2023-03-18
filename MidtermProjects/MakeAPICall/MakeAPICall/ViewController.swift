//
//  ViewController.swift
//  MakeAPICall
//
//  Created by lime on 2023/3/18.
//

import UIKit
import SwiftSpinner
import SwiftyJSON
import Alamofire


class ViewController: UIViewController {
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    @IBOutlet weak var txtStockSymbol: UITextField!
    
    @IBOutlet weak var lblCompanyName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func getStockDetailsAction(_ sender: Any) {
        guard let symbol = txtStockSymbol.text else {return}
        
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        
        SwiftSpinner.show("Getting Stock Price")
        
        AF.request(url).responseJSON{ response in
            SwiftSpinner.hide()
            
            if response.error != nil{
                print("Error in response")
                return
            }
            
            // get the valid response
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            
            let price = stock["price"].floatValue
            let company = stock["companyName"].stringValue
            let website = stock["website"].stringValue
            
            print(company)
            
            self.lblPrice.text = "Price: \(price) $"
            self.lblCompanyName.text = "Comapny Name: \(company)"
            self.lblWebsite.text = "Website: \(website)"
            
        }
    }
}
