//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Oksana Tugusheva on 09.06.2021.
//

import Foundation

class StorageManager {
    static var shared = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let key = "username"
    
    private init() {}
    
    func getValue() -> String {
        let name = userDefaults.value(forKey: key) as? String
        return name ?? ""
    }
    
    func save(_ name: String) {
        userDefaults.setValue(name, forKey: key)
    }
    
    func delete() {
        userDefaults.setValue(nil, forKey: key)
    }
}
