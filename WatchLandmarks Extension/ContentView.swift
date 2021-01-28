//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Yusuf ÇAĞLAR on 28/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
