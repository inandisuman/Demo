//
//  ContentView.swift
//  Demo
//
//  Created by Deboleena on 27/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var listViewModel = ListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listViewModel.listItems, id: \.self) { item in
                    NavigationLink {
                        // go to next page
                    } label: {
                        ItemCellView(item: item)
                    }
                }
            }
        }.task {
            await listViewModel.getAllItemsFromService()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
