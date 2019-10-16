//
//  HomeView.swift
//  Local
//
//  Created by Rey Oliva on 10/15/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        List {
            HomeItemView()
            HomeItemView()
            HomeItemView()
            HomeItemView()
            HomeItemView()
            HomeItemView()
            HomeItemView()
            HomeItemView()
            HomeItemView()
            HomeItemView()
        }
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
