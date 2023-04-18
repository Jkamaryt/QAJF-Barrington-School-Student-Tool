//
//  ContentView.swift
//  To-Do List
//
//  Created by Quinn Kozak on 4/17/23.
//

import SwiftUI

struct HomeworkPlannerView: View {
    @ObservedObject var toDoList = ToDoList()
    @State private var showingAddItemView = false
    var body: some View {
        NavigationView {
            List {
                ForEach(toDoList.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.priority)
                                .font(.headline)
                            Text(item.description)
                            
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .onMove { indices, newOffset in
                    toDoList.items.move(fromOffsets: indices, toOffset: newOffset)
                }
                .onDelete { indexSet in
                    toDoList.items.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("Homework Planner")
            .sheet(isPresented: $showingAddItemView, content: {
                AddItemView(toDoList: toDoList)
            })
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                showingAddItemView = true}) {
                    Image(systemName: "plus")
                })
        }
    }
}

struct HomeworkPlannerView_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkPlannerView()
    }
}
struct ToDoItem: Identifiable, Codable {
    var id = UUID()
    var priority = String()
    var description = String()
    var dueDate = Date()
}