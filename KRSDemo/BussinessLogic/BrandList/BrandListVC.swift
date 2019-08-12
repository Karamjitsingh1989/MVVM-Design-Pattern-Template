//
//  BrandListVC.swift
//  KaramDemo
//
//  Created by Karam on 12/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import UIKit




class BrandListVC: UIViewController,DataRepresantable {
  

    
    @IBOutlet weak var tableView: UITableView!
    
    var dataArr = [BrandModel]()
    var dataSource:TableViewDataSource<BrandCell,BrandModel>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
        dataArr.append(BrandModel(brandName: "Apple", tagLine: "Think Different", rating:5))
        dataArr.append(BrandModel(brandName: "Samsung", tagLine: "Just Do it", rating:5))
        dataArr.append(BrandModel(brandName: "Nokia", tagLine: "Just Do it", rating:5))
        dataArr.append(BrandModel(brandName: "Bose", tagLine: "Just Do it", rating:5))

        populateData()
        // Do any additional setup after loading the view.
    }

    func populateData() {
        
        
        let fetchedResultProvider:FetchedResultsProvider<BrandModel> = FetchedResultsProvider(fetchedResultList: dataArr, isSectionList: false)
        
        dataSource = TableViewDataSource.init(cellIdentifier: CellIdentifiers.brandTableCell, tableView: self.tableView,fetchedResultProvider:fetchedResultProvider, configureCell: { (cell, modelObject) in
            cell.populateCellData(modelObj: modelObject)
        })
       self.tableView.dataSource = dataSource
    }
    

}
