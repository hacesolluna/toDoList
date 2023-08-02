//
//  ContentView.swift
//  toDoList
//
//  Created by Sunny Moon on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @State var toDoItems: [toDoItem] = []
    var body: some View {
        VStack{
            HStack{
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                        .font(.system(size: 40))
                }
            }
            .padding()
            Spacer()
        }
        List {
            
                    ForEach (toDoItems) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                        }
            
        }
        .listStyle(.plain)
        if showNewTask {
            newToDo(toDoItems: $toDoItems, showNewTask: $showNewTask, title: "", isImportant: false)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
