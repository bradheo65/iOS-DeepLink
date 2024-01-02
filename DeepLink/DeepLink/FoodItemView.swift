//
//  FoodItemView.swift
//  DeepLink
//
//  Created by brad on 1/2/24.
//

import SwiftUI

struct FoodItemView: View {
    let food: Food
    
    init(food: Food) {
        self.food = food
    }
    
    var body: some View {
        LabeledContent {
            Text(food.price,
                 format: .currency(code: Locale.current.currency?.identifier ?? ""))
        } label: {
            Text("\(food.name) \(food.title)")
        }
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView(food: foods[0])
            .previewLayout(.sizeThatFits)
    }
}
