//
//  StayEaseApp.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 04/11/2026.
//

import SwiftUI
import SwiftData

@main
struct StayEaseApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .modelContainer(for: [Hotel.self, Booking.self])
    }
}
