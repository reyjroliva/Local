//
//  HomeView.swift
//  Local
//
//  Created by Rey Oliva on 10/15/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct homeItemView: View {
    @State var isPresented = false
    
    var body: some View {
        Button(action: {
            self.isPresented.toggle()
        }) {
            HStack(alignment: .center, spacing: 5.0) {
                Image(systemName: "rectangle.grid.1x2")
                    .font(.largeTitle)
                    .frame(width: 75.0, height: 75.0)
                    .background(Color.red)
                    .cornerRadius(15.0)
                VStack(alignment: .leading) {
                    Text("Item Name")
                        .font(.title)
                        .fontWeight(.light)
                    Text("Description goes here, what happens when the desctiption gets super long?")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .lineLimit(2)
                }
                .frame(width: 210.0, alignment: .leading)
                Spacer()
            }
            .padding()
        }
        .sheet(isPresented: $isPresented) {
            homeItemDetailView()
        }
    }
}

struct homeItemView_Previews: PreviewProvider {
    static var previews: some View {
        homeItemView()
            .previewLayout(.fixed(width: 350, height: 100))
    }
}
