//
//  PracticeTCAApp.swift
//  PracticeTCA
//
//  Created by Minjae Kim on 12/22/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct PracticeTCAApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: PracticeTCAApp.store)
        }
    }
}
