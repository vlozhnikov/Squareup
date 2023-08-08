//
//  UpdateCustomerResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class UpdateCustomerResponse: SquareupResponse {
    
    /// - customer: The created customer.
    var customer: Customer?
    
    enum CodingKeys: String, CodingKey {
        case customer = "customer"
    }
}
