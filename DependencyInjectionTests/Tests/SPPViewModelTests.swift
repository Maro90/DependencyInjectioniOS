//
//  SPPViewModelTests.swift
//  DependencyInjectionTests
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import XCTest

class SPPViewModelTests: XCTestCase {

    let repositoryMock = SPPUserInformationRepositoryMock()
    var sut: SPPViewModel!
    
    
    
    override func setUp() {
        sut = SPPViewModel(repository: repositoryMock)
    }

    override func tearDown() {
        sut = nil
    }

    
    
    func testGetTitle_whenHaventAName() {        
        //When
        let title = sut.getTitle()
        
        //Then
        XCTAssertEqual("Hola Amigo", title)
    }

    func testGetTitle_whenHaveAName() {
        //Given
        repositoryMock.nameResult = "Martin"
        
        //When
        let title = sut.getTitle()
        
        //Then
        XCTAssertEqual("Hola Martin", title)
    }

}
