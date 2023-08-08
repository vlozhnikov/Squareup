//
//  RetrieveSubscriptionRequest.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

internal class RetrieveSubscriptionRequest: Codable {
    
    /// - Include: A query parameter to specify related information to be included in the response.
    /// The supported query parameter values are:
    ///     actions: to include scheduled actions on the targeted subscription.
    var Include: String?
    
    enum CodingKeys: String, CodingKey {
        case Include = "include"
    }
}
