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
    @State private var username = ""
    @State private var password = ""
    
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
            VStack(alignment: .center) {
                Text("Create and Account with Local!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text("Username")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top, 10.0)
                        .padding(.leading, 10.0)
                        .foregroundColor(.white)
                    TextField("Username", text: $username)
                        .frame(width: 250.0, height: 30.0)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading, 10.0)
                        .padding(.trailing, 10.0)
                    Text("Password")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.top, 20.0)
                        .padding(.leading, 10.0)
                        .foregroundColor(.white)
                    TextField("Password", text: $password)
                        .frame(width: 250.0, height: 30.0)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading, 10.0)
                        .padding(.trailing, 10.0)
                        .padding(.bottom, 15.0)
                }
                .background(Color.blue)
                .cornerRadius(15.0)
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
