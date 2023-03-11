//
//  main.swift
//  POP
//
//  Created by kaki on 2023/03/11.
//

let applewatchCharger = Charger(maximumWattPerHour: 5)
let iphoneCharger = Charger(maximumWattPerHour: 18)
let ipadCharger = Charger(maximumWattPerHour: 30)
let macbookCharger1 = Charger(maximumWattPerHour: 96)
let macbookCharger2 = Charger(maximumWattPerHour: 106)

let macBook = MacBook()
macBook.chargeBattery(charger: applewatchCharger)
macBook.chargeBattery(charger: iphoneCharger)
macBook.chargeBattery(charger: ipadCharger)
macBook.chargeBattery(charger: macbookCharger1)
macBook.chargeBattery(charger: macbookCharger2)

var gucciBag = Bag()
gucciBag.put(item: macBook)
gucciBag.put(item: macbookCharger1)
