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
        VStack(alignment: .leading) {
            Text("Account Information")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.top, 10.0)
                .padding(.leading, 18.0)
            TextField("Username", text: $username)
                .frame(width: 250.0, height: 30.0)
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 10.0)
                .padding(.horizontal, 10.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Password", text: $password)
                .frame(width: 250.0, height: 30.0)
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 15.0)
                .padding(.horizontal, 10.0)
                .textContentType(.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .background(Color(UIColor.systemBlue))
        .cornerRadius(15.0)
    }
}

struct accountInputFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        accountInputFieldsView()
    }
}
