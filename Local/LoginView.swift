//
//  ContentView.swift
//  Local
//
//  Created by Rey Oliva on 9/29/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import SwiftUI

struct loginView: View {
    @State var signUpSheetPresented = false
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10.0) {
                accountInputFieldsView()
                NavigationLink(destination: tabControllerView()) {
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
                .sheet(isPresented: $signUpSheetPresented, content: {
                    signUpView(showingSignUpSheet: self.$signUpSheetPresented)
                })
                    .background(Color(UIColor.systemBlue))
                    .cornerRadius(15.0)
            }
            .navigationBarTitle(Text("Welcome To Local!"), displayMode: .large)
            .fixedSize(horizontal: true, vertical: true)
        }
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}
