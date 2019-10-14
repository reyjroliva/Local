//
//  AccountInputFieldsView.swift
//  Local
//
//  Created by Rey Oliva on 10/14/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct accountInputFieldsView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text("Username")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.top, 10.0)
                .padding(.leading, 10.0)
            TextField("Username", text: $username)
                .frame(width: 250.0, height: 30.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 10.0)
                .padding(.horizontal, 10.0)
            Text("Password")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.top, 10.0)
                .padding(.leading, 10.0)
            TextField("Password", text: $password)
                .frame(width: 250.0, height: 30.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 15.0)
                .padding(.horizontal, 10.0)
        }
        .background(Color(UIColor.systemBlue))
        .cornerRadius(15.0)
    }
}

struct AccountInputFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        accountInputFieldsView()
    }
}