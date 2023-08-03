//
//  ContentView.swift
//  toDoList
//
//  Created by Sunny Moon on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context
    @State private var showNewTask = false
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults<ToDo>
    var body: some View {
        ZStack{
            Color(red: 248/255, green: 189/255, blue: 196/255)
                .ignoresSafeArea()
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
        }
        List {
            
                    ForEach (toDoItems) { toDoItem in
                        if toDoItem.isImportant == true {
                         Text("‼️" + (toDoItem.title ?? "No title"))
                        } else {
                             Text(toDoItem.title ?? "No title")
                        }
                        }
                        .onDelete(perform: deleteTask)
            
        }
        .listStyle(.plain)
        .animation(.easeOut, value: showNewTask)
        
        if showNewTask {
          newToDo(showNewTask: $showNewTask, title: "", isImportant: false)
                }
    }
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
