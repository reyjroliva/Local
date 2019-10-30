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
            VStack(alignment: .center, spacing: 0.0) {
                Divider()
                Button(action: {
                    print("add item pressed")
                }) {
                    HStack(alignment: .center) {
                        Spacer()
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Text("Add Item")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                }
                .frame(height: 60.0)
                .background(Color(UIColor.systemBlue))
                .cornerRadius(15.0)
                .padding(5.0)
                Divider()
                ScrollView {
                    ForEach(0..<15) { _ in
                        Button(action: {
                            self.isPresented.toggle()
                        }) {
                            homeItemView()
                        }
                        .foregroundColor(Color(UIColor.black))
                        .sheet(isPresented: self.$isPresented) {
                            homeItemDetailView()
                        }
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
    }
}

struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
