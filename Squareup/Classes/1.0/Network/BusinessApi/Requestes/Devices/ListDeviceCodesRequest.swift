//
//  ListDeviceCodesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class ListDeviceCodesRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.
    public var Cursor: String?
    /// - LocationId: If specified, only returns DeviceCodes of the specified location. Returns DeviceCodes of all locations if empty.
    public var LocationId: String?
    /// - ProductType: If specified, only returns DeviceCodes targeting the specified product type. Returns DeviceCodes of all product types if empty.
    public var productType: ProductType?
    /// - Status: If specified, returns DeviceCodes with the specified statuses. Returns DeviceCodes of status PAIRED and UNPAIRED if empty.
    public var Status: DeviceCodeStatus?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case LocationId = "location_id"
        case productType = "product_type"
        case Status = "status"
    }
}
