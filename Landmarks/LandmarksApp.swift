//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Yusuf ÇAĞLAR on 24/01/2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
