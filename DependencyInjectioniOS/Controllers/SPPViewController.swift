//
//  SPPViewController.swift
//  DependencyInjectioniOS
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import Foundation

class SPPViewController {
    
    let model: SPPViewModelProtocol
    var titleLabelString: String = ""
    
    init(model: SPPViewModelProtocol) {
        self.model = model
    }
    
    func updateLabel() {
        self.titleLabelString = self.model.getTitle()
    }
    
}
