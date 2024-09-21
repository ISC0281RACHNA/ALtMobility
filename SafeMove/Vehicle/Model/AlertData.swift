//
//  AlertData.swift
//  SafeMove
//
//  Created by Rachna on 21/09/24.
//
import Foundation

struct AlertDataModel : Codable {
    let id : Int?
    let alert_type : String?
    let vehicle_id : String?
    let message : String?
    let value : String?
    let status : String?
    let created_at : String?
    let updated_at : String?
    let additional_fields : Additional_fields?
    let latitude : String?
    let latitude_direction : String?
    let longitude : String?
    let longitude_direction : String?
    let severity : String?
    let service_request_id : String?
    let date_value : String?
    let freshdesk_ticket_id : String?
    let threshold_id : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case alert_type = "alert_type"
        case vehicle_id = "vehicle_id"
        case message = "message"
        case value = "value"
        case status = "status"
        case created_at = "created_at"
        case updated_at = "updated_at"
        case additional_fields = "additional_fields"
        case latitude = "latitude"
        case latitude_direction = "latitude_direction"
        case longitude = "longitude"
        case longitude_direction = "longitude_direction"
        case severity = "severity"
        case service_request_id = "service_request_id"
        case date_value = "date_value"
        case freshdesk_ticket_id = "freshdesk_ticket_id"
        case threshold_id = "threshold_id"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        alert_type = try values.decodeIfPresent(String.self, forKey: .alert_type)
        vehicle_id = try values.decodeIfPresent(String.self, forKey: .vehicle_id)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        value = try values.decodeIfPresent(String.self, forKey: .value)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
        additional_fields = try values.decodeIfPresent(Additional_fields.self, forKey: .additional_fields)
        latitude = try values.decodeIfPresent(String.self, forKey: .latitude)
        latitude_direction = try values.decodeIfPresent(String.self, forKey: .latitude_direction)
        longitude = try values.decodeIfPresent(String.self, forKey: .longitude)
        longitude_direction = try values.decodeIfPresent(String.self, forKey: .longitude_direction)
        severity = try values.decodeIfPresent(String.self, forKey: .severity)
        service_request_id = try values.decodeIfPresent(String.self, forKey: .service_request_id)
        date_value = try values.decodeIfPresent(String.self, forKey: .date_value)
        freshdesk_ticket_id = try values.decodeIfPresent(String.self, forKey: .freshdesk_ticket_id)
        threshold_id = try values.decodeIfPresent(String.self, forKey: .threshold_id)
    }

}

struct Additional_fields : Codable {
    let idle_days : Int?
    let min_cell_voltage : Int?
    let last_soc : Int?

    enum CodingKeys: String, CodingKey {

        case idle_days = "idle_days"
        case min_cell_voltage = "min_cell_voltage"
        case last_soc = "last_soc"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        idle_days = try values.decodeIfPresent(Int.self, forKey: .idle_days)
        min_cell_voltage = try values.decodeIfPresent(Int.self, forKey: .min_cell_voltage)
        last_soc = try values.decodeIfPresent(Int.self, forKey: .last_soc)
    }

}
