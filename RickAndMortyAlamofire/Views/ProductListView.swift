
import SwiftUI

struct ProductListView: View {
    @StateObject private var viewModel = ProductViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
            Text("Searching for product with ID: \(searchText)")
                .navigationTitle("Search products")
            
                if let product = viewModel.product {
                    Text(product.productName)
                    Text("Price: \(product.productPrice)")
                } else {
                    Text("Loading...")
                }
            }
        }
        .searchable(text: $searchText)
        .onChange(of: searchText){
            if let _ = Int(searchText), !searchText.isEmpty {
                viewModel.loadProduct(id: searchText)
            }
        }
    }
}

#Preview {
    ProductListView()
}
