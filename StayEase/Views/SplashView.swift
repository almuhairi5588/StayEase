//
//  SplashView.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 07/11/2026.
//
//
import Combine
import SwiftUI

struct RootView: View {
    @State private var showSplash = true
    @State private var seconds = 0

    // Timer that fires every second
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            if showSplash {
                SplashView()
            } else {
                ContentView()
            }
        }
        .onReceive(timer) { _ in
            if showSplash {
                seconds += 1
                if seconds == 2 {
                    withAnimation {
                        showSplash = false
                    }
                }
            }
        }
    }
}

struct SplashView: View {
    var body: some View {
        ZStack {
            // Background colour that fills the whole screen
            Color.blue.ignoresSafeArea()

            VStack(spacing: 20) {
                // App logo: a white rounded square with a building icon
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(width: 120, height: 120)
                        .shadow(radius: 10)
                    Image(systemName: "building.2.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.blue)
                }

                Text("StayEase")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.white)

                Text("Book your perfect stay in the UAE")
                    .font(.headline)
                    .foregroundColor(.white)

                ProgressView()
                    .tint(.white)
                    .padding(.top, 30)
            }
        }
    }
}

#Preview {
    SplashView()
}
