//
//  CharacterViewModel.swift
//  RickAndMortyAlamofire
//
//  Created by GenericDevGeorgia on 5/28/25.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var product: ProductsInformation?
    
    private let service = ProductsService()
    
    func loadProduct() {
        service.fetchProduct { [weak self] product in
            DispatchQueue.main.async {
                self?.product = product
            }
        }
    }
}
