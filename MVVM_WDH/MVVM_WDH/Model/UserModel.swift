//
//  UserModel.swift
//  MVVM_WDH
//
//  Created by Okan Leenen on 11.03.24.
//

import Foundation


class UserModel: ObservableObject{
    @Published var users = ["Alice", "Laura", "Kevin"]
    
    func addUser(_ user: String){
        users.append(user)
    }
}
