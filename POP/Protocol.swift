//
//  Protocol.swift
//  POP
//
//  Created by kaki on 2023/03/11.
//

typealias WattPerHour = Int
typealias Watt = Int

protocol Chargeable {
    var maximumWattPerHour: WattPerHour { get set }
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour
}

struct Charger: Chargeable {
    var maximumWattPerHour: WattPerHour
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour {
        if maximumWattPerHour > chargeableWattPerHour {
            return chargeableWattPerHour
        } else {
            return maximumWattPerHour
        }
    }
}

struct MacBook {
    let chargeableWatt: WattPerHour = 12
    let currentBatteryCapacity: WattPerHour = 24
    let maximumBatteryCapacity: WattPerHour = 120
    
    func chargeBattery(charger: Chargeable) {
        let hour = (maximumBatteryCapacity - currentBatteryCapacity) / charger.convert(chargeableWattPerHour: chargeableWatt)
        
        print(hour)
    }
}
