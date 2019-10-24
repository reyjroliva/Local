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
    @State var selection: Int? = nil
    
    var body: some View {
        List(selection: $selection, content: {
            ForEach(0..<5) { _ in
                homeItemView()
            }
        })
        .navigationBarHidden(true)
    }
}

struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
