//
//  SPPUserInformation.swift
//  DependencyInjectioniOS
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import Foundation

class SPPUserInformation: SPPUserInformationRepository {
    var name: String
    var birthDay: Date
        
    init() {
        name = "Mauro"
        birthDay = Date(timeIntervalSince1970: 660870900)
    }
    
    init(name: String, birthDay: Date) {
        self.name = name
        self.birthDay = birthDay
    }
    
    func getName() -> String? {
        return name
    }
    
    func getBirthDay() -> Date {
        return birthDay
    }
    
    func getAge() -> Int {
        let calendar = Calendar.current
        guard let age = calendar.dateComponents([.year], from: birthDay, to: Date()).year else{
            return 0
        }
        return age
    }
}
