//
//  MenuListRow.swift
//  Menu
//
//  Created by Younuz Bin Noushad on 06/05/24.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    var body: some View {
        
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "test item", price: "2.99", imageName: "taklo"))
}
