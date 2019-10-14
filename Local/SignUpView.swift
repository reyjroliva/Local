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
                Image(systemName: "chevron.left")
                Text("Login")
            }
        }
    }
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10.0) {
                Text("Create an Account with Local!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(UIColor.systemBlue))
                accountInputFieldsView()
                NavigationLink(destination: TabControllerView()) {
                    Text("Sign Up")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 270.0, height: 50.0, alignment: .center)
                }
                .background(Color(UIColor.systemBlue))
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
