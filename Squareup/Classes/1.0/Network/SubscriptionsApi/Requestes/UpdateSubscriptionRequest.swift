//
//  UpdateSubscriptionRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class UpdateSubscriptionRequest: Codable {
    
    /// - subscription: The subscription object containing the current version, and fields to update. Unset fields will be left at their current server values, and JSON null values will be treated as a request to clear the relevant data.
    public var subscription: Subscription?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
    }
}
