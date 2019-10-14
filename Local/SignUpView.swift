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
    @Binding var showingSignUpSheet: Bool
    @State private var showingSignUpAlert = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10.0) {
                Text("Create an Account with Local!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(UIColor.systemBlue))
                accountInputFieldsView()
                Button(action: {
                    self.showingSignUpAlert = true
                }) {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .alert(isPresented: $showingSignUpAlert, content: { () -> Alert in
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
        }
    }
}
