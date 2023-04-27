//
//  AddItemView.swift
//  To-Do List
//
//  Created by Quinn Kozak on 4/17/23.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    static let priorities = ["Choose One", "Homework", "Test", "Quiz", "Paper"]
    static let Class = ["Choose One", "Math", "English", "Science", "Foreign Language", "History", "Fine Arts", "Engineering/Programming"]
    @ObservedObject var toDoList: ToDoList
    @State private var priority = ""
    @State private var classes = ""
    @State private var description = ""
    @State private var dueDate = Date()
    var body: some View {
        NavigationView {
            ZStack{
                Form {
                    Picker("Type of Assignment", selection: $priority) {
                        ForEach(Self.priorities, id: \.self) { priority in
                            Text(priority)
                        }
                    }
                    Picker("Class", selection: $classes) {
                        ForEach(Self.Class, id: \.self) {
                            Classes in Text(Classes)
                        }
                    }
                    TextField("Description (Optional)", text: $description)
                    DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
                }
                .navigationBarTitle("Add New Assignment", displayMode: .inline)
                .navigationBarItems(trailing: Button("Save") {
                    if priority != "Choose One" && classes != "Choose One" && priority.count > 0 && classes.count > 0 {
                        let item = ToDoItem(id: UUID(), priority: priority,classes: classes, description: description, dueDate: dueDate)
                        toDoList.items.append(item)
                        presentationMode.wrappedValue.dismiss()
                    }
                })
            }
            .background(Color.red)
            .scrollContentBackground(.hidden)
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(toDoList: ToDoList())
    }
}
