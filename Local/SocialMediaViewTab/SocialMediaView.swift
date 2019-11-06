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
        ScrollView {
            Divider()
            Text("Welcome to Local's Feed!")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color(UIColor.systemBlue))
            Text("Follow us on:")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color(UIColor.systemBlue))
            HStack(alignment: .center, spacing: 5.0) {
                Spacer()
                Image(systemName: "camera.fill")
                    .font(.title)
                    .foregroundColor(Color(UIColor.systemPink))
                Text("Local")
                    .font(.headline)
                Spacer()
                Image(systemName: "paperplane.fill")
                    .font(.title)
                    .foregroundColor(Color(UIColor.systemBlue))
                Text("@Local")
                    .font(.headline)
                Spacer()
                Image(systemName: "faceid")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(UIColor.blue))
                Text("@Local")
                    .font(.headline)
                Spacer()
            }
            Divider()
            ForEach(posts) { post in
                socialMediaItemView(post: post)
                .padding()
                Divider()
            }
        }
    }
}

struct socialMediaView_Preview: PreviewProvider {
    static var previews: some View {
        socialMediaView()
    }
}
