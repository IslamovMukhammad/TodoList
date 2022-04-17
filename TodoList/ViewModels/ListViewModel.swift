//
//  ListViewModel.swift
//  TodoList
//
//  Created by Muhammad Islamov on 17/04/22.
//

import Foundation

/*
 CRUD FUNCTIONS

 Create
 Read
 Update
 Delete
 */

class ListViewModel: ObservableObject {
  @Published var items: [ItemModel] = []

  init() {
    getItems()
  }

  func getItems() {
    let newItems = [
      ItemModel(title: "This is first title!", isCompleted: false),
      ItemModel(title: "This is second!", isCompleted: true),
      ItemModel(title: "Third!", isCompleted: false)
    ]
      items.append(contentsOf: newItems)
  }

  func deleteItem(indexSet: IndexSet) {
    items.remove(atOffsets: indexSet)
  }

  func moveItem(from: IndexSet, to: Int) {
    items.move(fromOffsets: from, toOffset: to)
  }

  func addItem(title: String) {
    let newItem = ItemModel(title: title, isCompleted: false)
    items.append(newItem)
  }

  func updateItem(item: ItemModel) {
    if let index = items.firstIndex(where: {$0.id == item.id}) {
      items[index] = item.updateCompletion()
    }
  }

}
