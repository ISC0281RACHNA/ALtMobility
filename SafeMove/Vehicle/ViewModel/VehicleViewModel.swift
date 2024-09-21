//
//  VehicleViewModel.swift
//  SafeMove
//
//  Created by Rachna on 21/09/24.
//

import Foundation


public class VehicleViewModel: ObservableObject {
    
    @Published var vehicleData = [VehicleData]()
    @Published var alertData = [AlertDataModel]()
//
    init(){
        loadVechicle()
        loadAlert()
      //  sort()
    }
    
    func loadVechicle() {
        if let fileLocation = Bundle.main.url(forResource: "VehicleData", withExtension: "json"){
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([VehicleData].self, from: data)
                
                self.vehicleData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    func loadAlert() {
        if let fileLocation = Bundle.main.url(forResource: "AlertData", withExtension: "json"){
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([AlertDataModel].self, from: data)
                
                self.alertData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
//    func sort(){
//        self.vehicleData = self.vehicleData.sorted(by: { $0.id < $1.id})
//    }
}
