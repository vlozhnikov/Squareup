//
//  GetDeviceCodeResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class GetDeviceCodeResponse: SquareupResponse {
    
    /// - deviceCode: The queried DeviceCode.
    public var deviceCode: DeviceCode?
    
    enum CodingKeys: String, CodingKey {
        case deviceCode = "device_code"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deviceCode = try container.decodeIfPresent(DeviceCode.self, forKey: .deviceCode)
    }
}
