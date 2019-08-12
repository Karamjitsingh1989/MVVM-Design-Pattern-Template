//
//  FetchedResultProvider.swift
//  KaramDemo
//
//  Created by Karam on 12/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import Foundation

class FetchedResultsProvider<T:NSObject>{
    
    var fetchedResultList:Array<Any>!
    var isSection = false
    
    init(fetchedResultList:Array<Any>,isSectionList:Bool) {
        self.fetchedResultList = fetchedResultList
        self.isSection = isSectionList
    }
    
    func numberOfRowsInSection(section:Int) -> Int{
        
       guard let totalSection = self.fetchedResultList else { return 0 }
        
        if isSection{
            let modelArray:Array = totalSection[section] as! Array<Any>
            return modelArray.count
        }
        return totalSection.count
    }
    
    
    func numberOfSections() ->Int{
        
        guard let sections = self.fetchedResultList else { return 0 }
        if isSection{
            return sections.count
        }
        return 1
    }
    
    func objectAtIndex(at indexPath:IndexPath) -> T{
        
        if isSection{
        let modelArray:Array = self.fetchedResultList[indexPath.section] as! Array<T>
            return modelArray[indexPath.row]
        }
        return  self.fetchedResultList![indexPath.row] as! T
    }
    
    func insertNewObject(element:T){
       self.fetchedResultList.append(element)
    }
    
 
    
}
