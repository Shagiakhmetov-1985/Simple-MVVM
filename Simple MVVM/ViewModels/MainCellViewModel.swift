//
//  MainCellViewModel.swift
//  Simple MVVM
//
//  Created by Marat Shagiakhmetov on 26.02.2024.
//

import Foundation

class MainCellViewModel {
    var name: String
    var email: String
    
    init(_ user: Users) {
        self.name = user.username
        self.email = user.email
    }
}
