//
//  ExploreViews.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 08/11/2026.
//
import SwiftUI
import SwiftData

struct ExploreView: View {
    @Environment(\.modelContext) private var modelContext

    @Query(sort: \Hotel.name) private var hotelsByName: [Hotel]
    @Query(sort: \Hotel.pricePerNight) private var hotelsByPrice: [Hotel]
    @Query(sort: \Hotel.guestRating, order: .reverse) private var hotelsByRating: [Hotel]

    @Query private var bookings: [Booking]

    @State private var searchText = ""
    @State private var sortChoice = "Name"
    @State private var favoritesOnly = false

    let sortChoices = ["Name", "Price", "Rating"]

    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Search hotel or city", text: $searchText)
                        .autocapitalization(.none)

                    Picker("Sort by", selection: $sortChoice) {
                        ForEach(sortChoices, id: \.self) { choice in
                            Text(choice)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())

                    Toggle(isOn: $favoritesOnly) {
                        Text("Favourites only")
                    }
                }

                Section("Hotels") {
                    if shownHotels().isEmpty {
                        Text("No hotels found.")
                            .foregroundColor(.gray)
                    }

                    ForEach(shownHotels()) { hotel in
                        // Temporary destination, replaced by HotelDetailView in step 5
                        NavigationLink(destination: Text(hotel.name)) {
                            HotelRowView(hotel: hotel)
                        }
                    }
                    .onDelete(perform: deleteHotels)
                }
            }
            .navigationTitle("Explore")
        }
    }


    func shownHotels() -> [Hotel] {
        var allHotels = hotelsByName
        if sortChoice == "Price" {
            allHotels = hotelsByPrice
        } else if sortChoice == "Rating" {
            allHotels = hotelsByRating
        }

        let search = searchText.lowercased()
        var result: [Hotel] = []

        for hotel in allHotels {
            let matchesSearch = search.isEmpty
                || hotel.name.lowercased().contains(search)
                || hotel.city.lowercased().contains(search)
            let matchesFavorite = favoritesOnly == false || hotel.isFavorite

            if matchesSearch && matchesFavorite {
                result.append(hotel)
            }
        }
        return result
    }

    func deleteHotels(offsets: IndexSet) {
        let hotels = shownHotels()
        for index in offsets {
            let hotel = hotels[index]

            for booking in bookings {
                if booking.hotel?.id == hotel.id {
                    modelContext.delete(booking)
                }
            }

            modelContext.delete(hotel)
        }
    }
}
