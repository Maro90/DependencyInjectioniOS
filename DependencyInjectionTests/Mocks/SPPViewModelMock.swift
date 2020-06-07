//
//  SPPViewModelMock.swift
//  DependencyInjectionTests
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import Foundation

class SPPViewModelMock: SPPViewModelProtocol {
    var titleResult: String = ""
    
    func getTitle() -> String {
        return titleResult
    }
}
