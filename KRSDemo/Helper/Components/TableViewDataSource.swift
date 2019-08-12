//
//  TableViewDataSource.swift
//  KaramDemo
//
//  Created by Karam on 12/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import Foundation
import UIKit
class TableViewDataSource<cell:UITableViewCell,Model:NSObject>:NSObject,UITableViewDataSource{
  
    var cellIdentifier:String!
    var configureCell:(cell,Model) -> ()
    var tableView:UITableView!
    var dataList:Array<Model>!
    var fetchedResultsProvider:FetchedResultsProvider<Model>!
    
    init(cellIdentifier:String,tableView:UITableView,fetchedResultProvider:FetchedResultsProvider<Model>, configureCell:@escaping (cell,Model)->()) {
        self.tableView = tableView
        self.cellIdentifier = cellIdentifier
      //  self.dataList = dataList
        self.fetchedResultsProvider = fetchedResultProvider
        self.configureCell = configureCell
        super.init()
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.fetchedResultsProvider.numberOfSections()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  self.fetchedResultsProvider.numberOfRowsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! cell
        
        let modelObj = self.fetchedResultsProvider.objectAtIndex(at: indexPath)
        
       self.configureCell(cell,modelObj)
       return cell
    }
}
