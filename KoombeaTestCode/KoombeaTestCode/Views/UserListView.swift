//
//  UserList.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import SwiftUI

struct UserListView: View {
    
    @Binding var userList: [UserModel]
    
    var body: some View {
        
        NavigationStack {
            
            List(userList) { user in
                
                NavigationLink(destination: UserDetailView(userModel: user)) {
                    
                    UserItemListView(userModel: user)
                }
            }
            .navigationTitle("User List")
        }
    }
}


