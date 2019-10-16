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
    var body: some View {
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
                Text("Description goes her, what happens when the desctiption gets super long?")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .lineLimit(2)
            }
            .frame(width: 200.0, alignment: .leading)
            Spacer()
            Image(systemName: "chevron.right")
                .font(.title)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct homeItemView_Previews: PreviewProvider {
    static var previews: some View {
        homeItemView()
    }
}
