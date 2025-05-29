import Foundation
import Alamofire

class ProductsService {
//    func fetchProducts(completion: @escaping ([ProductsInformation]) -> Void) {
//        let url = "http://localhost:8080/api/products/2"
//        
//        AF.request(url).responseDecodable(of: Products.self) { response in
//            switch response.result {
//            case .success(let productsResponse):
//                completion(productsResponse.products)
//            case .failure(let error):
//                completion([])
//            }
//        }
//    }
    
    func fetchProduct(id: String, completion: @escaping (ProductsInformation?) -> Void) {
        let url = "http://localhost:8080/api/products/\(id)"
        
        AF.request(url).responseDecodable(of: ProductsInformation.self) { response in
            switch response.result {
            case .success(let product):
                completion(product)
            case .failure(_):
                completion(nil)
            }
        }
    }
}
