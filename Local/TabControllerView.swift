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
    @Binding var isLoggedIn: Bool
    @Binding var isOwner: Bool
    @Binding var items: [Item]
    
    init(_ isLoggedIn: Binding<Bool>, _ isOwner: Binding<Bool>, _ items: Binding<[Item]>) {
        self._isLoggedIn = isLoggedIn
        self._isOwner = isOwner
        self._items = items
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
    }
    
    var body: some View {
        NavigationView {
            TabView {
                homeView(isOwner: isOwner, items: $items)
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
            .navigationBarItems(trailing: Button(action: {
                withAnimation {
                    self.isLoggedIn = false
                }
            }) {
                Text("Logout")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.systemRed))
                    .padding(.top, 35.0)
            })
        }
            //without these, tab controller is too tall for screen when displayed on top of ZStack
            .padding(.top, 0.25)
            .padding(.bottom, 5)
    }
}

struct tabControllerView_Preview: PreviewProvider {
    @State static var isLoggedIn_Preview = false
    @State static var isOwner_Preview = false
    @State static var items_Preview = [Item(name: "Item 1", price: 4.20, description: "This is a description for Item 1, ya herrddd")]
    static var previews: some View {
        tabControllerView($isLoggedIn_Preview, $isOwner_Preview, $items_Preview)
    }
}
