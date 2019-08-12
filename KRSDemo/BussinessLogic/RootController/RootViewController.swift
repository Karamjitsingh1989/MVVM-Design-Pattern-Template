//
//  ViewController.swift
//  Template
//
//  Created by Karam on 10/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: ViewControllers.BrandListVC)
        self.navigationController?.pushViewController(controller!, animated: false)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

