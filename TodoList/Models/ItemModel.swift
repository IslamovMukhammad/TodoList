//
//  ItemModel.swift
//  TodoList
//
//  Created by Muhammad Islamov on 17/04/22.
//

import Foundation

struct ItemModel: Identifiable {
  let id: String = UUID().uuidString
  let title: String
  let isCompleted: Bool
}
