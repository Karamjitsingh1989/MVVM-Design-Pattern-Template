//
//  Protocols.swift
//  Template
//
//  Created by Karam on 10/04/19.
//  Copyright © 2019 Karam. All rights reserved.
//

import Foundation


protocol DataRepresantable {
    func populateData()
}


protocol RowViewModel {}

protocol CellConfigurable {
    func populateCellData(viewModel: RowViewModel) // Provide a generic function
}
