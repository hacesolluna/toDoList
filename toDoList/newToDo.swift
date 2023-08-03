//
//  newToDo.swift
//  toDoList
//
//  Created by Sunny Moon on 8/1/23.
//

import SwiftUI

struct newToDo: View {
//    @Binding var toDoItems: [toDoItem]
    @Environment(\.managedObjectContext) var context
    @Binding var showNewTask: Bool
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        ZStack{
            Color(red: 248/255, green: 189/255, blue: 196/255)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Task title:")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
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
        
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
           try context.save()
        } catch {
           print(error)
        }
        }
}

struct newToDo_Previews: PreviewProvider {
 
    static var previews: some View {
        newToDo(showNewTask: .constant(true), title: "", isImportant: false)
    }
  
   
    
}
