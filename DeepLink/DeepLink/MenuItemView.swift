//
//  MenuItemView.swift
//  DeepLink
//
//  Created by brad on 1/2/24.
//

import SwiftUI

struct MenuItemView: View {
    let item: MenuItem
    
    init(item: MenuItem) {
        self.item = item
    }
    
    var body: some View {
        LabeledContent {
            Text(
                item.price,
                format: .currency(code: Locale.current.currency?.identifier ?? "")
            )
        } label: {
            Text("\(item.name) \(item.title)")
        }
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: foods[0])
            .previewLayout(.sizeThatFits)
    }
}
