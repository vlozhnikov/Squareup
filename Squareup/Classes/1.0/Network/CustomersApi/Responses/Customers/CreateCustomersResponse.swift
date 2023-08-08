//
//  CreateCustomersResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class CreateCustomersResponse: SquareupResponse {
    
    /// - customer: The created customer.
    public var customer: Customer?
    
    enum CodingKeys: String, CodingKey {
        case customer = "customer"
    }
}
