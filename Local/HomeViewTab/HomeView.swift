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
                HStack(alignment: .center) {
                    Spacer()
                    Button(action: {}) {
                        HStack(alignment: .center) {
                            Image(systemName: "plus.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                            Text("Add Item")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .fontWeight(.semibold)
                        }
                    }
                    .frame(width: 250, height: 70)
                    .background(Color(UIColor.systemBlue))
                    .cornerRadius(15.0)
                    Spacer()
                }
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
