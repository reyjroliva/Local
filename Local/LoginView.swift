//
//  ContentView.swift
//  Local
//
//  Created by Rey Oliva on 9/29/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.blue]
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10.0) {
                loginInputFields()
                NavigationLink(destination: HomeView()) {
                    Text("Login")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .background(Color.blue)
                .cornerRadius(15.0)
                .padding(.bottom, 140.0)
                Text("Don't have an account?")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                NavigationLink(destination: SignUpView()) {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .background(Color.blue)
                .cornerRadius(15.0)
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

struct loginInputFields: View {
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
        .background(Color.blue)
        .cornerRadius(15.0)
    }
}
