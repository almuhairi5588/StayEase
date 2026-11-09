//
//  Helpers.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 05/11/2026.
//
import SwiftUI

let roomTypes = ["Standard", "Deluxe", "Suite", "Family"]
let colorNames = ["Blue", "Orange", "Green", "Purple", "Pink", "Teal"]
let hotelIcons = ["building.2.fill", "building.columns.fill", "house.lodge.fill",
                  "beach.umbrella.fill", "tent.fill", "sailboat.fill"]
let guestChoices = [1, 2, 3, 4, 5, 6]

func colorFromName(_ name: String) -> Color {
    switch name {
    case "Orange":
        return Color.orange
    case "Green":
        return Color.green
    case "Purple":
        return Color.purple
    case "Pink":
        return Color.pink
    case "Teal":
        return Color.teal
    default:
        return Color.blue
    }
}


func roomMultiplier(roomType: String) -> Double {
    switch roomType {
    case "Deluxe":
        return 1.35
    case "Suite":
        return 2.0
    case "Family":
        return 1.6
    default:
        return 1.0
    }
}

func maxGuests(roomType: String) -> Int {
    switch roomType {
    case "Deluxe":
        return 3
    case "Suite":
        return 4
    case "Family":
        return 6
    default:
        return 2
    }
}


func priceText(_ price: Double) -> String {
    return "AED " + String(format: "%.0f", price)
}


func dateText(_ date: Date) -> String {
    return date.formatted(date: .abbreviated, time: .omitted)
}


func numberOfNights(checkIn: Date, checkOut: Date) -> Int {
    let firstDay = Calendar.current.startOfDay(for: checkIn)
    let lastDay = Calendar.current.startOfDay(for: checkOut)
    if let days = Calendar.current.dateComponents([.day], from: firstDay, to: lastDay).day {
        return days
    }
    return 0
}
