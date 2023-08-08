//
//  BusinessAppointmentSettings.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

/// - BusinessAppointmentSettings: The service appointment settings, including where and how the service is provided.
/// https://developer.squareup.com/reference/square/objects/BusinessAppointmentSettings
open class BusinessAppointmentSettings: Codable {
    
    /// - LocationTypes: Types of the location allowed for bookings.
    var LocationTypes: [BusinessAppointmentSettingsBookingLocationType]?
    /// - AlignmentTime: The time unit of the service duration for bookings.
    var AlignmentTime: BusinessAppointmentSettingsAlignmentTime?
    /// - MinBookingLeadTimeSeconds: The minimum lead time in seconds before a service can be booked. Bookings must be created at least this far ahead of the booking's starting time.
    var MinBookingLeadTimeSeconds: Int?
    /// - MaxBookingLeadTimeSeconds: The maximum lead time in seconds before a service can be booked. Bookings must be created at most this far ahead of the booking's starting time.
    var MaxBookingLeadTimeSeconds: Int?
    /// - AnyTeamMemberBookingEnabled: Indicates whether a customer can choose from all available time slots and have a staff member assigned automatically (true) or not (false).
    var AnyTeamMemberBookingEnabled: Bool?
    /// - MultipleServiceBookingEnabled: Indicates whether a customer can book multiple services in a single online booking.
    var MultipleServiceBookingEnabled: Bool?
    /// - MaxAppointmentsPerDayLimitType: Indicates whether the daily appointment limit applies to team members or to business locations.
    var MaxAppointmentsPerDayLimitType: BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType?
    /// - MaxAppointmentsPerDayLimit: The maximum number of daily appointments per team member or per location.
    var MaxAppointmentsPerDayLimit: Int?
    /// - CancellationWindowSeconds: The cut-off time in seconds for allowing clients to cancel or reschedule an appointment.
    var CancellationWindowSeconds: Int?
    /// - CancellationFeeMoney: The flat-fee amount charged for a no-show booking.
    var CancellationFeeMoney: Money?
    /// - CancellationPolicy: The cancellation policy adopted by the seller.
    var CancellationPolicy: BusinessAppointmentSettingsCancellationPolicy?
    /// - CancellationPolicyText: The free-form text of the seller's cancellation policy.
    /// Max Length 65536
    var CancellationPolicyText: String?
    /// - SkipBookingFlowStaffSelection: Indicates whether customers has an assigned staff member (true) or can select s staff member of their choice (false).
    var SkipBookingFlowStaffSelection: Bool?
    
    enum CodingKeys: String, CodingKey {
        case LocationTypes = "location_types"
        case AlignmentTime = "alignment_time"
        case MinBookingLeadTimeSeconds = "min_booking_lead_time_seconds"
        case MaxBookingLeadTimeSeconds = "max_booking_lead_time_seconds"
        case AnyTeamMemberBookingEnabled = "any_team_member_booking_enabled"
        case MultipleServiceBookingEnabled = "multiple_service_booking_enabled"
        case MaxAppointmentsPerDayLimitType = "max_appointments_per_day_limit_type"
        case MaxAppointmentsPerDayLimit = "max_appointments_per_day_limit"
        case CancellationWindowSeconds = "cancellation_window_seconds"
        case CancellationFeeMoney = "cancellation_fee_money"
        case CancellationPolicy = "cancellation_policy"
        case CancellationPolicyText = "cancellation_policy_text"
        case SkipBookingFlowStaffSelection = "skip_booking_flow_staff_selection"
    }
}
