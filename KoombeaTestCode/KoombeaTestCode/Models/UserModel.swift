//
//  UserModel.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import Foundation

struct UserModel: Decodable, Identifiable, Hashable {
    
    let id: Int
    let firstName: String
    let lastName: String
    let username: String
    let email: String
    let gender: String
    let pictureURL: String
    let phone: String
    let birthday: String
    let twitterHandle: String
    
    
    
    var fullName: String {
        firstName + lastName
    }
    
    var urlImage: URL? {
        URL(string: pictureURL)
    }
    
}

