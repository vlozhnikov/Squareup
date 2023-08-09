//
//  UpdateItemModifierListsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class UpdateItemModifierListsRequest: Codable {
    
    public var ItemIds = [String]()
    public var ModifierListsToDisable = [String]()
    public var ModifierListsToEnable = [String]()
    
    enum CodingKeys: String, CodingKey {
        case ItemIds = "item_ids"
        case ModifierListsToDisable = "modifier_lists_to_disable"
        case ModifierListsToEnable = "modifier_lists_to_enable"
    }
}
