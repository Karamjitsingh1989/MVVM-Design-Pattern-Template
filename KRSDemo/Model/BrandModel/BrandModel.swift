//
//  BrandModel.swift
//  KaramDemo
//
//  Created by Karam on 12/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import Foundation

class BrandModel:NSObject {
    
    var brandName:String
    var tagLine:String
    var rating:Int
   
    init(brandName:String,tagLine:String,rating:Int) {
        self.brandName = brandName
        self.tagLine = tagLine
        self.rating = rating
    }
    
  
}
