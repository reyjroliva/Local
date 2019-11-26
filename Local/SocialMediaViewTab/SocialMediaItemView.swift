//
//  SocialMediaItemView.swift
//  Local
//
//  Created by Rey Oliva on 11/6/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct mediaPost: Identifiable {
    var id = UUID()
    var image: Image
    enum postSource {
        case ig, tw, fb
    }
    var source: postSource
}

struct socialMediaItemView: View {
    var post: mediaPost
    
    var body: some View {
        return ZStack(alignment: .bottomTrailing) {
            post.image
                .font(.largeTitle)
                .frame(minWidth: 0, idealWidth: 300, maxWidth: 500, minHeight: 300, idealHeight: 300, maxHeight: 300)
            if(post.source == .ig) {
                Image("Instagram")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            } else if(post.source == .tw) {
                Image("Twitter")
                    .resizable()
                    .frame(width: 40, height: 40)
            } else if (post.source == .fb){
                Image("Facebook")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
        .background(Color(UIColor.systemGray))
    }
}

struct socialMediaItemView_Preview: PreviewProvider {
    @State static var previewPost = mediaPost(image: Image(systemName: "circle.grid.2x2.fill"), source: mediaPost.postSource.fb)
    static var previews: some View {
        socialMediaItemView(post: previewPost)
    }
}
