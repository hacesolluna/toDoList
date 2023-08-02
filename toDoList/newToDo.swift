//
//  newToDo.swift
//  toDoList
//
//  Created by Sunny Moon on 8/1/23.
//

import SwiftUI

struct newToDo: View {
    @Binding var toDoItems: [toDoItem]
    @Binding var showNewTask: Bool
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack{
            
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $title)
              .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
               .padding()
            Toggle(isOn: $isImportant) {
                            Text("Is it important?")
                        }
            .padding()
            Button(action:{
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }){
                Text("Add")
                .font(.title)
            }
            .padding()
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = toDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
}

struct newToDo_Previews: PreviewProvider {
 
    static var previews: some View {
        newToDo(toDoItems: .constant([]), showNewTask: .constant(true), title: "", isImportant: false)
    }
  
   
    
}
