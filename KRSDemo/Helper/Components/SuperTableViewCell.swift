//
//  SuperTableViewCell.swift
//  KaramDemo
//
//  Created by Karam on 12/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class SuperTableViewCell:UITableViewCell{
   
    
    var modelObject:NSObject!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
   
    func populateCellData(modelObj:NSObject){
      fatalError("Unable to populate data")
    }
}
