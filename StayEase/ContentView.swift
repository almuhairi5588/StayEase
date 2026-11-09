

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var hotels: [Hotel]

    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }

            Text("Map coming soon")
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Map")
                }

            Text("My Trips coming soon")
                .tabItem {
                    Image(systemName: "suitcase.fill")
                    Text("My Trips")
                }

            Text("Profile coming soon")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
        .onAppear {
            addSampleHotelsFirstTime()
        }
    }
    func addSampleHotelsFirstTime() {
        if hotels.isEmpty {
            addSampleHotels(modelContext: modelContext)
            try? modelContext.save()
        }
    }
}
