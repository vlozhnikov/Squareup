//
//  ListDeviceCodesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class ListDeviceCodesResponse: SquareupResponse {
    
    /// - DeviceCodes: The queried DeviceCode.
    public var DeviceCodes: [DeviceCode]?
    
    enum CodingKeys: String, CodingKey {
        case DeviceCodes = "device_codes"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.DeviceCodes = try container.decodeIfPresent([DeviceCode].self, forKey: .DeviceCodes)
    }
}
