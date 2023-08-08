//
//  InventoryApi.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation
import Alamofire

open class InventoryApi {
    
    public static let inventory = Inventory()
    
    fileprivate init() {}
    
    /// - Inventory: Programmatically manages a Square seller’s inventory of catalog items.
    /// The Inventory API allows you to programmatically manage inventory counts and inventory changes of products or services.
    /// https://developer.squareup.com/reference/square/inventory-api
    open class Inventory: SquareupApi {
        
        fileprivate override init() {}
        
        /// - retrieveInventoryAdjustment: Returns the InventoryAdjustment object with the provided adjustment_id.
        /// Permissions: INVENTORY_READ
        /// https://developer.squareup.com/reference/square/inventory-api/retrieve-inventory-adjustment
        public func retrieveInventoryAdjustment(adjustmentId: String,
                                         accessToken: String,
                                         completion: ((RetrieveInventoryAdjustmentResponse) -> Void)? = nil,
                                         failed: ((Error) -> Void)? = nil) {
            
            request(to: "inventory/adjustments/\(adjustmentId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - batchChangeInventory: Applies adjustments and counts to the provided item quantities.
        /// On success: returns the current calculated counts for all objects referenced in the request. On failure: returns a list of related errors.
        /// Permissions: INVENTORY_WRITE
        /// https://developer.squareup.com/reference/square/inventory-api/batch-change-inventory
        public func batchChangeInventory(changes: [InventoryChange],
                                  ignoreUnchangedCounts: Bool = true,
                                  idempotencyKey: String?,
                                  accessToken: String,
                                  completion: ((BatchChangeInventoryResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            let batchChangeInventoryRequest = Serializer.deserialize(BatchChangeInventoryRequest.self, [:])!
            
            batchChangeInventoryRequest.IdempotencyKey = idempotencyKey
            batchChangeInventoryRequest.Changes = changes
            batchChangeInventoryRequest.IgnoreUnchangedCounts = ignoreUnchangedCounts
            
            request(to: "inventory/changes/batch-create",
                    method: .post,
                    accessToken: accessToken,
                    request: batchChangeInventoryRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - batchRetrieveInventoryChanges: Returns historical physical counts and adjustments based on the provided filter criteria.
        /// Results are paginated and sorted in ascending order according their occurred_at timestamp (oldest first).
        /// BatchRetrieveInventoryChanges is a catch-all query endpoint for queries that cannot be handled by other, simpler endpoints.
        /// Permissions: INVENTORY_READ
        /// https://developer.squareup.com/reference/square/inventory-api/batch-retrieve-inventory-changes
        public func batchRetrieveInventoryChanges(catalogObjectIds: [String],
                                           locationIds: [String],
                                           types: [InventoryChangeType],
                                           states: [InventoryState],
                                           updatedAfter: Date?,
                                           updatedBefore: Date?,
                                           cursor: String?,
                                           limit: Int?,
                                           accessToken: String,
                                           completion: ((BatchRetrieveInventoryChangesResponse) -> Void)? = nil,
                                           failed: ((Error) -> Void)? = nil) {
            
            let batchRetrieveInventoryChangesRequest = Serializer.deserialize(BatchRetrieveInventoryChangesRequest.self, [:])!
            
            batchRetrieveInventoryChangesRequest.CatalogObjectIds = catalogObjectIds
            batchRetrieveInventoryChangesRequest.LocationIds = locationIds
            batchRetrieveInventoryChangesRequest.Types = types
            batchRetrieveInventoryChangesRequest.States = states
            batchRetrieveInventoryChangesRequest.UpdatedAfter = updatedAfter
            batchRetrieveInventoryChangesRequest.UpdatedBefore = updatedBefore
            batchRetrieveInventoryChangesRequest.Cursor = cursor
            batchRetrieveInventoryChangesRequest.Limit = limit
            
            request(to: "inventory/changes/batch-retrieve",
                    method: .post,
                    accessToken: accessToken,
                    request: batchRetrieveInventoryChangesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - batchRetrieveInventoryCounts: Returns current counts for the provided CatalogObjects at the requested Locations.
        /// Results are paginated and sorted in descending order according to their calculated_at timestamp (newest first).
        ///
        /// When updated_after is specified, only counts that have changed since that time (based on the server timestamp for the most recent change) are returned. This allows clients to perform a "sync" operation, for example in response to receiving a Webhook notification.
        ///
        /// Permissions: INVENTORY_READ
        /// https://developer.squareup.com/reference/square/inventory-api/batch-retrieve-inventory-counts
        public func batchRetrieveInventoryCounts(catalogObjectIds: [String],
                                          locationIds: [String],
                                          updatedAfter: Date?,
                                          cursor: String?,
                                          states: [InventoryState],
                                          limit: Int?,
                                          accessToken: String,
                                          completion: ((BatchRetrieveInventoryCountsResponse) -> Void)? = nil,
                                          failed: ((Error) -> Void)? = nil) {
            
            let batchRetrieveInventoryCountsRequest = Serializer.deserialize(BatchRetrieveInventoryCountsRequest.self, [:])!
            
            batchRetrieveInventoryCountsRequest.CatalogObjectIds = catalogObjectIds
            batchRetrieveInventoryCountsRequest.LocationIds = locationIds
            batchRetrieveInventoryCountsRequest.States = states
            batchRetrieveInventoryCountsRequest.UpdatedAfter = updatedAfter
            batchRetrieveInventoryCountsRequest.Cursor = cursor
            batchRetrieveInventoryCountsRequest.Limit = limit
            
            request(to: "inventory/counts/batch-retriev",
                    method: .post,
                    accessToken: accessToken,
                    request: batchRetrieveInventoryCountsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveInventoryPhysicalCount: Returns the InventoryPhysicalCount object with the provided physical_count_id.
        /// Permissions: INVENTORY_READ
        /// https://developer.squareup.com/reference/square/inventory-api/retrieve-inventory-physical-count
        public func retrieveInventoryPhysicalCount(physicalCountId: String,
                                            accessToken: String,
                                            completion: ((RetrieveInventoryPhysicalCountResponse) -> Void)? = nil,
                                            failed: ((Error) -> Void)? = nil) {
            
            request(to: "inventory/physical-counts/\(physicalCountId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveInventoryTransfer: Returns the InventoryTransfer object with the provided transfer_id.
        /// Permissions: INVENTORY_READ
        /// https://developer.squareup.com/reference/square/inventory-api/retrieve-inventory-transfer
        public func retrieveInventoryTransfer(transferId: String,
                                       accessToken: String,
                                       completion: ((RetrieveInventoryTransferResponse) -> Void)? = nil,
                                       failed: ((Error) -> Void)? = nil) {
            
            request(to: "inventory/transfers/\(transferId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveInventoryCount: Retrieves the current calculated stock count for a given CatalogObject at a given set of Locations.
        /// Responses are paginated and unsorted. For more sophisticated queries, use a batch endpoint.
        /// Permissions: INVENTORY_READ
        /// https://developer.squareup.com/reference/square/inventory-api/retrieve-inventory-count
        public func retrieveInventoryCount(catalogObjectId: String,
                                    locationIds: [String],
                                    cursor: String?,
                                    accessToken: String,
                                    completion: ((RetrieveInventoryCountResponse) -> Void)? = nil,
                                    failed: ((Error) -> Void)? = nil) {
            
            var retrieveInventoryCountRequest = Serializer.deserialize(RetrieveInventoryCountRequest.self, [:])!
            retrieveInventoryCountRequest.LocationIds = locationIds
            retrieveInventoryCountRequest.Cursor = cursor
            
            request(to: "inventory/\(catalogObjectId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveInventoryCountRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
