//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import Combine

class UserManger: ObservableObject {
    @Published var isRegister = !StorageManager.shared.getValue().isEmpty
    var name = StorageManager.shared.getValue()
    
    func login(_ name: String) {
        self.name = name
        isRegister.toggle()
        StorageManager.shared.save(name)
    }
    
    func logout() {
        name = ""
        isRegister.toggle()
        StorageManager.shared.delete()
    }
}
