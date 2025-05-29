import Foundation

class ProductViewModel: ObservableObject {
    @Published var product: ProductsInformation?
    
    private let service = ProductsService()
    
    func loadProduct(id: String) {
        service.fetchProduct(id: id) { [weak self] product in
            DispatchQueue.main.async {
                self?.product = product
            }
        }
    }
}
