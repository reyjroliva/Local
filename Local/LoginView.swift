//
//  ContentView.swift
//  Local
//
//  Created by Rey Oliva on 9/29/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Username")
                    .font(.headline)
                    .padding(.top, 10.0)
                TextField("Username", text: $username)
                    .frame(width: 250.0, height: 30.0)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.top, 10.0)
                Text("Password")
                    .font(.headline)
                    .padding(.top, 20.0)
                TextField("Password", text: $password)
                    .frame(width: 250.0, height: 30.0)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.top, 10.0)
                NavigationLink(destination: HomeView()) {
                    Text("Login")
                        .font(.title)
                        .foregroundColor(.blue)
                }
                .padding(.top, 25.0)
                Text("Don't have an account?")
                    .font(.footnote)
                    .padding(.top, 100.0)
                NavigationLink(destination: SignUpView()) {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(.blue)
                }
            }
        .navigationBarTitle(Text("Welcome To Local!"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       LoginView()
    }
}
