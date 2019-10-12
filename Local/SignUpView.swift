//
//  SignUpView.swift
//  Local
//
//  Created by Rey Oliva on 10/1/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var backBtn : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image("ic_back")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Text("< Login")
            }
        }
    }
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10.0) {
                Text("Create an Account with Local!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                signUpInputFields()
                NavigationLink(destination: HomeView()) {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .background(Color.blue)
                .cornerRadius(15.0)
                .padding(.bottom, 325.0)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backBtn)
    }
}

struct SignUpView_Preview: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct signUpInputFields: View {
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
