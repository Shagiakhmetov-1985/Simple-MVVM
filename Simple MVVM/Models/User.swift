//
//  User.swift
//  Simple MVVM
//
//  Created by Marat Shagiakhmetov on 22.02.2024.
//

import Foundation

struct User: Codable {
    let name: String
    let username: String
    let email: String
    let phone: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let suite: String
    let zipcode: String
}
