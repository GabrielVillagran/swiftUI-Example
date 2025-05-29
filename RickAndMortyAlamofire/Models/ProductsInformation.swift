import Foundation

struct ProductsInformation: Identifiable, Codable {
    let id: Int
    let productName: String
    let productPrice: Float
}

struct Products: Codable {
    let products: [ProductsInformation]
}
