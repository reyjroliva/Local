//
//  MainView.swift
//  Local
//
//  Created by Rey Oliva on 11/25/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct mainView: View {
    @State var isLoggedIn = false;
    @State var isOwner = false;
    @State var items = [Item(name: "Item 1", price: 4.20, description: "This is a description for Item 1, ya herrddd")]
    
    var body: some View {
        ZStack(alignment: .leading) {
            loginView(isLoggedIn: $isLoggedIn, isOwner: $isOwner)
            if isLoggedIn {
                tabControllerView($isLoggedIn, $isOwner, $items)
                    .transition(.move(edge: .trailing))
            }
        }
    }
}
