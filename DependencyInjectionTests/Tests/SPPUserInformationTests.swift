//
//  SPPUserInformationTests.swift
//  DependencyInjectionTests
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import XCTest

class SPPUserInformationTests: XCTestCase {

    var sut: SPPUserInformation!
    
    
    
    override func setUp() {
        sut = SPPUserInformation()
    }

    override func tearDown() {
        sut = nil
    }

    
    
    func testGetName_withDefaultInit() {
        //When
        let name = sut.getName()
        
        //Then
        XCTAssertEqual("Mauro", name)
    }

    func testGetAge_withDefaultInit() {  //Flaky test
        //When
        let age = sut.getAge()
        
        //Then
        XCTAssertEqual(29, age)
    }
}
