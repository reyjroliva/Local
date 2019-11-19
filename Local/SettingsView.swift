//
//  SettingsView.swift
//  Local
//
//  Created by Rey Oliva on 11/19/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct settingsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {}) {
                Text("Logout")
                    .foregroundColor(Color(UIColor.systemRed))
            }
            .padding(.top, 100)
            Button(action: {})
            {
                HStack {
                    Image(systemName: "camera.fill")
                        .foregroundColor(Color(UIColor.systemBlue))
                    Text("Login to Instagram")
                        .foregroundColor(Color(UIColor.systemBlue))
                }
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(width: .infinity, alignment: .leading)
        .background(Color(UIColor.systemGray))
        .edgesIgnoringSafeArea(.all)
    }
}


struct settingsView_Previews: PreviewProvider {
    static var previews: some View {
        settingsView()
    }
}
