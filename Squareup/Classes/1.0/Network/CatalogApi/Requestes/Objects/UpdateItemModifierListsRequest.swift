//
//  UpdateItemModifierListsRequest.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

internal class UpdateItemModifierListsRequest: Codable {
    
    var ItemIds = [String]()
    var ModifierListsToDisable = [String]()
    var ModifierListsToEnable = [String]()
    
    enum CodingKeys: String, CodingKey {
        case ItemIds = "item_ids"
        case ModifierListsToDisable = "modifier_lists_to_disable"
        case ModifierListsToEnable = "modifier_lists_to_enable"
    }
}
