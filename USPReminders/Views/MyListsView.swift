//
//  MyListsView.swift
//  USPReminders
//
//  Created by joe on 11/11/25.
//

import SwiftUI

struct MyListsView: View {
    @StateObject var vm: MyListsViewModel
    
    init(vm: MyListsViewModel) {
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            List {
                Text("My Lists")
                
                ForEach(vm.myLists) { myList in
                    NavigationLink {
                        MyListItemsHeaderView(name: myList.name, count: 6, color: myList.color)
                        
                        MyListItemsView()
                    } label: {
                        HStack {
                            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                                .font(.title)
                                .foregroundStyle(myList.color)
                            Text(myList.name)
                        }
                    }
                    .contextMenu {
                        Button {
                            vm.delete(myList)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    let context = CoreDataManager.shared.persistentContainer.viewContext
    MyListsView(vm: MyListsViewModel(context: context))
}
