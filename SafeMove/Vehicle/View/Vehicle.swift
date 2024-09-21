//
//  Vehicle.swift
//  SafeMove
//
//  Created by Rachna on 21/09/24.
//

import SwiftUI

struct Vehicle: View {
    private var viewModel = VehicleViewModel()
    
    let bgColor = Gradient(colors: [.teal, .cyan, .green])

    fileprivate var topView: some View {
        ZStack(alignment: .leading) {
            Image(systemName: "")
                .resizable()
                .frame(height: 100)
                .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.6))
            
            VStack {
                Image(systemName: "car")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.leading, 20)
               
                Text("Safe Move")
                    .bold()
                    .tint(.blue)
                    .padding(.leading, 20)
            }
        }
    }
    
    var body: some View {
        topView
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                ForEach(viewModel.vehicleData) { vechicle in
                    Battery(imei_substring: vechicle.imei_substring,
                            insurance_validity_date: vechicle.insurance_validity_date,
                            iot_connected: vechicle.iot_connected,
                            battery_percentage: vechicle.battery_percentage,
                            drive_mode: vechicle.drive_mode,
                            longitude: vechicle.longitude,
                            latitude: vechicle.latitude,
                            last_seen_at: vechicle.last_seen_at,
                            last_speed: vechicle.last_speed,
                            co2_saved: vechicle.co2_saved,
                            fuel_saved: vechicle.fuel_saved,
                            location_last_updated: vechicle.location_last_updated,
                            max_speed: vechicle.max_speed,
                            total_odometer: vechicle.total_odometer)
                    .cornerRadius(20)
                }
            }
            .padding()
        }
    }
}

#Preview {
    Vehicle()
}

