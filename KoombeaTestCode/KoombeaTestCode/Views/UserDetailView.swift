//
//  UserDetailView.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import SwiftUI

struct UserDetailView: View {
    
    var userModel: UserModel
    
    var body: some View {
        
        VStack {
            
            if let image = userModel.urlImage {
                AsyncImage(url: image)
                     .frame(maxWidth: 50, maxHeight: 50)
                     .clipShape(Circle())

            } else {
               Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 50, maxHeight: 50)
            }
            
            Text(userModel.fullName)
                .foregroundColor(.blue)
                .font(.largeTitle)
            
            Text(userModel.email)
                .font(.title)
            
            Text(userModel.phone)
                .font(.title)
            
            Spacer()
            
        }
        .navigationTitle("User Detail")
        
    }
}


