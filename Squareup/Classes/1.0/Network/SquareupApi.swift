//
//  SquareupApi.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 7.06.23.
//

import Foundation
import Alamofire

open class SquareupApi {
    
    internal init() {}
    
    private func encodedParameters<T: Codable>(request: T) -> Parameters? {
        
        let encoder = JSONEncoder()
        
        guard let jsonData = try? encoder.encode(request) else {
            return nil
        }
        guard let encoded = try? JSONSerialization.jsonObject(with: jsonData) as? Parameters else {
            return nil
        }
        
        return encoded
    }
    
    private func headers(with accessToken: String?) -> HTTPHeaders {
        var headers: HTTPHeaders =  ["Content-Type": "application/json",
                                     "Square-Version": SquareupConfigurer.shared.constants.VERSION,
                                     "Accept": "application/json"]
        
        if let accessToken = accessToken {
            headers ["Authorization"] = "Bearer \(accessToken)"
        }
        
        return headers
    }
    
    func request<T: SquareupResponse>(to url: String,
                                      method: HTTPMethod,
                                      encoding: ParameterEncoding = JSONEncoding.default,
                                      accessToken: String? = nil,
                                      request: Codable? = nil,
                                      printRequest: Bool = false,
                                      printResponse: Bool = false,
                                      completion: ((T) -> Void)? = nil,
                                      failed: ((Error) -> Void)? = nil) {
        
        guard let url = URL(string: "\(SquareupConfigurer.shared.constants.DOMAIN)/\(url)") else {
            failed?(StringError("Invalid URL."))
            return
        }
        
        let headers = headers(with: accessToken)
        var parameters: Parameters? = nil
        
        if let request = request {
            parameters = encodedParameters(request: request)
        }
        
        if let parameters = parameters, printRequest {
            print(parameters)
        }
        
        AF.request(url, method: method,
                   parameters: parameters,
                   encoding: encoding,
                   headers: headers).responseDecodable(of: T.self) { response in
            
            if printResponse {
                print(response)
            }
            
            switch response.result {
            case .failure(let error): failed?(error)
            case .success(let value):
                if let error = value.error {
                    print(error.error)
                    failed?(error.error)
                    return
                }
                completion?(value)
            }
        }
    }
    
    func upload<T: SquareupResponse>(to url: String,
                                   method: HTTPMethod = .post,
                                   image: UIImage,
                                   imageName: String,
                                   mimeType: String = "image/jpg",
                                   accessToken: String? = nil,
                                   request: Codable? = nil,
                                   printRequest: Bool = false,
                                   printResponse: Bool = false,
                                   completion: ((T) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
        
        guard let url = URL(string: "\(SquareupConfigurer.shared.constants.DOMAIN)/\(url)") else {
            failed?(StringError("Invalid URL."))
            return
        }
        
        let headers = headers(with: accessToken)
        var parameters: Parameters? = nil
        
        if let request = request {
            parameters = encodedParameters(request: request)
        }
        
        if let parameters = parameters, printRequest {
            print(parameters)
        }
        
        let imgData = image.jpegData(compressionQuality: 1.0)!
        
        AF.upload(multipartFormData: { formData in
            formData.append(imgData, withName: imageName, mimeType: mimeType)
            if let parameters = parameters {
                for (key, value) in parameters {
                    formData.append((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!, withName: key)
                }
            }
        }, to: url, method: .post, headers: headers)
        .responseDecodable(of: T.self) { response in
            switch response.result {
            case .failure(let error): failed?(error)
            case .success(let value):
                if let error = value.error {
                    print(error.error)
                    failed?(error.error)
                    return
                }
                completion?(value)
            }
        }
    }
}
