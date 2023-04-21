//
//  HomeViewController.swift
//  InstaWithoutDBAndCloud
//
//  Created by lime on 2023/4/20.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UploadImageProtocol {
    

    var images : [UIImage] = [UIImage]()
    var locations = [String]()
    var imageTitles : [String] = [String]()

    
    @IBOutlet weak var tblView: UITableView!
    
    var uploadImageVC : UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imgViewCell.image = images[indexPath.row]
        cell.lblCellTitle.text = imageTitles[indexPath.row]
        cell.lblCellLocation.text = locations[indexPath.row]
        
        return cell
    }
    
    func uploadedImageDelegate(img: UIImage, locationImg: String, titleImg: String) {
        images.append(img)
        locations.append(locationImg)
        imageTitles.append(titleImg)
        
        tblView.reloadData()
    }
    

}
