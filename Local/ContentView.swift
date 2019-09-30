//
//  ContentView.swift
//  Local
//
//  Created by Rey Oliva on 9/29/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome to Local!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("Username")
                .font(.headline)
                .padding(EdgeInsets(top: 50.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
            TextField("Username", text: $username)
                .frame(width: 250.0, height: 30.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(EdgeInsets(top: 10.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
            Text("Password")
                .font(.headline)
                .padding(EdgeInsets(top: 20.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
            TextField("Password", text: $password)
                .frame(width: 250.0, height: 30.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(EdgeInsets(top: 10.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
            Button(action: {}) {
                Text("Login")
                    .font(.title)
            }
            .padding(EdgeInsets(top: 50.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
            Text("Don't have an account?")
                .font(.footnote)
                .padding(EdgeInsets(top: 100.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
            Button(action: {}) {
                Text("Sign Up")
                    .font(.title)
            }
            .padding(EdgeInsets(top: 10.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
