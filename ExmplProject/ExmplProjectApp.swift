//
//  ExmplProjectApp.swift
//  ExmplProject
//
//  Created by Hughes, Teo (BJH) on 17/06/2021.
//

import SwiftUI
import Firebase

@main
struct ExmplProjectApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            CardListView()
        }
    }
}
