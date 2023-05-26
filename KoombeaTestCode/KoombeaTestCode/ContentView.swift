//
//  ContentView.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = UsersViewModel()
    
    var body: some View {
     
        VStack {
            UserListView(userList: $viewModel.userList)
              
        }
        .onAppear {
            print("loading")
            viewModel.getUserList()
        }
        
    }
}
