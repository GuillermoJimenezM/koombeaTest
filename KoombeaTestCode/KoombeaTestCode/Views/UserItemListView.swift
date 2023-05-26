//
//  UserItemListView.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import SwiftUI

struct UserItemListView: View {
    
    var userModel: UserModel
    
    var body: some View {
       
        HStack {
            
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
            
            Spacer()
            
            VStack {
                Text(userModel.fullName)
                    .font(.title)
                
                Text(userModel.email)
            }
        }
        .padding(10)
        
    }
}

