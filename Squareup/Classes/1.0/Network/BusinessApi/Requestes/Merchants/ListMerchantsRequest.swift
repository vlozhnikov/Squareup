//
//  ListMerchantsRequest.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

internal class ListMerchantsRequest: Codable {
    
    /// - Cursor: The cursor generated by the previous response.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
    }
}
