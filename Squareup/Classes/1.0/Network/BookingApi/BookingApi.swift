//
//  BookingApi.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 7.06.23.
//

import Foundation
import Alamofire

open class BookingApi {
    
    public static let bookings = Bookings()
    public static let customAttributes = BookingCustomAttributes()
    
    fileprivate init() {}
    
    /// - Bookings: Create and manage bookings for Square sellers.
    /// The Bookings API allows you to create, retrieve, update, and cancel appointments online. When used with other Square APIs (such as the Locations API, Team API, Catalog API, and Customers API), the Bookings API lets you create online-booking applications for users to book services provided by Square sellers.
    /// https://developer.squareup.com/reference/square/bookings-api
    open class Bookings: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listBooking: Retrieve a collection of bookings.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_READ for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
        /// Permissions: APPOINTMENTS_READ
        /// https://developer.squareup.com/reference/square/bookings-api/list-bookings
        public func listBooking(limit: Int? = nil,
                         cursor: String? = nil,
                         teamMemberId: String? = nil,
                         locationId: String?,
                         startAtMin: Date? = nil,
                         startAtMax: Date? = nil,
                         accessToken: String,
                         completion: ((ListBookingResponse) -> Void)? = nil,
                         failed: ((Error) -> Void)? = nil) {
            
            let listBookingRequest = Serializer.deserialize(ListBookingRequest.self, [:])!
            
            listBookingRequest.Limit = limit
            listBookingRequest.Cursor = cursor
            listBookingRequest.TeamMemberId = teamMemberId
            listBookingRequest.LocationId = locationId
            listBookingRequest.StartAtMin = startAtMin
            listBookingRequest.StartAtMax = startAtMax
            
            request(to: "bookings",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listBookingRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createBooking: Creates a booking.
        /// The required input must include the following:
        ///
        /// Booking.location_id
        /// Booking.start_at
        /// Booking.team_member_id
        /// Booking.AppointmentSegment.service_variation_id
        /// Booking.AppointmentSegment.service_variation_version
        ///
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/bookings-api/create-booking
        public func createBooking(booking: Booking,
                           idempotencyKey: String?,
                           accessToken: String,
                           completion: ((CreateBookingResponse) -> Void)? = nil,
                           failed: ((Error) -> Void)? = nil) {
            
            let createBookingRequest = Serializer.deserialize(CreateBookingRequest.self, [:])!
            
            createBookingRequest.IdempotencyKey = idempotencyKey
            createBookingRequest.booking = booking
            
            request(to: "bookings",
                    method: .post,
                    accessToken: accessToken,
                    request: createBookingRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// -searchaAvailability: Searches for availabilities for booking.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_READ for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
        /// Permissions: APPOINTMENTS_READ
        /// https://developer.squareup.com/reference/square/bookings-api/search-availability
        public func searchaAvailability(query: SearchAvailabilityQuery,
                                 accessToken: String,
                                 completion: ((SearchAvailabilityResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let searchAvailabilityRequest = Serializer.deserialize(SearchAvailabilityRequest.self, [:])!
            searchAvailabilityRequest.Query = query
            
            request(to: "bookings/availability/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchAvailabilityRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveBusinessBookingProfile: Retrieves a seller's booking profile.
        /// Permissions: APPOINTMENTS_BUSINESS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/bookings-api/retrieve-business-booking-profile
        public func retrieveBusinessBookingProfile(accessToken: String,
                                            completion: ((RetrieveBusinessBookingProfileResponse) -> Void)? = nil,
                                            failed: ((Error) -> Void)? = nil) {
            
            request(to: "bookings/business-booking-profile",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listTeamMemberBookingProfiles: Lists booking profiles for team members.
        /// Permissions: APPOINTMENTS_BUSINESS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/bookings-api/list-team-member-booking-profiles
        public func listTeamMemberBookingProfiles(bookableOnly: Bool? = nil,
                                           limit: Int? = nil,
                                           cursor: String? = nil,
                                           locationId: String,
                                           accessToken: String,
                                           completion: ((ListTeamMemberBookingProfilesResponse) -> Void)? = nil,
                                           failed: ((Error) -> Void)? = nil) {
            
            let listTeamMemberBookingProfilesRequest = Serializer.deserialize(ListTeamMemberBookingProfilesRequest.self, [:])!
            
            listTeamMemberBookingProfilesRequest.BookableOnly = bookableOnly
            listTeamMemberBookingProfilesRequest.Limit = limit
            listTeamMemberBookingProfilesRequest.Cursor = cursor
            listTeamMemberBookingProfilesRequest.LocationId = locationId
            
            request(to: "bookings/team-member-booking-profiles",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listTeamMemberBookingProfilesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retriveTeamMemberBookingProfile: Retrieves a team member's booking profile.
        /// Permissions: APPOINTMENTS_BUSINESS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/bookings-api/retrieve-team-member-booking-profile
        public func retriveTeamMemberBookingProfile(teamMemberId: String,
                                             accessToken: String,
                                             completion: ((RetriveTeamMemberBookingProfileResponse) -> Void)? = nil,
                                             failed: ((Error) -> Void)? = nil) {
            
            request(to: "bookings/team-member-booking-profiles/\(teamMemberId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retriveBoooking: Retrieves a booking.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_READ for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
        /// Permissions: APPOINTMENTS_READ
        /// https://developer.squareup.com/reference/square/bookings-api/retrieve-booking
        public func retriveBoooking(bookingId: String,
                             accessToken: String,
                             completion: ((RetrieveBookingResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            request(to: "bookings/\(bookingId)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateBoooking: Updates a booking.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        ///
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/bookings-api/update-booking
        public func updateBoooking(bookingId: String,
                            booking: Booking,
                            idempotencyKey: String?,
                            accessToken: String,
                            completion: ((UpdateBookingResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let updateBookingRequest = Serializer.deserialize(UpdateBookingRequest.self, [:])!
            updateBookingRequest.IdempotencyKey = idempotencyKey
            updateBookingRequest.booking = booking
            
            request(to: "bookings/\(bookingId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateBookingRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateBoooking: Cancels an existing booking.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        ///
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/bookings-api/cancel-booking
        public func cancelBoooking(bookingId: String,
                            bookingVersion: Int,
                            idempotencyKey: String?,
                            accessToken: String,
                            completion: ((CancelBookingResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let cancelBookingRequest = Serializer.deserialize(CancelBookingRequest.self, [:])!
            cancelBookingRequest.IdempotencyKey = idempotencyKey
            cancelBookingRequest.BookingVersion = bookingVersion
            
            request(to: "bookings/\(bookingId)",
                    method: .post,
                    accessToken: accessToken,
                    request: cancelBookingRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - BookingCustomAttributes: Create and manage booking-related custom attribute definitions and custom attributes.
    /// Use the Booking Custom Attributes API to create and manage custom attributes for bookings to store properties or metadata to support seller-specific customizations of and extensions to the Booking object.
    /// https://developer.squareup.com/reference/square/booking-custom-attributes-api
    open class BookingCustomAttributes: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listBookingCustomAttributeDefinitions: Get all bookings custom attribute definitions.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_READ for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
        /// Permissions: APPOINTMENTS_READ
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/list-booking-custom-attribute-definitions
        public func listBookingCustomAttributeDefinitions(limit: Int?,
                                                   cursor: String?,
                                                   accessToken: String,
                                                   completion: ((ListBookingCustomAttributeDefinitionsResponse) -> Void)? = nil,
                                                   failed: ((Error) -> Void)? = nil) {
            
            let listBookingCustomAttributeDefinitionsRequest = Serializer.deserialize(ListBookingCustomAttributeDefinitionsRequest.self, [:])!
            
            listBookingCustomAttributeDefinitionsRequest.Limit = limit
            listBookingCustomAttributeDefinitionsRequest.Cursor = cursor
            
            request(to: "bookings/custom-attribute-definitions",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listBookingCustomAttributeDefinitionsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createBookingCustomAttributeDefinition: Creates a bookings custom attribute definition.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/create-booking-custom-attribute-definition
        public func createBookingCustomAttributeDefinition(customAttributeDefinition: CustomAttributeDefinition,
                                                    idempotencyKey: String,
                                                    accessToken: String,
                                                    completion: ((CreateBookingCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            let createBookingCustomAttributeDefinitionRequest = Serializer.deserialize(CreateBookingCustomAttributeDefinitionRequest.self, [:])!
            
            createBookingCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            createBookingCustomAttributeDefinitionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "bookings/custom-attribute-definitions",
                    method: .post,
                    accessToken: accessToken,
                    request: createBookingCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteBookingCustomAttributeDefinition: Deletes a bookings custom attribute definition.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/delete-booking-custom-attribute-definition
        public func deleteBookingCustomAttributeDefinition(key: String,
                                                    accessToken: String,
                                                    completion: ((SquareupResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            request(to: "bookings/custom-attribute-definitions/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveBookingCustomAttribute: Retrieves a bookings custom attribute definition.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_READ for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
        /// Permissions: APPOINTMENTS_READ
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/retrieve-booking-custom-attribute-definition
        public func retrieveBookingCustomAttributeDefinition(key: String,
                                                      version: Int,
                                                      accessToken: String,
                                                      completion: ((RetrieveBookingCustomAttributeDefinition) -> Void)? = nil,
                                                      failed: ((Error) -> Void)? = nil) {
            
            let retrieveBookingCustomAttributeDefinitionRequest = Serializer.deserialize(RetrieveBookingCustomAttributeDefinitionRequest.self, [:])!
            retrieveBookingCustomAttributeDefinitionRequest.Version = version
            
            request(to: "bookings/custom-attribute-definitions/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveBookingCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateBookingCustomAttributeDefinition: Updates a bookings custom attribute definition.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/update-booking-custom-attribute-definition
        public func updateBookingCustomAttributeDefinition(key: String,
                                                    customAttributeDefinition: CustomAttributeDefinition,
                                                    idempotencyKey: String?,
                                                    accessToken: String,
                                                    completion: ((UpdateBookingCustomAttributeDefinitionResponse) -> Void)? = nil,
                                                    failed: ((Error) -> Void)? = nil) {
            
            let updateBookingCustomAttributeDefinitionRequest = Serializer.deserialize(UpdateBookingCustomAttributeDefinitionRequest.self, [:])!
            
            updateBookingCustomAttributeDefinitionRequest.customAttributeDefinition = customAttributeDefinition
            updateBookingCustomAttributeDefinitionRequest.IdempotencyKey = idempotencyKey
            
            request(to: "bookings/custom-attribute-definitions/\(key)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateBookingCustomAttributeDefinitionRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkDeleteBookingCustomAttributes: Bulk deletes bookings custom attributes.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/bulk-delete-booking-custom-attributes
        public func bulkDeleteBookingCustomAttributes(values: [String: BookingCustomAttributeDeleteRequest],
                                               accessToken: String,
                                               completion: ((BulkDeleteBookingCustomAttributesResponse) -> Void)? = nil,
                                               failed: ((Error) -> Void)? = nil) {
            
            let bulkDeleteBookingCustomAttributesRequest = Serializer.deserialize(BulkDeleteBookingCustomAttributesRequest.self, [:])!
            bulkDeleteBookingCustomAttributesRequest.Values = values
            
            request(to: "bookings/custom-attributes/bulk-delete",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkDeleteBookingCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkUpsertBookingCustomAttributes: Bulk upserts bookings custom attributes.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/bulk-upsert-booking-custom-attributes
        public func bulkUpsertBookingCustomAttributes(values: [String: BookingCustomAttributeUpsertRequest],
                                               accessToken: String,
                                               completion: ((BulkUpsertBookingCustomAttributesResponse) -> Void)? = nil,
                                               failed: ((Error) -> Void)? = nil) {
            
            let bulkUpsertBookingCustomAttributesRequest = Serializer.deserialize(BulkUpsertBookingCustomAttributesRequest.self, [:])!
            bulkUpsertBookingCustomAttributesRequest.Values = values
            
            request(to: "bookings/custom-attributes/bulk-upsert",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkUpsertBookingCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listBookingCustomAttributes: Lists a booking's custom attributes.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_READ for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
        /// Permissions: APPOINTMENTS_READ
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/list-booking-custom-attributes
        public func listBookingCustomAttributes(bookingId: String,
                                         limit: Int?,
                                         cursor: String?,
                                         withDefinitions: Bool?,
                                         accessToken: String,
                                         completion: ((ListBookingCustomAttributes) -> Void)? = nil,
                                         failed: ((Error) -> Void)? = nil) {
            
            let listBookingCustomAttributesRequest = Serializer.deserialize(ListBookingCustomAttributesRequest.self, [:])!
            
            listBookingCustomAttributesRequest.Limit = limit
            listBookingCustomAttributesRequest.Cursor = cursor
            listBookingCustomAttributesRequest.WithDefinitions = withDefinitions
            
            request(to: "bookings/\(bookingId)/custom-attributes",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listBookingCustomAttributesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteBookingCustomAttribute: Deletes a bookings custom attribute.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/delete-booking-custom-attribute
        public func deleteBookingCustomAttribute(bookingId: String,
                                          key: String,
                                          accessToken: String,
                                          completion: ((SquareupResponse) -> Void)? = nil,
                                          failed: ((Error) -> Void)? = nil) {
            
            request(to: "bookings/\(bookingId)/custom-attributes/\(key)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveBookingCustomAttribute: Retrieves a bookings custom attribute.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_READ for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
        /// Permissions: APPOINTMENTS_READ
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/retrieve-booking-custom-attribute
        public func retrieveBookingCustomAttribute(bookingId: String,
                                            key: String,
                                            withDefinitions: Bool?,
                                            version: Int?,
                                            accessToken: String,
                                            completion: ((RetrieveBookingCustomAttributeResponse) -> Void)? = nil,
                                            failed: ((Error) -> Void)? = nil) {
            
            let retrieveBookingCustomAttributeRequest = Serializer.deserialize(RetrieveBookingCustomAttributeRequest.self, [:])!
            
            retrieveBookingCustomAttributeRequest.WithDefinitions = withDefinitions
            retrieveBookingCustomAttributeRequest.Version = version
            
            request(to: "bookings/\(bookingId)/custom-attributes/\(key)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: retrieveBookingCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - upsertBookingCustomAttribute: Upserts a bookings custom attribute.
        /// To call this endpoint with buyer-level permissions, set APPOINTMENTS_WRITE for the OAuth scope. To call this endpoint with seller-level permissions, set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
        /// For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to Appointments Plus or Appointments Premium.
        /// Permissions: APPOINTMENTS_WRITE
        /// https://developer.squareup.com/reference/square/booking-custom-attributes-api/upsert-booking-custom-attribute
        public func upsertBookingCustomAttribute(bookingId: String,
                                          key: String,
                                          customAttribute: CustomAttribute?,
                                          idempotencyKey: String?,
                                          accessToken: String,
                                          completion: ((UpsertBookingCustomAttributeResponse) -> Void)? = nil,
                                          failed: ((Error) -> Void)? = nil) {
            
            let upsertBookingCustomAttributeRequest = Serializer.deserialize(UpsertBookingCustomAttributeRequest.self, [:])!
            
            upsertBookingCustomAttributeRequest.customAttribute = customAttribute
            upsertBookingCustomAttributeRequest.IdempotencyKey = idempotencyKey
            
            request(to: "bookings/\(bookingId)/custom-attributes/\(key)",
                    method: .put,
                    accessToken: accessToken,
                    request: upsertBookingCustomAttributeRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
