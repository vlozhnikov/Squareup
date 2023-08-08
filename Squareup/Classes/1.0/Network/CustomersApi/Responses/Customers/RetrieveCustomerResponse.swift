//
//  RetrieveCustomerResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class RetrieveCustomerResponse: SquareupResponse {
    
    /// - customer: The requested customer.
    public var customer: Customer?
    
    enum CodingKeys: String, CodingKey {
        case customer = "customer"
    }
}
