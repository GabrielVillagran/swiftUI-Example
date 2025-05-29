//
//  Character.swift
//  RickAndMortyAlamofire
//
//  Created by GenericDevGeorgia on 5/28/25.
//

import Foundation

struct ProductsInformation: Identifiable, Codable {
    let id: Int
    let productName: String
    let productPrice: Float
}

struct Products: Codable {
    let products: [ProductsInformation]
}
