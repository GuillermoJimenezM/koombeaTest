//
//  APIService.swift
//  KoombeaTestCode
//
//  Created by Guillermo Jimenez on 26/5/23.
//

import Foundation

enum ApiError: Error {
    case invalidURL
    case tempError
    case fatal(message: String)
}

final class ApiService {
    
    static var shared: ApiService = ApiService()
    
    func get<T: Decodable>() async throws -> T {
        
        let url = try buildUrl("https://jserver-api.herokuapp.com/users")
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            let responseData = response as! HTTPURLResponse
            if(responseData.statusCode == 200) {
                
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let parsedResponseBody = try decoder.decode(T.self, from: data)
                
                
#if DEBUG
                print(parsedResponseBody)
#endif
                
                return parsedResponseBody
            }
            else {
                print(responseData.statusCode)
                throw ApiError.tempError
            }
        }
        catch {
            print(error)
            throw error
        }
    }

    
    fileprivate func buildUrl(_ url: String) throws -> URL {
         guard let parsedUrl = URL(string: url) else {
             throw ApiError.invalidURL
         }
     #if DEBUG
             print(parsedUrl)
     #endif
         return parsedUrl
     }
}
