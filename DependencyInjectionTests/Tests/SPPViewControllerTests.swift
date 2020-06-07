//
//  SPPViewControllerTests.swift
//  DependencyInjectionTests
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import XCTest

class SPPViewControllerTests: XCTestCase {

    let viewModelMock = SPPViewModelMock()
    var sut: SPPViewController!
    
    
    
    override func setUp() {
        sut = SPPViewController(model: viewModelMock)
    }

    override func tearDown() {
        sut = nil
    }

    
    func testUpdateLabel_getTitleFromModel() {
        //Given
        viewModelMock.titleResult = "Este titulo es una prueba"
        
        //When
        sut.updateLabel()
        
        //Then
        XCTAssertEqual("Este titulo es una prueba", sut.titleLabelString)
    }

}
