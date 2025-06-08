//
//  main.swift
//  StructveClasslar
//
//  Created by Ali Ünal UZUNÇAYIR on 5.06.2025.
//

import Foundation
// MARK: - Struct vs Class Farkları

// 1. Initialization (Kurucu Metot):
// Struct'lar otomatik olarak init metodu sağlar.
// Class'larda ise eğer custom initializer yoksa varsayılan init kullanılmalı ya da elle yazılmalı.

// 2. Value vs Reference Type:
// Struct bir değer tipidir (Value Type) => Kopyalanır.
// Class bir referans tipidir (Reference Type) => Referans aktarılır.

// 3. Mutability:
// Struct içerisindeki değişkenleri değiştirebilmek için 'mutating' anahtar kelimesi gerekir.
// Class'ta bu gerekmez.

// 4. Inheritance (Kalıtım):
// Struct kalıtım desteklemez.
// Class kalıtım destekler.

// 5. Memory:
// Struct'lar stack'te tutulur.
// Class'lar heap'te tutulur.

// Örnekler aşağıda:




var john = ClassMusician(name: "John", age: 30)
var copiedJohn = john
copiedJohn.age = 40
// john.age de 40 olur çünkü class referans tipidir
print("Original Class age: \(john.age)") // 40

let James = ClassMusician(name: "James", age: 50)




var tom = StructMusician(name: "Tom", age: 25)
var copiedTom = tom
copiedTom.age = 35
// tom.age değişmez çünkü struct değer tipidir
print("Original Struct age: \(tom.age)") // 25

let Aly = StructMusician(name: "Aly", age: 21)

// Struct ve Class farkını göstermek için örnek kullanım:
print(James.age)
print(Aly.age)
