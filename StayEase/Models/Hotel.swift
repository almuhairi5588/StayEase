//
//  Hotel.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 04/11/2026.
//
import Foundation
import SwiftData
import CoreLocation

@Model
class Hotel: Identifiable {
    @Attribute(.unique) var id: UUID = UUID()
    var name: String
    var city: String
    var address: String
    var about: String
    var pricePerNight: Double
    var stars: Int
    var guestRating: Double
    var latitude: Double
    var longitude: Double
    var iconName: String
    var colorName: String
    var isFavorite: Bool
    
    var hasWifi: Bool
    var hasPool: Bool
    var hasSpa: Bool
    var hasGym: Bool
    var hasParking: Bool
    var hasBreakfast: Bool

    init(name: String, city: String, address: String, about: String,
         pricePerNight: Double, stars: Int, guestRating: Double,
         latitude: Double, longitude: Double,
         iconName: String = "building.2.fill", colorName: String = "Blue",
         hasWifi: Bool = true, hasPool: Bool = false, hasSpa: Bool = false,
         hasGym: Bool = false, hasParking: Bool = false, hasBreakfast: Bool = false) {
        self.name = name
        self.city = city
        self.address = address
        self.about = about
        self.pricePerNight = pricePerNight
        self.stars = stars
        self.guestRating = guestRating
        self.latitude = latitude
        self.longitude = longitude
        self.iconName = iconName
        self.colorName = colorName
        self.isFavorite = false
        self.hasWifi = hasWifi
        self.hasPool = hasPool
        self.hasSpa = hasSpa
        self.hasGym = hasGym
        self.hasParking = hasParking
        self.hasBreakfast = hasBreakfast
    }
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
