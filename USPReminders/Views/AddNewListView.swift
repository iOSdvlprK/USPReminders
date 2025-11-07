//
//  AddNewListView.swift
//  USPReminders
//
//  Created by joe on 11/7/25.
//

import SwiftUI

struct AddNewListView: View {
    @ObservedObject private var vm: AddNewListViewModel
    @Environment(\.dismiss) var dismiss
    
    init(vm: AddNewListViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        Form {
            VStack(alignment: .leading) {
                Text("New List")
                    .font(.headline)
                    .padding(.bottom, 20)
                
                HStack {
                    Text("Name:")
                    TextField("", text: $vm.name)
                }
                
                HStack {
                    Text("Color:")
                    ColorListView(selectedColor: $vm.color)
                }
            }
            
            HStack {
                Spacer()
                Button("Cancel") {
                    dismiss()
                }
                Button("Ok") {
                    vm.save()
                    dismiss()
                }
            }
        }
        .frame(minWidth: 300)
        .padding()
    }
}

#Preview {
    let viewContext = CoreDataManager.shared.persistentContainer.viewContext
    AddNewListView(vm: AddNewListViewModel(context: viewContext))
}
