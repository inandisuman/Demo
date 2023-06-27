//
//  ItemCellView.swift
//  Demo
//
//  Created by Deboleena on 27/06/23.
//

import SwiftUI

struct ItemCellView: View {
    
    var item: Item
    
    var body: some View {
        Text(item.name)
    }
}
