//
//  RetrieveSubscriptionRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class RetrieveSubscriptionRequest: Codable {
    
    /// - Include: A query parameter to specify related information to be included in the response.
    /// The supported query parameter values are:
    ///     actions: to include scheduled actions on the targeted subscription.
    public var Include: String?
    
    enum CodingKeys: String, CodingKey {
        case Include = "include"
    }
}
