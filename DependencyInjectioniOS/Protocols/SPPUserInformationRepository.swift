//
//  SPPUserInformationRepository.swift
//  DependencyInjectioniOS
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import Foundation

protocol SPPUserInformationRepository {
    func getName() -> String?
    func getBirthDay() -> Date
    func getAge() -> Int
}
