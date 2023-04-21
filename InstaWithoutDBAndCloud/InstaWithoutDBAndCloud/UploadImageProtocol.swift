//
//  ProtocolUploadImage.swift
//  InstaWithoutDBAndCloud
//
//  Created by lime on 2023/4/20.
//

import Foundation
import UIKit

protocol UploadImageProtocol{
    
    func uploadedImageDelegate(img : UIImage, locationImg : String, titleImg : String)
    
}
