//
//  FoodDetailView.swift
//  DeepLink
//
//  Created by brad on 1/2/24.
//

import SwiftUI

struct FoodDetailView: View {
    let food: Food
    
    init(food: Food) {
        self.food = food
    }
    
    var body: some View {
        List {
            
            Section {
                LabeledContent("Icon", value: food.name)
                LabeledContent("Name", value: food.title)
                LabeledContent {
                    Text(food.price,
                         format: .currency(code: Locale.current.currency?.identifier ?? ""))
                } label: {
                    Text("Price")
                }
            }
            Section("Description") {
                Text(food.description)
            }
        }
        .navigationTitle("Item")
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(food: foods[0])
    }
}
