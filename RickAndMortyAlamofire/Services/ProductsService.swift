//
//  AlamofireService.swift
//  RickAndMortyAlamofire
//
//  Created by GenericDevGeorgia on 5/28/25.
//
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
    
    func fetchProduct(completion: @escaping (ProductsInformation?) -> Void) {
        let url = "http://localhost:8080/api/products/1"
        
        AF.request(url).responseDecodable(of: ProductsInformation.self) { response in
            switch response.result {
            case .success(let product):
                completion(product)
            case .failure(let error):
                completion(nil)
            }
        }
    }
}
