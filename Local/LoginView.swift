//
//  ContentView.swift
//  Local
//
//  Created by Rey Oliva on 9/29/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import SwiftUI

struct loginView: View {
    @Binding var isLoggedIn: Bool
    @Binding var isOwner: Bool
    
    @State var signUpSheetPresented = false
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        Background {
            VStack(alignment: .center, spacing: 10.0) {
                Text("Welcome to Local!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .padding(.bottom, 30)
                accountInputFieldsView(username: self.$username, password: self.$password)
                Button(action: {
                    withAnimation {
                        self.endEditing()
                        self.isLoggedIn = true
                        self.isOwner = (self.username == "localOwner" && self.password == "localOwner")
                    }
                }) {
                    Text("Login")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .background(Color(UIColor.systemBlue))
                .cornerRadius(15.0)
                .padding(.bottom, 140.0)
                Text("Don't have an account?")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Button(action: {
                    self.signUpSheetPresented.toggle()
                }) {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .sheet(isPresented: self.$signUpSheetPresented, content: {
                    signUpView(showingSignUpSheet: self.$signUpSheetPresented)
                })
                    .background(Color(UIColor.systemBlue))
                    .cornerRadius(15.0)
            }
        }
    }
    
    private func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
    }
}

struct loginView_Previews: PreviewProvider {
    @State static var isLoggedIn_Preview = false
    @State static var isOwner_Preview = false
    static var previews: some View {
        loginView(isLoggedIn: $isLoggedIn_Preview, isOwner: $isOwner_Preview)
    }
}
