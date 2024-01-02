//
//  DessertDetailView.swift
//  DeepLink
//
//  Created by brad on 1/2/24.
//

import SwiftUI

struct DessertDetailView: View {
    let dessert: Dessert
    
    init(dessert: Dessert) {
        self.dessert = dessert
    }
    
    var body: some View {
        List {
            Section {
                LabeledContent("Icon", value: dessert.name)
                LabeledContent("Name", value: dessert.title)
                LabeledContent {
                    Text(dessert.price,
                         format: .currency(code: Locale.current.currency?.identifier ?? ""))
                } label: {
                    Text("Price")
                }
                LabeledContent("Cold?", value: dessert.isCold ? "✅" : "❌")
            }
            Section("Description") {
                Text(dessert.description)
            }
        }
        .navigationTitle("Item")
    }
}

#Preview {
    DessertDetailView(dessert: desserts[0])
}
