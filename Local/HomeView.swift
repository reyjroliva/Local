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
    var body: some View {
        List {
            homeItemView()
            homeItemView()
            homeItemView()
            homeItemView()
            homeItemView()
            homeItemView()
            homeItemView()
            homeItemView()
            homeItemView()
            homeItemView()
        }
    }
}

struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
