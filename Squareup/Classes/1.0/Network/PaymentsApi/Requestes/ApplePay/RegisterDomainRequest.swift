//
//  RegisterDomainRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

open class RegisterDomainRequest: Codable {
    
    /// - DomainName: A domain name as described in RFC-1034 that will be registered with ApplePay.
    /// Min Length 1
    /// Max Length 255
    public var DomainName: String?
    
    enum CodingKeys: String, CodingKey {
        case DomainName = "domain_name"
    }
}
