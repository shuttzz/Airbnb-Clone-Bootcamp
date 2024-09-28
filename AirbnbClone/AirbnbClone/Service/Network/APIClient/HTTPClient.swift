//
//  HTTPClient.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 24/09/24.
//

import Foundation

protocol HTTPClient {
    func request<T: Decodable>(request: APIRequest, decodeType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void)
}
