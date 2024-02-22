//
//  MainViewModel.swift
//  Simple MVVM
//
//  Created by Marat Shagiakhmetov on 22.02.2024.
//

import Foundation

class MainViewModel {
    func numberOfSection() -> Int {
        1
    }
    
    func numberOfRows(_ section: Int) -> Int {
        10
    }
    
    func getUsers() {
        NetworkDataFetch.shared.fetchUsers { users, error in
            if error != nil {
                print("notify user")
            } else if let users {
                print(users.count)
            }
        }
    }
}
