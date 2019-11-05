//
//  HomeView.swift
//  Local
//
//  Created by Rey Oliva on 10/1/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct tabControllerView: View {
    var body: some View {
        TabView {
            homeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .font(.title)
            }.tag(0)
            socialMediaView()
                .tabItem {
                    Image(systemName: "camera.fill")
                        .font(.title)
            }.tag(1)
            Text("Contact Us Tab")
                .tabItem {
                    Image(systemName: "text.bubble.fill")
                        .font(.title)
            }.tag(2)
        }
        .navigationBarTitle("Local", displayMode: .large)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "ellipsis")
                .font(.title)
                .padding(.top, 35.0)
        })
    }
}

struct tabControllerView_Preview: PreviewProvider {
    static var previews: some View {
        tabControllerView()
    }
}
