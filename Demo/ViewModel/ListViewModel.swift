//
//  ListViewModel.swift
//  Demo
//
//  Created by Deboleena on 27/06/23.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var listItems = [Item]()
    
    func getAllItemsFromService() async {
        
        do {
            listItems = try await NetworkManager.shared.getAllItems()
        } catch {
            
        }
    }
}
