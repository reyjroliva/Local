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
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            List(selection: $selection) {
                ForEach(0..<15) { _ in
                    Button(action: {
                        self.isPresented.toggle()
                    }) {
                        homeItemView()
                    }
                    .sheet(isPresented: self.$isPresented) {
                        homeItemDetailView()
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .sheet(isPresented: $isPresented) {
            homeItemDetailView()
        }
    }
}

struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
