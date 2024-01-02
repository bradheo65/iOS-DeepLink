//
//  ContentView.swift
//  DeepLink
//
//  Created by brad on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Foods") {
                    ForEach(foods) { food in
                        NavigationLink(value: food) {
                            MenuItemView(item: food)
                        }
                    }
                }
                
                Section("Dinks") {
                    ForEach(drinks) { drink in
                        NavigationLink(value: drink) {
                            MenuItemView(item: drink)
                        }
                    }
                }
                
                Section("Desserts") {
                    ForEach(desserts) { dessert in
                        NavigationLink(value: dessert) {
                            MenuItemView(item: dessert)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Menu")
            .navigationDestination(for: Food.self) { item in
                FoodDetailView(food: item)
            }
            .navigationDestination(for: Drink.self) { item in
                DrinkDetailView(drink: item)
            }
            .navigationDestination(for: Dessert.self) { item in
                DessertDetailView(dessert: item)
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Surprise Me") {
                        let items: [any Hashable] = foods + drinks + desserts
                        if let randomItem = items.randomElement() {
                            path.append(randomItem)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
