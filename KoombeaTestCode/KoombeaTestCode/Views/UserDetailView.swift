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
        
        VStack(spacing: 15) {
            
            if let image = userModel.urlImage {
                AsyncImage(url: image){ image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(maxWidth: 150, maxHeight: 150)
                .clipShape(Circle())
                
            } else {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
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


