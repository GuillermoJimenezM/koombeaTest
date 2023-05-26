//
//  UsersViewModel.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import Foundation
import SwiftUI

@MainActor
final class UsersViewModel: ObservableObject {
    
    @Published var userList : [UserModel] = []
    
    func getUserList() {
        
        Task {
            let client = UserBaseClient()
            do {
                self.userList = try await client.getUserList()
                print(self.userList)
            }
            catch {
                print("an error occurred while fetching the data")
            }
        }
    }
}
