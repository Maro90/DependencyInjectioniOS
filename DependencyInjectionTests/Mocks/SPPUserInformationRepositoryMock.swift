//
//  SPPUserInformationRepositoryMock.swift
//  DependencyInjectionTests
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import Foundation

class SPPUserInformationRepositoryMock: SPPUserInformationRepository {
    var nameResult: String?
    var birthDayResult: Date = Date(timeIntervalSince1970: 0)
    var ageResult: Int = 0
        
        
    func getName() -> String? {
        return nameResult
    }
    
    func getBirthDay() -> Date {
        return birthDayResult
    }
    
    func getAge() -> Int {
        return ageResult
    }
}
