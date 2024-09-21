//
//  VehicleData.swift
//  SafeMove
//
//  Created by Rachna on 21/09/24.
//

import Foundation
struct VehicleData: Identifiable, Decodable {
    var id: Int?
    let imei_substring : String?
    let insurance_validity_date : String?
    let iot_connected : Bool?
    let battery_percentage : Int?
    let drive_mode : String?
    let longitude : Double?
    let latitude : Double?
    let last_seen_at : String?
    let last_speed : Int?
    let co2_saved : String?
    let fuel_saved : String?
    let location_last_updated : String?
    let max_speed : Int?
    let total_odometer : Double?

    enum CodingKeys: String, CodingKey {

        case imei_substring = "imei_substring"
        case insurance_validity_date = "insurance_validity_date"
        case iot_connected = "iot_connected"
        case battery_percentage = "battery_percentage"
        case drive_mode = "drive_mode"
        case longitude = "longitude"
        case latitude = "latitude"
        case last_seen_at = "last_seen_at"
        case last_speed = "last_speed"
        case co2_saved = "co2_saved"
        case fuel_saved = "fuel_saved"
        case location_last_updated = "location_last_updated"
        case max_speed = "max_speed"
        case total_odometer = "total_odometer"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        imei_substring = try values.decodeIfPresent(String.self, forKey: .imei_substring)
        insurance_validity_date = try values.decodeIfPresent(String.self, forKey: .insurance_validity_date)
        iot_connected = try values.decodeIfPresent(Bool.self, forKey: .iot_connected)
        battery_percentage = try values.decodeIfPresent(Int.self, forKey: .battery_percentage)
        drive_mode = try values.decodeIfPresent(String.self, forKey: .drive_mode)
        longitude = try values.decodeIfPresent(Double.self, forKey: .longitude)
        latitude = try values.decodeIfPresent(Double.self, forKey: .latitude)
        last_seen_at = try values.decodeIfPresent(String.self, forKey: .last_seen_at)
        last_speed = try values.decodeIfPresent(Int.self, forKey: .last_speed)
        co2_saved = try values.decodeIfPresent(String.self, forKey: .co2_saved)
        fuel_saved = try values.decodeIfPresent(String.self, forKey: .fuel_saved)
        location_last_updated = try values.decodeIfPresent(String.self, forKey: .location_last_updated)
        max_speed = try values.decodeIfPresent(Int.self, forKey: .max_speed)
        total_odometer = try values.decodeIfPresent(Double.self, forKey: .total_odometer)
    }

}
