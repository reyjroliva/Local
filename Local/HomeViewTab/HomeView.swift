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
    @State var selection: Int? = nil
    @State var isPresented = false
    @State var itemToPresent = Item(name: "Bullshit", description: "Even more bullshit about the bullshit")
    @State var items = [Item(name: "Item 1", description: "This is a description for Item 1, ya herrddd"), Item(name: "Item 2", description: "This is a description for Item 2, ya herrddd"), Item(name: "Item 3", description: "This is a description for Item 3, ya herrddd"), Item(name: "Item 4", description: "This is a description for Item 4, ya herrddd"), Item(name: "Item 5", description: "This is a description for Item 5, ya herrddd"), Item(name: "Item 6", description: "This is a description for Item 6, ya herrddd"), Item(name: "Item 7", description: "This is a description for Item 7, ya herrddd"), Item(name: "Item 8", description: "This is a description for Item 8, ya herrddd"), Item(name: "Item 9", description: "This is a description for Item 9, ya herrddd"), Item(name: "Item 10", description: "This is a description for Item 10, ya herrddd"), Item(name: "Item 11", description: "This is a description for Item 11, ya herrddd"), Item(name: "Item 12", description: "This is a description for Item 12, ya herrddd")]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0.0) {
                Divider()
                Button(action: {
                    self.addItemToList()
                    print("add item pressed")
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
                .frame(height: 60.0)
                .background(Color(UIColor.systemBlue))
                .cornerRadius(15.0)
                .padding(5.0)
                Divider()
                ScrollView {
                    ForEach(items) { item in
                        Button(action: {
                            self.isPresented.toggle()
                            self.itemToPresent = item
                        }) {
                            homeItemView(item: item)
                        }
                        .foregroundColor(Color(UIColor.black))
                        .sheet(isPresented: self.$isPresented) {
                            homeItemDetailView(item: self.itemToPresent)
                        }
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
    }
    
    func addItemToList() {
        let newItem = Item(name: "New Items", description: "this is a new description")
        items.append(newItem)
    }
}

struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
