//
//  HomeView.swift
//  Local
//
//  Created by Rey Oliva on 10/15/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct homeView: View {
@State var isPresented = false
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: homeItemDetailView()) {
                    homeItemView()
                    .navigationBarHidden(true)
                }
                homeItemView()
                homeItemView()
                homeItemView()
                homeItemView()
            }
        }
    .navigationViewStyle(DefaultNavigationViewStyle())
    .navigationBarHidden(true)
    }
}

struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
