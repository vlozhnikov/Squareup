//
//  UpdateCustomerResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class UpdateCustomerResponse: SquareupResponse {
    
    /// - customer: The created customer.
    public var customer: Customer?
    
    enum CodingKeys: String, CodingKey {
        case customer = "customer"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.customer = try container.decodeIfPresent(Customer.self, forKey: .customer)
    }
}
