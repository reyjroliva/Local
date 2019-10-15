//
//  HomeView.swift
//  Local
//
//  Created by Rey Oliva on 10/1/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct TabControllerView: View {
    @State private var selection = 1
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                Text("Home Tab").tabItem {
                    Image(systemName: "house.fill")
                        .font(.title)
                }.tag(1)
                Text("Social Media Tab").tabItem {
                    Image(systemName: "camera.fill")
                        .font(.title)
                }.tag(2)
                Text("Contact Us Tab").tabItem {
                    Image(systemName: "text.bubble.fill")
                        .font(.title)
                }.tag(3)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "ellipsis")
                .font(.title)
                .padding(.top, 35.0)
        })
        .navigationBarTitle("Local")
    }
}

struct TabControllerView_Preview: PreviewProvider {
    static var previews: some View {
        TabControllerView()
    }
}
