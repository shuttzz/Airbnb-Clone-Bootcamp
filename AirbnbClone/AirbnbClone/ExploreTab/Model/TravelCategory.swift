//
//  TravelCategory.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 26/08/24.
//

import Foundation

struct TravelCategory: Codable {
    var image: String
    var category: String
    var isSelected: Bool = false
}

/*private var categoryList: [TravelCategory] = [
    TravelCategory(image: "ticket", category: "Icônicos", isSelected: true),
    TravelCategory(image: "house.and.flag.fill", category: "Chalés"),
    TravelCategory(image: "beach.umbrella", category: "Em frente à praia"),
    TravelCategory(image: "sun.horizon.fill", category: "Vistas incríveis"),
    TravelCategory(image: "fireworks", category: "Castelos"),
    TravelCategory(image: "flame", category: "Em alta"),
    TravelCategory(image: "tree", category: "Ilhas"),
    TravelCategory(image: "figure.pool.swim", category: "Lago"),
    TravelCategory(image: "sailboat", category: "Barcos"),
    TravelCategory(image: "snowflake", category: "Ártico"),
]*/
