//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Yusuf ÇAĞLAR on 27/01/2021.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData : ModelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date:") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Hiked 100 km")
                                .hueRotation(Angle(degrees: 180))
                            HikeBadge(name: "Hiked in Swiss Alps")
                                .grayscale(0.01)
                                .hueRotation(Angle(degrees: 275))
                        }
                    }
                    .padding(.bottom)
                }
            }
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                
                HikeView(hike: ModelData().hikes[0])
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
