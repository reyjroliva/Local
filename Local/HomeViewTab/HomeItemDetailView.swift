//
//  HomeItemDetailView.swift
//  Local
//
//  Created by Rey Oliva on 10/16/19.
//  Copyright © 2019 Rey Oliva. All rights reserved.
//

import Foundation
import SwiftUI
import MessageUI

struct homeItemDetailView: View {
    @Binding var showingItemDetailView: Bool
    @Binding var itemArray: [Item]
    @State var item: Item
    @State var isOwner: Bool
    
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State private var isShowingItemDeleteAlert = false
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10.0) {
                Image(systemName: "rectangle.grid.1x2")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 300.0)
                    .font(.largeTitle)
                    .background(Color.red)
                    .cornerRadius(15.0)
                Text("\(item.name)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 15.0)
                ScrollView {
                    Text("\(item.description)")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                Divider()
                if !isOwner {
                    Button(action: {
                        self.isShowingMailView.toggle()
                    }) {
                        HStack(alignment: .center) {
                            Text("Purchase")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                            Spacer()
                            Text("$\(item.price, specifier: "%.2f")")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                        }
                        .padding(EdgeInsets(top: 0.0, leading: 20.0, bottom: 0.0, trailing: 20.0))
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50.0)
                    .background(Color(UIColor.systemBlue))
                    .cornerRadius(15.0)
                }
                if isOwner {
                    Button(action: {
                        self.isShowingItemDeleteAlert = true
                    }) {
                        Text("Delete Item")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50.0)
                    .background(Color(UIColor.systemRed))
                    .cornerRadius(15.0)
                    .alert(isPresented: self.$isShowingItemDeleteAlert) { () -> Alert in
                        Alert(title: Text("Are You Sure You Want to Delete \(self.item.name)?")
                            .font(.title)
                            .foregroundColor(Color(UIColor.systemBlue)),
                              message: Text("Deleting this item will remove it from your current list of products."),
                              primaryButton: .destructive(Text("Delete"), action: {
                                self.isShowingItemDeleteAlert = false
                                deleteItemFromList(items: &self.itemArray, item: self.item)
                                self.showingItemDetailView = false
                              }),
                              secondaryButton: .cancel({
                                self.isShowingItemDeleteAlert = false
                              }))
                    }
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding()
            if(isShowingMailView) {
                mailView()
                    .transition(.move(edge: .bottom))
                    .animation(.default)
            }
        }
    }
    
    private func mailView() -> some View {
        MFMailComposeViewController.canSendMail() ?
            AnyView(MailView(isShowing: $isShowingMailView, result: $result, item: $item)) :
            AnyView(Text("Can't send emails from this device"))
    }
}

struct homeItemDetailView_Previews: PreviewProvider {
    @State static var previewShowingItemDetailView = false
    @State static var previewItemsArray = [Item(name: "Some name", price: 5.0, description: "Some description")]
    @State static var item = Item(name: "Test Item", price: 4.20, description: "This is a test description")
    @State static var previewIsOwner = false
    static var previews: some View  {
        homeItemDetailView(showingItemDetailView: $previewShowingItemDetailView, itemArray:$previewItemsArray, item: item, isOwner: previewIsOwner)
    }
}
