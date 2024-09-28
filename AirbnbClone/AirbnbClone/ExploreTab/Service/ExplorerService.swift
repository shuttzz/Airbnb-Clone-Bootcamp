//
//  ExplorerService.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 25/09/24.
//

import Foundation
class ExploreService {
    static func fetchCategoryList(completion: @escaping (Result<[TravelCategory], NetworkError>) -> Void) {
        let request = APIRequest(url: "https://run.mocky.io/v3/808d6c95-06c1-48e8-ac22-bc1a0541a0fd")
        // Nesse caso podemos fazer de 2 formas
        // 1 -> mais simples o entendimento, porem retornando o mesmo que o outro completion
        //    APIClient.shared.request(request: request, decodeType: [TravelCategory].self) { result in
        //      switch result {
        //      case .success(let success):
        //        completion(.success(success))
        //      case .failure(let failure):
        //        completion(.failure(failure))
        //      }
        //    }
        // 2 -> bem mais difícil o entendimento, porem economizando bastante linhas desnecessárias!
        APIClient.shared.request(request: request, decodeType: [TravelCategory].self, completion: completion)
    }
    
    static func fetchPropertyDataModelList(completion: @escaping (Result<[PropertyDataModel], NetworkError>) -> Void) {
        let request = APIRequest(url: "https://run.mocky.io/v3/0c0e583a-a006-4c5c-9646-2d8a99c0e939")
        APIClient.shared.request(request: request, decodeType: [PropertyDataModel].self, completion: completion)
    }
}
