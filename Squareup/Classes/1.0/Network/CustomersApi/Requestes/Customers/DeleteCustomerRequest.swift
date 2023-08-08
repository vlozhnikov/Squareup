//
//  DeleteCustomerRequest.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class DeleteCustomerRequest: Codable {
    
    /// - Version: The current version of the customer profile.
    /// As a best practice, you should include this parameter to enable optimistic concurrency control. For more information, see Delete a customer profile.
    public var Version: Int?
    
    enum CodingKeys: String, CodingKey {
        case Version = "version"
    }
}
