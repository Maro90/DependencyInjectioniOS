//
//  SPPViewModel.swift
//  DependencyInjectioniOS
//
//  Created by Mauro Gonzalez on 06/06/2020.
//  Copyright © 2020 Mauro Gonzalez. All rights reserved.
//

import Foundation

class SPPViewModel: SPPViewModelProtocol {
    let repository: SPPUserInformationRepository
    
    init(repository: SPPUserInformationRepository) {
        self.repository = repository
    }
    
    func getTitle() -> String {
        guard let name = self.repository.getName() else {
            return "Hola Amigo"
        }
        return "Hola \(name)"
    }
    
    func getUserAge() -> Int {
        return self.repository.getAge()
    }
}
