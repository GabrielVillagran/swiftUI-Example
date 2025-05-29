//
//  CharacterListView.swift
//  RickAndMortyAlamofire
//
//  Created by GenericDevGeorgia on 5/28/25.
//
import SwiftUI

struct ProductListView: View {
    @StateObject private var viewModel = ProductViewModel()
    
    var body: some View {
        VStack {
            if let product = viewModel.product {
                Text(product.productName)
                Text("Price: \(product.productPrice)")
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            viewModel.loadProduct()
        }
    }
}

#Preview {
    ProductListView()
}
