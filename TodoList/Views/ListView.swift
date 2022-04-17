//
//  ListView.swift
//  TodoList
//
//  Created by Muhammad Islamov on 17/04/22.
//

import SwiftUI

struct ListView: View {

  @State var items: [ItemModel] = [
    ItemModel(title: "This is first title!", isCompleted: false),
    ItemModel(title: "This is second!", isCompleted: true),
    ItemModel(title: "Third!", isCompleted: false)

  ]

    var body: some View {
      List{
        ForEach(items) { item in
          ListRowView(item: item)
        }
      }
      .listStyle(PlainListStyle())
      .navigationTitle("Todo List 📝")
      .navigationBarItems(
        leading: EditButton(),
        trailing:
          NavigationLink("Add", destination: AddView())
      )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView{
        ListView()
      }
    }
}

