//
//  HotelViews.swift
//  StayEase
//
//  Created by Abdullah Almuhairi on 08/11/2026.
//
import SwiftUI

struct HotelPictureView: View {
    let hotel: Hotel
    var size: Double = 60

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: size / 4)
                .fill(colorFromName(hotel.colorName))
                .frame(width: size, height: size)
            Image(systemName: hotel.iconName)
                .font(.system(size: size / 2.2))
                .foregroundColor(.white)
        }
    }
}


struct StarsView: View {
    let stars: Int
    var color: Color = .orange

    var body: some View {
        HStack(spacing: 2) {
            ForEach(1...5, id: \.self) { number in
                Image(systemName: number <= stars ? "star.fill" : "star")
            }
        }
        .font(.caption)
        .foregroundColor(color)
    }
}

struct RatingBadgeView: View {
    let rating: Double

    var body: some View {
        Text(String(format: "%.1f", rating))
            .font(.caption)
            .bold()
            .foregroundColor(.white)
            .padding(4)
            .background(Color.green)
            .cornerRadius(6)
    }
}

struct HotelRowView: View {
    let hotel: Hotel

    var body: some View {
        HStack(spacing: 12) {
            HotelPictureView(hotel: hotel)

            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(hotel.name)
                        .font(.headline)
                    if hotel.isFavorite {
                        Image(systemName: "heart.fill")
                            .font(.caption)
                            .foregroundColor(.pink)
                    }
                }
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text(hotel.city)
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                StarsView(stars: hotel.stars)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                RatingBadgeView(rating: hotel.guestRating)
                Text(priceText(hotel.pricePerNight))
                    .font(.subheadline)
                    .bold()
                Text("per night")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 4)
    }
}

struct AmenityRow: View {
    let icon: String
    let name: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .frame(width: 30)
                .foregroundColor(.blue)
            Text(name)
        }
    }
}
struct DetailRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(value)
                .foregroundColor(.gray)
        }
    }
}
