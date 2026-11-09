//
//  Booking.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 05/11/2026.
//
import Foundation
import SwiftData

@Model
class Booking: Identifiable {
    @Attribute(.unique) var id: UUID = UUID()
    var hotel: Hotel?
    var guestName: String
    var email: String
    var phone: String
    var guests: Int
    var roomType: String
    var checkIn: Date
    var checkOut: Date
    var specialRequests: String
    var remindMe: Bool
    var totalPrice: Double

    init(guestName: String, email: String, phone: String, guests: Int,
         roomType: String, checkIn: Date, checkOut: Date,
         specialRequests: String, remindMe: Bool, totalPrice: Double) {
        self.guestName = guestName
        self.email = email
        self.phone = phone
        self.guests = guests
        self.roomType = roomType
        self.checkIn = checkIn
        self.checkOut = checkOut
        self.specialRequests = specialRequests
        self.remindMe = remindMe
        self.totalPrice = totalPrice
    }
}

