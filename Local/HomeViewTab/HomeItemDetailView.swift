//
//  HomeItemDetailView.swift
//  Local
//
//  Created by Rey Oliva on 10/16/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct homeItemDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "rectangle.grid.1x2")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 300.0)
                .font(.largeTitle)
                .background(Color.red)
                .cornerRadius(15.0)
            Text("Item Name")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 15.0)
            Text("Description goes here")
                .font(.body)
                .multilineTextAlignment(.leading)
            Spacer()
            Divider()
            Button(action: {}) {
                HStack(alignment: .center) {
                    Text("Purchase")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("$xx.xx")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                }
                .padding(EdgeInsets(top: 0.0, leading: 20.0, bottom: 0.0, trailing: 20.0))
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50.0)
            .background(Color(UIColor.systemBlue))
            .cornerRadius(15.0)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

struct homeItemDetailView_Previews: PreviewProvider {
    static var previews: some View  {
        homeItemDetailView()
    }
}
