//
//  UserViewModel.swift
//  MVVM_WDH
//
//  Created by Okan Leenen on 11.03.24.
//

import Foundation

class UserViewModel: ObservableObject{
    @Published var userInput = ""
    
    var userModel = UserModel()
    
    func addUser(){
        userModel.addUser(userInput)
        userInput = ""
    }
}
