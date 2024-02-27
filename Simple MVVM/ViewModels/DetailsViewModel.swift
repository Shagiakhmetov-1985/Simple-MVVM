//
//  DetailsViewModel.swift
//  Simple MVVM
//
//  Created by Marat Shagiakhmetov on 27.02.2024.
//

import Foundation

class DetailsViewModel {
    let name: String
    let username: String
    let email: String
    let phone: String
    
    let street: String
    let suite: String
    let zipcode: String
    
    init(user: User) {
        self.name = user.name
        self.username = user.username
        self.email = user.email
        self.phone = user.phone
        
        self.street = user.address.street
        self.suite = user.address.suite
        self.zipcode = user.address.zipcode
    }
}
