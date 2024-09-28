//
//  APIRequest.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 24/09/24.
//

import Foundation

struct APIRequest {
    let url: String
    let method: HTTPMethod
    let headers: [String: String]?
    let params: Params?
    
    init(url: String, method: HTTPMethod = .get, headers: [String : String]? = nil, params: Params? = nil) {
        self.url = url
        self.method = method
        self.headers = headers
        self.params = params
    }
}
