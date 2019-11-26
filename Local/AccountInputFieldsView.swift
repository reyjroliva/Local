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
    @Binding var username: String
    @Binding var password: String
    
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
    @State static var username_Preview = ""
    @State static var password_Preview = ""
    static var previews: some View {
        accountInputFieldsView(username: $username_Preview, password: $password_Preview)
    }
}
