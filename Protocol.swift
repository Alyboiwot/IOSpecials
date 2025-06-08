//
//  Protocol.swift
//  StructveClasslar
//
//  Created by Ali Ünal UZUNÇAYIR on 7.06.2025.
//

import Foundation

// MARK: - Protocol (Davranış Sözleşmesi)
// Protokoller, class veya structların uyması gereken kuralları belirler.
protocol Vehicle {
    var brand: String { get set }
    func startEngine()
}

// MARK: - Struct (Değer Tipi)
// Struct'lar genellikle küçük, hafif yapılarda tercih edilir.
// Struct protokolü uygular ama kalıtım yapamaz!
struct Bicycle: Vehicle {
    var brand: String
    
    func startEngine() {
        print("\(brand) bisikletin pedalı çevriliyor 🚴")
    }
}

// MARK: - Class (Referans Tipi ve Inheritance destekler)
// Class'lar hem protokolleri uygulayabilir hem de başka class'lardan miras alabilir.
class Car: Vehicle {
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func startEngine() {
        print("\(brand) arabanın motoru çalışıyor 🚗")
    }
}

// MARK: - Inheritance (Kalıtım)
// ElectricCar, Car sınıfından miras alır (inherit).
// Ayrıca Vehicle protokolüne de uyar.
class ElectricCar: Car {
    var batteryLevel: Int
    
    init(brand: String, batteryLevel: Int) {
        self.batteryLevel = batteryLevel
        super.init(brand: brand)
    }
    
    override func startEngine() {
        print("\(brand) elektrikli araba sessizce çalışıyor ⚡️ | Pil seviyesi: \(batteryLevel)%")
    }
}

// MARK: - Kullanım
let bike = Bicycle(brand: "Bianchi")
bike.startEngine()

let normalCar = Car(brand: "Toyota")
normalCar.startEngine()

let tesla = ElectricCar(brand: "Tesla", batteryLevel: 85)
tesla.startEngine()

// MARK: - Protokol Tipinde Listeleme
// Hepsi Vehicle protokolünü uyguladığı için aynı listede tutulabilir
let vehicles: [Vehicle] = [bike, normalCar, tesla]
for vehicle in vehicles {
    vehicle.startEngine()
}
