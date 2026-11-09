//
//  SampleHotels.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 05/11/2026.
//

import Foundation
import SwiftData

func addSampleHotels(modelContext: ModelContext) {
    let hotels = [
        Hotel(name: "Burj Al Arab Jumeirah", city: "Dubai",
              address: "Jumeirah Street, Umm Suqeim 3",
              about: "Iconic sail-shaped hotel on its own island with duplex suites, private beach and butler service.",
              pricePerNight: 2500, stars: 5, guestRating: 4.9,
              latitude: 25.1412, longitude: 55.1853,
              iconName: "sailboat.fill", colorName: "Blue",
              hasWifi: true, hasPool: true, hasSpa: true, hasGym: false, hasParking: true, hasBreakfast: true),
        Hotel(name: "Atlantis The Palm", city: "Dubai",
              address: "Crescent Road, Palm Jumeirah",
              about: "Family resort at the tip of Palm Jumeirah with a waterpark, aquarium and many restaurants.",
              pricePerNight: 1400, stars: 5, guestRating: 4.7,
              latitude: 25.1304, longitude: 55.1171,
              iconName: "building.columns.fill", colorName: "Teal",
              hasWifi: true, hasPool: true, hasSpa: false, hasGym: true, hasParking: true, hasBreakfast: true),
        Hotel(name: "Rove Downtown", city: "Dubai",
              address: "Al Mustaqbal Street, Downtown Dubai",
              about: "Modern, affordable hotel a short walk from Dubai Mall and Burj Khalifa.",
              pricePerNight: 450, stars: 3, guestRating: 4.4,
              latitude: 25.1932, longitude: 55.2809,
              iconName: "building.2.fill", colorName: "Orange",
              hasWifi: true, hasPool: true, hasSpa: false, hasGym: true, hasParking: true, hasBreakfast: false),
        Hotel(name: "Al Maha Desert Resort", city: "Dubai",
              address: "Dubai Desert Conservation Reserve",
              about: "Bedouin-style suites with private pools, desert safaris and falconry inside a nature reserve.",
              pricePerNight: 3000, stars: 5, guestRating: 4.8,
              latitude: 24.8266, longitude: 55.6370,
              iconName: "tent.fill", colorName: "Orange",
              hasWifi: true, hasPool: true, hasSpa: true, hasGym: false, hasParking: false, hasBreakfast: true),
        Hotel(name: "Emirates Palace", city: "Abu Dhabi",
              address: "West Corniche Road",
              about: "Palace hotel with gold-leaf interiors, a long private beach and large gardens.",
              pricePerNight: 1800, stars: 5, guestRating: 4.8,
              latitude: 24.4615, longitude: 54.3172,
              iconName: "building.columns.fill", colorName: "Purple",
              hasWifi: true, hasPool: true, hasSpa: true, hasGym: true, hasParking: true, hasBreakfast: true),
        Hotel(name: "Sheraton Sharjah Beach Resort", city: "Sharjah",
              address: "Al Muntazah Street, Al Mamzar",
              about: "Beachfront resort with a spa and lagoon-style pool, close to Sharjah's cultural sites.",
              pricePerNight: 600, stars: 5, guestRating: 4.3,
              latitude: 25.3297, longitude: 55.3876,
              iconName: "beach.umbrella.fill", colorName: "Teal",
              hasWifi: true, hasPool: true, hasSpa: true, hasGym: false, hasParking: false, hasBreakfast: true),
        Hotel(name: "Hilton Al Ain", city: "Al Ain",
              address: "Khalifa Bin Zayed Street",
              about: "Garden-city hotel near Al Ain Zoo and Jebel Hafeet, popular with families.",
              pricePerNight: 500, stars: 4, guestRating: 4.2,
              latitude: 24.2131, longitude: 55.7473,
              iconName: "house.lodge.fill", colorName: "Green",
              hasWifi: true, hasPool: true, hasSpa: false, hasGym: true, hasParking: true, hasBreakfast: false),
        Hotel(name: "Waldorf Astoria Ras Al Khaimah", city: "Ras Al Khaimah",
              address: "Vienna Street, Al Hamra",
              about: "Beach resort with a golf course and views of the Hajar mountains.",
              pricePerNight: 1100, stars: 5, guestRating: 4.6,
              latitude: 25.7466, longitude: 55.8550,
              iconName: "building.2.fill", colorName: "Pink",
              hasWifi: true, hasPool: true, hasSpa: true, hasGym: true, hasParking: false, hasBreakfast: true)
    ]

    // Create (Insert) each hotel into SwiftData
    for hotel in hotels {
        modelContext.insert(hotel)
    }
}
