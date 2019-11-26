//
//  BackgroundView.swift
//  Local
//
//  Created by Rey Oliva on 11/25/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct Background<Content: View>: View {
    private var content: Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }

    var body: some View {
        Color.white
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .overlay(content)
    }
}
