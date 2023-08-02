//
//  listItem.swift
//  toDoList
//
//  Created by Sunny Moon on 8/1/23.
//

import Foundation

class toDoItem: Identifiable {

    var id = UUID()
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}
