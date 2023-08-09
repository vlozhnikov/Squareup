//
//  TeamApi.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 6.06.23.
//

import Foundation
import Alamofire

open class TeamApi {
    
    public static let team = Team()
    public static let labor = Labor()
    
    fileprivate init() {}
    
    /// - Team: Pull employee data into accounting and payroll systems with the Team API.
    /// The Team API allows applications to retrieve a roster of team members registered in the Square Point of Sale system, which can be useful in payroll and account contexts.
    /// The Team API is best used in conjunction with the Labor API, where you provide team member IDs to manage shifts, breaks, and wages.
    /// https://developer.squareup.com/reference/square/team-api
    open class Team: SquareupApi {
        
        fileprivate override init() {}
        
        /// - createTeamMember: Creates a single TeamMember object.
        /// The TeamMember object is returned on successful creates. You must provide the following values in your request to this endpoint:
        ///
        /// given_name
        /// family_name
        ///
        /// Learn about Troubleshooting the Team API.
        /// Permissions: EMPLOYEES_WRITE
        /// https://developer.squareup.com/reference/square/team-api/create-team-member
        public func createTeamMember(teamMember: TeamMember,
                              idempotencyKey: String?,
                              accessToken: String,
                              completion: ((CreateTeamMemberResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            let createTeamMemberRequest = Serializer.deserialize(CreateTeamMemberRequest.self, [:])!
            createTeamMemberRequest.IdempotencyKey = idempotencyKey
            createTeamMemberRequest.TeamMember = teamMember
            
            request(to: "team-members",
                    method: .post,
                    accessToken: accessToken,
                    request: createTeamMemberRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkCreateTeamMembers: Creates multiple TeamMember objects.
        /// The created TeamMember objects are returned on successful creates. This process is non-transactional and processes as much of the request as possible. If one of the creates in the request cannot be successfully processed, the request is not marked as failed, but the body of the response contains explicit error information for the failed create.
        ///
        /// Learn about Troubleshooting the Team API.
        /// Permissions: EMPLOYEES_WRITE
        /// https://developer.squareup.com/reference/square/team-api/bulk-create-team-members
        public func bulkCreateTeamMembers(teamMembers: [TeamMember],
                                   accessToken: String,
                                   completion: ((BulkCreateTeamMembersResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            
            let bulkCreateTeamMembersRequest = Serializer.deserialize(BulkCreateTeamMembersRequest.self, [:])!
            
            var dict = [String: CreateTeamMemberRequest]()
            teamMembers.forEach { teamMember in
                if let teamRequest = Serializer.deserialize(CreateTeamMemberRequest.self, [:]) {
                    teamRequest.TeamMember = teamMember
                    dict[UUID().uuidString] = teamRequest
                }
            }
            
            bulkCreateTeamMembersRequest.TeamMembers = dict
            
            request(to: "bulk-create",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkCreateTeamMembersRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - bulkUpdateTeamMembers: Updates multiple TeamMember objects.
        /// The updated TeamMember objects are returned on successful updates. This process is non-transactional and processes as much of the request as possible. If one of the updates in the request cannot be successfully processed, the request is not marked as failed, but the body of the response contains explicit error information for the failed update. Learn about Troubleshooting the Team API.
        /// Permissions: EMPLOYEES_WRITE
        /// https://developer.squareup.com/reference/square/team-api/bulk-update-team-members
        public func bulkUpdateTeamMembers(teamMembers: [TeamMember],
                                   accessToken: String,
                                   completion: ((BulkUpdateTeamMembersResponse) -> Void)? = nil,
                                   failed: ((Error) -> Void)? = nil) {
            
            let bulkUpdateTeamMembersRequest = Serializer.deserialize(BulkUpdateTeamMembersRequest.self, [:])!
            
            var dict = [String: CreateTeamMemberRequest]()
            teamMembers.forEach { teamMember in
                if let teamRequest = Serializer.deserialize(CreateTeamMemberRequest.self, [:]) {
                    teamRequest.TeamMember = teamMember
                    dict[UUID().uuidString] = teamRequest
                }
            }
            
            bulkUpdateTeamMembersRequest.TeamMembers = dict
            
            request(to: "bulk-update",
                    method: .post,
                    accessToken: accessToken,
                    request: bulkUpdateTeamMembersRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchTeamMembers: Returns a paginated list of TeamMember objects for a business.
        /// The list can be filtered by the following:
        ///
        /// location IDs
        /// status
        ///
        /// Permissions: EMPLOYEES_READ
        /// https://developer.squareup.com/reference/square/team-api/search-team-members
        public func searchTeamMembers(filter: SearchTeamMembersFilter?,
                               limit: Int?,
                               cursor: String?,
                               accessToken: String,
                               completion: ((SearchTeamMembersResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let searchTeamMembersRequest = Serializer.deserialize(SearchTeamMembersRequest.self, [:])!
            
            let query = Serializer.deserialize(SearchTeamMembersQuery.self, [:])
            query?.Filter = filter
            searchTeamMembersRequest.Query = query
            searchTeamMembersRequest.Limit = limit
            searchTeamMembersRequest.Cursor = cursor
            
            request(to: "team-members/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchTeamMembersRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveTeamMember: Retrieves a TeamMember object for the given TeamMember.id.
        /// Learn about Troubleshooting the Team API.
        /// Permissions: EMPLOYEES_READ
        /// https://developer.squareup.com/reference/square/team-api/retrieve-team-member
        public func retrieveTeamMember(teamMemberId: String,
                                accessToken: String,
                                completion: ((RetrieveTeamMemberResponse) -> Void)? = nil,
                                failed: ((Error) -> Void)? = nil) {
            
            request(to: "team-members/\(teamMemberId)",
                    method: .get,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateTeamMember: Updates a single TeamMember object.
        /// The TeamMember object is returned on successful updates. Learn about Troubleshooting the Team API.
        /// Permissions: EMPLOYEES_WRITE
        /// https://developer.squareup.com/reference/square/team-api/update-team-member
        public func updateTeamMember(teamMemberId: String,
                              teamMember: TeamMember,
                              accessToken: String,
                              completion: ((UpdateTeamMemberResponse) -> Void)? = nil,
                              failed: ((Error) -> Void)? = nil) {
            
            let updateTeamMemberRequest = Serializer.deserialize(UpdateTeamMemberRequest.self, [:])!
            updateTeamMemberRequest.TeamMember = teamMember
            
            request(to: "team-members/\(teamMemberId)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateTeamMemberRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - retrieveWageSetting: Retrieves a WageSetting object for a team member specified by TeamMember.id.
        /// Learn about Troubleshooting the Team API.
        /// Permissions: EMPLOYEES_READ
        /// https://developer.squareup.com/reference/square/team-api/retrieve-wage-setting
        public func retrieveWageSetting(teamMemberId: String,
                                 accessToken: String,
                                 completion: ((RetrieveWageSettingResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            request(to: "team-members/\(teamMemberId)/wage-setting",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateWageSetting: Creates or updates a WageSetting object.
        /// The object is created if a WageSetting with the specified team_member_id does not exist. Otherwise, it fully replaces the WageSetting object for the team member. The WageSetting is returned on a successful update. Learn about Troubleshooting the Team API.
        /// Permissions: EMPLOYEES_WRITE
        /// https://developer.squareup.com/reference/square/team-api/update-wage-setting
        public func updateWageSetting(teamMemberId: String,
                               wageSetting: WageSetting,
                               accessToken: String,
                               completion: ((UpdateWageSettingResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            let updateWageSettingRequest = Serializer.deserialize(UpdateWageSettingRequest.self, [:])!
            updateWageSettingRequest.wageSetting = wageSetting
            
            request(to: "team-members/\(teamMemberId)/wage-setting",
                    method: .put,
                    accessToken: accessToken,
                    request: updateWageSettingRequest,
                    completion: completion,
                    failed: failed)
        }
    }
    
    /// - Labor: Manage shifts, breaks, and wages for employees in Square Point of Sale.
    /// The Labor API allows you to see when employees clocked in and out, how much they worked during different periods, and how many breaks they took. You can also call the API to register a past break, adjust a shift, or update a wage.
    /// This API is best used in conjunction with the Team API.
    /// https://developer.squareup.com/reference/square/labor-api
    open class Labor: SquareupApi {
        
        fileprivate override init() {}
        
        /// - listBreakTypes: Returns a paginated list of BreakType instances for a business.
        /// Permissions:TIMECARDS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/labor-api/list-break-types
        public func listBreakTypes(locationId: String,
                            limit: Int?,
                            cursor: String?,
                            accessToken: String,
                            completion: ((ListBreakTypesResponse) -> Void)? = nil,
                            failed: ((Error) -> Void)? = nil) {
            
            let listBreakTypesRequest = Serializer.deserialize(ListBreakTypesRequest.self, [:])!
            
            listBreakTypesRequest.LocationId = locationId
            listBreakTypesRequest.Limit = limit
            listBreakTypesRequest.Cursor = cursor
            
            request(to: "labor/break-types",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listBreakTypesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createBreakType: Creates a new BreakType.
        /// A BreakType is a template for creating Break objects. You must provide the following values in your request to this endpoint:
        ///
        /// location_id
        /// break_name
        /// expected_duration
        /// is_paid
        ///
        /// You can only have three BreakType instances per location. If you attempt to add a fourth BreakType for a location, an INVALID_REQUEST_ERROR "Exceeded limit of 3 breaks per location." is returned.
        /// Permissions:TIMECARDS_SETTINGS_WRITE
        /// https://developer.squareup.com/reference/square/labor-api/create-break-type
        public func createBreakType(idempotencyKey: String?,
                             breakType: BreakType?,
                             accessToken: String,
                             completion: ((CreateBreakTypeResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            let createBreakTypeRequest = Serializer.deserialize(CreateBreakTypeRequest.self, [:])!
            
            createBreakTypeRequest.IdempotencyKey = idempotencyKey
            createBreakTypeRequest.breakType = breakType
            
            request(to: "labor/break-types",
                    method: .post,
                    accessToken: accessToken,
                    request: createBreakTypeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteBreakType: Deletes an existing BreakType.
        /// A BreakType can be deleted even if it is referenced from a Shift.
        /// Permissions:TIMECARDS_SETTINGS_WRITE
        /// https://developer.squareup.com/reference/square/labor-api/delete-break-type
        public func deleteBreakType(id: String,
                             accessToken: String,
                             completion: ((SquareupResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            request(to: "labor/break-types/\(id)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getBreakType: Returns a single BreakType specified by id.
        /// Permissions:TIMECARDS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/labor-api/get-break-type
        public func getBreakType(id: String,
                          accessToken: String,
                          completion: ((GetBreakTypeResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            request(to: "labor/break-types/\(id)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateBreakType: Updates an existing BreakType.
        /// Permissions:TIMECARDS_SETTINGS_WRITE, TIMECARDS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/labor-api/update-break-type
        public func updateBreakType(id: String,
                             breakType: BreakType?,
                             accessToken: String,
                             completion: ((UpdateBreakTypeResponse) -> Void)? = nil,
                             failed: ((Error) -> Void)? = nil) {
            
            let updateBreakTypeRequest = Serializer.deserialize(UpdateBreakTypeRequest.self, [:])!
            updateBreakTypeRequest.breakType = breakType
            
            request(to: "labor/break-types/\(id)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateBreakTypeRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - createShift: Creates a new Shift.
        /// A Shift represents a complete workday for a single employee. You must provide the following values in your request to this endpoint:
        ///
        /// location_id
        /// employee_id
        /// start_at
        ///
        /// An attempt to create a new Shift can result in a BAD_REQUEST error when:
        ///
        /// The status of the new Shift is OPEN and the employee has another shift with an OPEN status.
        /// The start_at date is in the future.
        /// The start_at or end_at date overlaps another shift for the same employee.
        /// The Break instances are set in the request and a break start_at is before the Shift.start_at, a break end_at is after the Shift.end_at, or both.
        ///
        /// Permissions:TIMECARDS_WRITE
        /// https://developer.squareup.com/reference/square/labor-api/create-shift
        public func createShift(idempotencyKey: String?,
                         shift: Shift?,
                         accessToken: String,
                         completion: ((CreateShiftResponse) -> Void)? = nil,
                         failed: ((Error) -> Void)? = nil) {
            
            let createShiftRequest = Serializer.deserialize(CreateShiftRequest.self, [:])!
            
            createShiftRequest.IdempotencyKey = idempotencyKey
            createShiftRequest.shift = shift
            
            request(to: "labor/shifts",
                    method: .post,
                    accessToken: accessToken,
                    request: createShiftRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - searchShifts: Returns a paginated list of Shift records for a business.
        /// The list to be returned can be filtered by:
        ///
        /// Location IDs.
        /// Employee IDs.
        /// Shift status (OPEN and CLOSED).
        /// Shift start.
        /// Shift end.
        /// Workday details.
        ///
        /// The list can be sorted by:
        /// start_at.
        /// end_at.
        /// created_at.
        /// updated_at.
        /// Permissions:TIMECARDS_READ
        /// https://developer.squareup.com/reference/square/labor-api/search-shifts
        public func searchShifts(query: ShiftQuery?,
                          limit: Int?,
                          cursor: String?,
                          accessToken: String,
                          completion: ((SearchShiftsResponse) -> Void)? = nil,
                          failed: ((Error) -> Void)? = nil) {
            
            let searchShiftsRequest = Serializer.deserialize(SearchShiftsRequest.self, [:])!
            
            searchShiftsRequest.Query = query
            searchShiftsRequest.Limit = limit
            
            request(to: "labor/shifts/search",
                    method: .post,
                    accessToken: accessToken,
                    request: searchShiftsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - deleteShift: Deletes a Shift.
        /// Permissions:TIMECARDS_WRITE
        /// https://developer.squareup.com/reference/square/labor-api/delete-shift
        public func deleteShift(id: String,
                         accessToken: String,
                         completion: ((SquareupResponse) -> Void)? = nil,
                         failed: ((Error) -> Void)? = nil) {
            
            request(to: "labor/shifts/\(id)",
                    method: .delete,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getShift: Returns a single Shift specified by id.
        /// Permissions:TIMECARDS_READ
        /// https://developer.squareup.com/reference/square/labor-api/get-shift
        public func getShift(id: String,
                      accessToken: String,
                      completion: ((GetShiftResponse) -> Void)? = nil,
                      failed: ((Error) -> Void)? = nil) {
            
            request(to: "labor/shifts/\(id)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateShift: Updates an existing Shift.
        /// When adding a Break to a Shift, any earlier Break instances in the Shift have the end_at property set to a valid RFC-3339 datetime string.
        ///
        /// When closing a Shift, all Break instances in the Shift must be complete with end_at set on each Break.
        /// Permissions:TIMECARDS_WRITE, TIMECARDS_READ
        /// https://developer.squareup.com/reference/square/labor-api/update-shift
        public func updateShift(id: String,
                         shift: Shift?,
                         accessToken: String,
                         completion: ((UpdateShiftResponse) -> Void)? = nil,
                         failed: ((Error) -> Void)? = nil) {
            
            let updateShiftRequest = Serializer.deserialize(UpdateShiftRequest.self, [:])!
            updateShiftRequest.shift = shift
            
            request(to: "labor/shifts/\(id)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateShiftRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listTeamMemberWages: Returns a paginated list of TeamMemberWage instances for a business.
        /// Permissions:EMPLOYEES_READ
        /// https://developer.squareup.com/reference/square/labor-api/list-team-member-wages
        public func listTeamMemberWages(teamMemberId: String?,
                                 limit: Int?,
                                 cursor: String?,
                                 accessToken: String,
                                 completion: ((ListTeamMemberWagesResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let listTeamMemberWagesRequest = Serializer.deserialize(ListTeamMemberWagesRequest.self, [:])!
            
            listTeamMemberWagesRequest.TeamMemberId = teamMemberId
            listTeamMemberWagesRequest.Limit = limit
            listTeamMemberWagesRequest.Cursor = cursor
            
            request(to: "labor/team-member-wages",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listTeamMemberWagesRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - getTeamMemberWage: Returns a single TeamMemberWage specified by id.
        /// Permissions:EMPLOYEES_READ
        /// https://developer.squareup.com/reference/square/labor-api/get-team-member-wage
        public func getTeamMemberWage(id: String,
                               accessToken: String,
                               completion: ((GetTeamMemberWageResponse) -> Void)? = nil,
                               failed: ((Error) -> Void)? = nil) {
            
            request(to: "labor/team-member-wages/\(id)",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    completion: completion,
                    failed: failed)
        }
        
        /// - listWorkweekConfigs: Returns a list of WorkweekConfig instances for a business.
        /// Permissions:TIMECARDS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/labor-api/list-workweek-configs
        public func listWorkweekConfigs(limit: Int?,
                                 cursor: String?,
                                 accessToken: String,
                                 completion: ((ListWorkweekConfigsResponse) -> Void)? = nil,
                                 failed: ((Error) -> Void)? = nil) {
            
            let listWorkweekConfigsRequest = Serializer.deserialize(ListWorkweekConfigsRequest.self, [:])!
            
            listWorkweekConfigsRequest.Limit = limit
            listWorkweekConfigsRequest.Cursor = cursor
            
            request(to: "labor/workweek-configs",
                    method: .get,
                    encoding: URLEncoding.queryString,
                    accessToken: accessToken,
                    request: listWorkweekConfigsRequest,
                    completion: completion,
                    failed: failed)
        }
        
        /// - updateWorkweekConfig: Updates a WorkweekConfig.
        /// Permissions:TIMECARDS_SETTINGS_WRITE, TIMECARDS_SETTINGS_READ
        /// https://developer.squareup.com/reference/square/labor-api/update-workweek-config
        public func updateWorkweekConfig(id: String,
                                  workweekConfig: WorkweekConfig?,
                                  accessToken: String,
                                  completion: ((UpdateWorkweekConfigResponse) -> Void)? = nil,
                                  failed: ((Error) -> Void)? = nil) {
            
            let updateWorkweekConfigRequest = Serializer.deserialize(UpdateWorkweekConfigRequest.self, [:])!
            updateWorkweekConfigRequest.workweekConfig = workweekConfig
            
            request(to: "labor/workweek-configs/\(id)",
                    method: .put,
                    accessToken: accessToken,
                    request: updateWorkweekConfigRequest,
                    completion: completion,
                    failed: failed)
        }
    }
}
