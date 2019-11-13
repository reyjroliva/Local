//
//  HomeView.swift
//  Local
//
//  Created by Rey Oliva on 10/15/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
    var description: String
}

struct homeItemView: View {
    var item: Item
    
    var body: some View {
        HStack(alignment: .center, spacing: 5.0) {
            Image(systemName: "rectangle.grid.1x2")
                .font(.largeTitle)
                .frame(width: 75.0, height: 75.0)
                .background(Color.red)
                .cornerRadius(15.0)
            VStack(alignment: .leading) {
                Text("\(item.name)")
                    .font(.title)
                    .fontWeight(.light)
                Text("\(item.description)")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .lineLimit(2)
            }
            .frame(width: 210.0, alignment: .leading)
            Spacer()
        }
        .padding()
        .navigationBarHidden(true)
    }
}

struct homeItemView_Previews: PreviewProvider {
    @State static var item = Item(name: "Test Name", price: 5.0, description: "This is a test description")
    static var previews: some View {
        homeItemView(item: item)
            .previewLayout(.fixed(width: 350, height: 100))
    }
}
