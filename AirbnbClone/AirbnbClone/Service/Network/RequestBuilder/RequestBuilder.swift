//
//  RequestB.swift
//  AirbnbClone
//
//  Created by José Assis de Menezes Neto on 24/09/24.
//

import Foundation

protocol RequestBuilder {
    func buildRequest(request: APIRequest, baseURL: String, timeout: TimeInterval) -> URLRequest?
}

struct DefaultRequestBuilder: RequestBuilder {
    func buildRequest(request: APIRequest, baseURL: String, timeout: TimeInterval) -> URLRequest? {
        let completeURLString = baseURL + request.url
        
        guard let url = URL(string: completeURLString) else { return nil }
        
        var completeRequest = URLRequest(url: url)
        completeRequest.httpMethod = request.method.rawValue
        completeRequest.allHTTPHeaderFields = request.headers
        completeRequest.timeoutInterval = timeout
        
        if let params = request.params {
            switch params {
            case .dictionary(let dictionary):
                completeRequest.httpBody = try? JSONSerialization.data(withJSONObject: dictionary)
            case .encodable(let encodable):
                completeRequest.httpBody = try? JSONEncoder().encode(encodable)
            }
        }
        
        return completeRequest
    }
}
