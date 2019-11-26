//
//  SignUpView.swift
//  Local
//
//  Created by Rey Oliva on 10/1/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct signUpView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var showingSignUpSheet: Bool
    
    @State private var showingSignUpAlert = false
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        Background {
            VStack(alignment: .center, spacing: 10.0) {
                Text("Create an Account with Local!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(UIColor.systemBlue))
                accountInputFieldsView(username: self.$username, password: self.$password)
                Button(action: {
                    self.showingSignUpAlert = true
                }) {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .alert(isPresented: self.$showingSignUpAlert, content: { () -> Alert in
                    Alert(title: Text("Sign Up Successful!")
                        .font(.title)
                        .foregroundColor(Color(UIColor.systemBlue)),
                          message: Text("You can now log in from the login screen."),
                          dismissButton: .default(Text("OK"), action: {
                            self.showingSignUpSheet = false;
                          })
                    )
                })
                    .background(Color(UIColor.systemBlue))
                    .cornerRadius(15.0)
                    .padding(.bottom, 325.0)
            }
        }.onTapGesture {
            self.endEditing()
        }
    }
    
    private func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
    }
}
