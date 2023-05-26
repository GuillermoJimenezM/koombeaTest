//
//  UserClient.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import Foundation


protocol BaseUserProvider {
    
    func getUserList() async throws -> [UserModel]
}

struct UserBaseClient: BaseUserProvider {
    
    
    func getUserList() async throws -> [UserModel] {
        return try await ApiService.shared.get()
    }
}
