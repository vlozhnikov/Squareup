//
//  RegisterDomainResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class RegisterDomainResponse: SquareupResponse {
    
    /// - Status: The status of the domain registration.
    public var Status: RegisterDomainResponseStatus?
    
    enum CodingKeys: String, CodingKey {
        case Status = "status"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Status = try container.decodeIfPresent(RegisterDomainResponseStatus.self, forKey: .Status)
    }
}
