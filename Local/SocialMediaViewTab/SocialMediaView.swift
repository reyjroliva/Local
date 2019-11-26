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
    @State var posts = [mediaPost(image: Image(systemName: "square.and.arrow.up"), source: .ig),
                        mediaPost(image: Image(systemName: "trash"), source: .ig),
                        mediaPost(image: Image(systemName: "cloud.snow.fill"), source: .fb),
                        mediaPost(image: Image(systemName: "cloud.bolt"), source: .tw),
                        mediaPost(image: Image(systemName: "flame.fill"), source: .fb),
                        mediaPost(image: Image(systemName: "timelapse"), source: .tw),
                        mediaPost(image: Image(systemName: "mic.fill"), source: .ig),
                        mediaPost(image: Image(systemName: "suit.heart.fill"), source: .fb),
                        mediaPost(image: Image(systemName: "bell"), source: .ig),
                        mediaPost(image: Image(systemName: "bolt.fill"), source: .fb),
                        mediaPost(image: Image(systemName: "flashlight.on.fill"), source: .tw)]
    
    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            socialMediaHeaderView()
            ScrollView {
                ForEach(posts) { post in
                    socialMediaItemView(post: post)
                        .padding()
                    Divider()
                }
            }
        }
    }
}

struct socialMediaView_Preview: PreviewProvider {
    static var previews: some View {
        socialMediaView()
    }
}

struct socialMediaHeaderView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10.0) {
            Text("Follow us on:")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color(UIColor.systemBlue))
            HStack(alignment: .center, spacing: 5.0) {
                Spacer()
                Image("Instagram")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Local")
                    .font(.headline)
                Spacer()
                Image("Twitter")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("@Local")
                    .font(.headline)
                Spacer()
                Image("Facebook")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("@Local")
                    .font(.headline)
                Spacer()
            }
            Divider()
        }
    }
}
