//
//  SocialMediaView.swift
//  Local
//
//  Created by Rey Oliva on 11/5/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct socialMediaView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Welcome to Local's Feed!")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color(UIColor.systemBlue))
            Text("Follow us on:")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color(UIColor.systemBlue))
            HStack(alignment: .center, spacing: 5.0) {
                Image(systemName: "camera.fill")
                    .font(.title)
                    .foregroundColor(Color(UIColor.systemPink))
                Text("Local")
                    .font(.headline)
                Image(systemName: "paperplane.fill")
                    .font(.title)
                    .foregroundColor(Color(UIColor.systemBlue))
                Text("@Local")
                    .font(.headline)
                Image(systemName: "faceid")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(UIColor.blue))
                Text("@Local")
                    .font(.headline)
            }
        }
    }
}

struct socialMediaView_Preview: PreviewProvider {
    static var previews: some View {
        socialMediaView()
    }
}
