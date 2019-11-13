//
//  HomeItemCreationView.swift
//  Local
//
//  Created by Rey Oliva on 11/8/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class UserData: ObservableObject  {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var text = "" {
        didSet {
            didChange.send(self)
        }
    }
    
    init(text: String) {
        self.text = text
    }
}

struct MultilineTextView: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        self.text = view.text
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

struct homeItemCreationView: View {
    @Binding var showingItemCreationSheet: Bool
    @Binding var itemArray: [Item]
    
    @State private var itemName = ""
    @State private var stringPrice = ""
    @State private var description = ""
    @State private var price = 0.0
    
    var body: some View {
        VStack {
            Text("Create A New Item")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(UIColor.systemBlue))
            VStack {
                TextField("Item Name", text: $itemName)
                    .frame(width: 250.0)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(EdgeInsets(top: 15.0, leading: 10.0, bottom: 10.0, trailing: 10.0))
                TextField("Price", text: $stringPrice)
                    .keyboardType(.decimalPad)
                    .frame(width: 250.0)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 0.0, trailing: 10.0))
                TextField("Description",text: $description)
                    .frame(width: 250.0)
                    .background(Color.white)
                    .cornerRadius(5.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(EdgeInsets(top: 10.0, leading: 10.0, bottom: 15.0, trailing: 10.0))
            }
            .background(Color(UIColor.systemBlue))
            .cornerRadius(15.0)
            Button(action:{
                self.price = Double(self.stringPrice)!
                addItemToList(items: &self.itemArray, name: self.itemName, price: self.price, description: self.description)
                self.showingItemCreationSheet = false
            }) {
                Text("Create")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
            }
            .frame(width: 270, height: 50, alignment: .center)
            .background(Color(UIColor.systemBlue))
            .cornerRadius(15)
            .padding(.bottom, 50.0)
        }
    }
}

struct homeItemCreationView_Preview: PreviewProvider {
    @State static var previewItemsArray = [Item(name: "Some name", price: 5.0, description: "Some description")]
    @State static var previewShowingItemCreationSheet = true
    static var previews: some View {
        homeItemCreationView(showingItemCreationSheet: $previewShowingItemCreationSheet ,itemArray: $previewItemsArray)
    }
}
