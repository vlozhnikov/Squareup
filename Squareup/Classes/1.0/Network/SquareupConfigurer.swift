//
//  SquareupManager.swift
//  
//
//  Created by user on 5.06.23.
//

import Foundation
import Alamofire

open class SquareupConfigurer {
    
    public static let shared = SquareupConfigurer()
    
    internal init() {}
    
    // MARK: Properties
    
    internal struct CONSTANTS {
        var APPLICATION_ID: String? = nil
        var SQUARE_LOCATION_ID: String? = nil
        var VERSION = "2023-03-15"
        var DOMAIN_TYPE = DomainType.dev
        
        var DOMAIN: String {
            get {
                self.DOMAIN_TYPE == .dev ? "https://connect.squareupsandbox.com/v2" : "https://connect.squareup.com/v2"
            }
        }
    }
    
    public enum DomainType {
        case dev
        case prod
    }
    
    var constants = CONSTANTS()
    
    // MARK: Methods
    
    public func setup(applicationId: String,
               squareLocationId: String,
               version: String = "2023-03-15",
               type: DomainType = .dev) {
        
        self.constants.APPLICATION_ID = applicationId
        self.constants.SQUARE_LOCATION_ID = squareLocationId
        self.constants.VERSION = version
        self.constants.DOMAIN_TYPE = type
    }
}
