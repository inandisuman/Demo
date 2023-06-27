//
//  NetworkManager.swift
//  Demo
//
//  Created by Deboleena on 27/06/23.
//

import Foundation

enum APIError : Error {
    case invalidResposne
    case decodingError
    case invalidStatus
}

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func getAllItems<T: Decodable>() async throws -> [T] {
        
//        let (data, urlresposne) = try await URLSession.shared.data(from: URL(string: Constants.endpoint)!)
//
//        guard let urlresposne = urlresposne as? HTTPURLResponse else {
//            throw APIError.invalidResposne
//        }
//
//        if urlresposne.statusCode == 200 {
            //Decode
            
            //return try JSONDecoder().decode([T].self, from: data)
            
        if let url = Bundle.main.url(forResource: "LocalItems", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    let jsonData = try decoder.decode([T].self, from: data)
                    return jsonData
                } catch {
                    throw APIError.decodingError
                }
            } else {
                throw APIError.invalidResposne
            }
        
        }
}
