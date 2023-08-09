//
//  ListDisputesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.07.23.
//

import Foundation

open class ListDisputesRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see Pagination.
    public var Cursor: String?
    /// - States: The dispute states used to filter the result. If not specified, the endpoint returns all disputes.
    public var States: DisputeState?
    /// - LocationId: The ID of the location for which to return a list of disputes. If not specified, the endpoint returns disputes associated with all locations.
    public var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case States = "states"
        case LocationId = "location_id"
    }
}
