//
//  Battery.swift
//  SafeMove
//
//  Created by Rachna on 21/09/24.
//

import SwiftUI
import SDWebImageSwiftUI


struct Battery: View {
    //rgb(245, 239, 255)
    let bgColor = UIColor(red: 245, green: 239, blue: 255, alpha: 1.0)
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
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 20) {
            
            VStack(alignment: .center, spacing: 20) {
                
                Text("Insurance Last date: \(insurance_validity_date ?? "12/06/2021")")
                    .font(.largeTitle)
                
                VStack(alignment: .leading) {
                    Text("Location: \(latitude ?? 0.0), \(longitude ?? 0.0)")
                        .font(.headline)
                    
                    Text("Last Seen: \(last_seen_at ?? "")")
                        .font(.headline)
                    
                    Text("Last Speed: \(last_speed ?? Int(0.0))")
                        .font(.headline)
                    
                    Text("Last updated location : \(location_last_updated ?? "")")
                        .font(.headline)
                }
                .padding()
                .background(.blue.opacity(0.4))
                .cornerRadius(25)
                
                
                VStack(alignment: .leading) {
                    Text("Max Speed: \(max_speed ?? 0)")
                    
                    Text("Total Odometer: \(total_odometer ?? 0)")
                    
                    Text("Fuel Saved: \(fuel_saved ?? "")")
                    
                    Text("Co2 Saved: \(fuel_saved ?? "")")
                }
                .padding()
                .font(.headline)
                .background(.blue.opacity(0.4))
                .cornerRadius(25)
                
                Spacer()
            }.padding(.horizontal, 20)
        }
        .background(.gray.opacity(0.1))
    }
}


#Preview {
    Battery(imei_substring: "xmcnbdshcsbnavcbnaxc", insurance_validity_date: "asdfdsaFS", iot_connected: false, battery_percentage: 0, drive_mode: "ADSFSA", longitude: 0.0, latitude: 0.0, last_seen_at: "", last_speed: 0, co2_saved: "DFDWSF", fuel_saved: "DFSF", location_last_updated: "DFDSF", max_speed: 0, total_odometer: 0/0)
}

