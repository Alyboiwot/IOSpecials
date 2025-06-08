//
//  File.swift
//  StructveClasslar
//
//  Created by Ali Ünal UZUNÇAYIR on 5.06.2025.
//

import Foundation

// MARK: - switch case Örnekleri

// 1. Basit switch case
let number = 3

switch number {
case 1...3:
    print("Bir")
case 2:
    print("İki")
case 3:
    print("Üç")
default:
    print("Bilinmeyen sayı")
}

// 2. String ile kullanım
let weather = "sunny"

switch weather {
case "sunny":
    print("Güneşli bir gün!")
case "rainy":
    print("Şemsiye almayı unutma.")
case "cloudy":
    print("Hava kapalı.")
default:
    print("Bilinmeyen hava durumu")
}

// 3. Enum ile kullanım
enum Direction {
    case north, south, east, west
}

let currentDirection = Direction.north

switch currentDirection {
case .north:
    print("Kuzeye gidiyorsun")
case .south:
    print("Güneye gidiyorsun")
case .east:
    print("Doğuya gidiyorsun")
case .west:
    print("Batıya gidiyorsun")
}
