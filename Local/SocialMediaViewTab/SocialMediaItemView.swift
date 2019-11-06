//
//  SocialMediaItemView.swift
//  Local
//
//  Created by Rey Oliva on 11/6/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct socialMediaItemView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(systemName: "circle.grid.3x3.fill")
                .font(.largeTitle)
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: 300)
            Image(systemName:"rectangle.grid.2x2")
                .font(.largeTitle)
        }
    }
}

struct socialMediaItemView_Preview: PreviewProvider {
    static var previews: some View {
        socialMediaItemView()
    }
}
