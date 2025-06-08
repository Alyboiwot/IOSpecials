//
//  File.swift
//  StructveClasslar
//
//  Created by Ali Ünal UZUNÇAYIR on 5.06.2025.
//

import Foundation

// MARK: - guard let vs if let Farkları

// if let: Optional değer varsa unwrap eder, yoksa else bloğuna girmez.
// Kullanımı daha çok kısa durumlar için uygundur, nesting (iç içe kod) olabilir.

// guard let: Optional değer varsa devam eder, yoksa else bloğuna girer ve genellikle fonksiyondan çıkar (return, break, continue).
// Daha temiz ve okunabilir kontrol akışı sağlar.

// Örnek: if let
func greetIfLet(name: String?) {
    if let unwrappedName = name {
        print("Merhaba, \(unwrappedName)")
    } else {
        print("İsim bulunamadı.")
    }
}

// Örnek: guard let guardlet daha korumacı
func greetGuardLet(name: String?) {
    guard let unwrappedName = name else {
        print("İsim bulunamadı.")
        return
    }
    print("Merhaba, \(unwrappedName)")
}

// MARK: - guard let Kullanımına Detaylı Örnekler

// 1. Form doğrulama
func validateForm(name: String?, age: Int?) {
    guard let name = name, !name.isEmpty else {
        print("İsim geçersiz.")
        return
    }

    guard let age = age, age >= 18 else {
        print("Yaş geçerli değil.")
        return
    }

    print("Form geçerli: \(name), \(age) yaşında.")
}

// 2. Kullanıcı işleme
func processUser(name: String?) {
    guard let name = name else {
        print("İsim boş olamaz.")
        return
    }
    print("İşlem yapılan kullanıcı: \(name)")
}

// 3. Giriş kontrolü
func login(username: String?, password: String?) {
    guard let username = username, let password = password else {
        print("Kullanıcı adı veya şifre eksik.")
        return
    }

    print("Giriş başarılı. Hoş geldin \(username)")
}
