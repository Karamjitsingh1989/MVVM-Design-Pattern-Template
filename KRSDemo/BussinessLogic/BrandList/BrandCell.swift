//
//  BrandCell.swift
//  KaramDemo
//
//  Created by Karam on 12/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import Foundation
import UIKit
class BrandCell: SuperTableViewCell{
    
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func populateCellData(modelObj: NSObject) {
        
        
        if let  viewModelObj  =  modelObj as? BrandModel{
            self.lblTitle.text = viewModelObj.brandName
            
        }
        
        
    }
    
}
