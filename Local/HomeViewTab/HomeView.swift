//
//  HomeView.swift
//  Local
//
//  Created by Rey Oliva on 10/15/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI

struct homeView: View {
    @State var isOwner: Bool
    @Binding var items: [Item]
    
    @State var selection: Int? = nil
    @State var isPresented = false
    @State var itemCreationPresented = false
    @State var itemToPresent = Item(name: "Filler", price: 5.0, description: "Even more filler about the filler")
//    @State var items = [Item(name: "Item 1", price: 4.20, description: "This is a description for Item 1, ya herrddd")]
    @State var isShowingItemDeleteCompletion = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            if isOwner {
                Button(action: {
                    self.itemCreationPresented.toggle()
                }) {
                    HStack(alignment: .center) {
                        Spacer()
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Text("Add Item")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                }
                .sheet(isPresented: self.$itemCreationPresented) {
                    homeItemCreationView(showingItemCreationSheet: self.$itemCreationPresented, itemArray: self.$items)
                }
                .frame(height: 60.0)
                .background(Color(UIColor.systemBlue))
                .cornerRadius(15.0)
                .padding(5.0)
            }
            Divider()
            ScrollView {
                ForEach(items.reversed()) { item in
                    Button(action: {
                        self.isPresented.toggle()
                        self.itemToPresent = item
                    }) {
                        homeItemView(item: item)
                    }
                    .foregroundColor(Color(UIColor.black))
                    .sheet(isPresented: self.$isPresented) {
                        homeItemDetailView(showingItemDetailView: self.$isPresented, itemArray: self.$items, item: self.itemToPresent, isOwner: self.isOwner)
                    }
                }
            }
            
        }
    }
}

func addItemToList(items: inout [Item], name: String, price: Double, description: String) {
    let newItem = Item(name: name, price: price, description: description)
    items.append(newItem)
}

func deleteItemFromList(items: inout [Item], item: Item) {
    for(index, listing) in items.enumerated()
    {
        if(listing.id == item.id) {
            items.remove(at: index)
        }
    }
}

struct homeView_Preview: PreviewProvider {
    @State static var items_preview = [Item(name: "Item 1", price: 4.20, description: "This is a description for Item 1, ya herrddd")]
    static var previews: some View {
        homeView(isOwner: false, items: $items_preview)
    }
}
