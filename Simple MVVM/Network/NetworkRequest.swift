//
//  NetworkRequest.swift
//  Simple MVVM
//
//  Created by Marat Shagiakhmetov on 22.02.2024.
//

import Foundation

class NetworkRequest {
    static let shared = NetworkRequest()
    
    private init() {}
    
    func getData(completionHandle: @escaping (Result<Data, NetworkError>) -> Void) {
        URLSession.shared.request(.users) { data, _, error in
            DispatchQueue.main.async {
                if error != nil {
                    completionHandle(.failure(.urlError))
                } else {
                    guard let data else { return }
                    completionHandle(.success(data))
                }
            }
        }
    }
}
