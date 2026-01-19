//
//  AppState.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 19/01/26.
//

import SwiftUI

@Observable
class AppState {
    private(set) var showTabBar: Bool {
        didSet {
            UserDefaults.showTabbar = showTabBar
        }
    }
    
    init(showTabbar: Bool = UserDefaults.showTabbar) {
        self.showTabBar = showTabbar
    }
    
    func updateViewState(showTabbarView: Bool) {
        showTabBar = showTabbarView
    }
}
