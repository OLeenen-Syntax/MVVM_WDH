//
//  NewContentView.swift
//  MVVM_WDH
//
//  Created by Okan Leenen on 11.03.24.
//

import Foundation
import SwiftUI

struct NewContentView: View {
    @ObservedObject private var viewModel = UserViewModel()
    
    var body: some View {
        VStack{
            Text("Benutzerliste:")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        List(viewModel.userModel.users, id: \.self) {
            user in Text(user)
        }
        HStack{
            TextField("Neuen Benutzer eingeben", text: $viewModel.userInput)
            
            Button(action: {
                self.viewModel.addUser()
            }){
                Text("Hinzufuegen")
            }
        }
    }
        
}


#Preview{
    NewContentView()
}
