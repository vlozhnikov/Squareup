//
//  RegisterDomainResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class RegisterDomainResponse: SquareupResponse {
    
    /// - Status: The status of the domain registration.
    var Status: RegisterDomainResponseStatus?
    
    enum CodingKeys: String, CodingKey {
        case Status = "status"
    }
}
