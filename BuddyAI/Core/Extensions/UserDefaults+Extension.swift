//
//  UserDefaults+Extension.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 19/01/26.
//

import Foundation

extension UserDefaults {
    private struct Keys {
        static let showTabbar: String = "showTabbar"
    }
    
    static var showTabbar: Bool {
        get {
            standard.bool(forKey: Keys.showTabbar)
        } set {
            standard.set(newValue, forKey: Keys.showTabbar)
        }
    }
}
