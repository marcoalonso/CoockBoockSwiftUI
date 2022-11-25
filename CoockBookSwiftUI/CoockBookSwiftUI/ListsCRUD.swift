//
//  ListsCRUD.swift
//  CoockBookSwiftUI
//
//  Created by marco rodriguez on 30/09/22.
//

import SwiftUI

struct ListsCRUD: View {
    
    @State private var taskName: String = ""
    @State private var tasks: [String] = []
    
    private func deleteTask(indexSet: IndexSet) {
        indexSet.forEach { index in
            tasks.remove(at: index)
        }
    }
    
    private func moveTask(from source: IndexSet, to destination: Int) {
        tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New Task Name: ", text: $taskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        tasks.append(taskName)
                        taskName = ""
                    } label: {
                        Text("Add Task")
                            .fontWeight(.heavy)
                            .font(.footnote)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue
                                .cornerRadius(20)
                                .shadow(radius: 12)
                            )
                    }
                }
                
                // MARK: - Simple List
                /*
                 List(tasks, id: \.self) { task in
                     Text(task)
                 }.listStyle(PlainListStyle())
                 */
                
                List {
                    ForEach(tasks, id: \.self) { task in
                        Text(task)
                    }.onDelete(perform: deleteTask)
                        .onMove(perform: moveTask)
                    
                }.listStyle(PlainListStyle())
                    .toolbar {
                        EditButton()
                    }
            }.padding()
        }
    }
}

struct ListsCRUD_Previews: PreviewProvider {
    static var previews: some View {
        ListsCRUD()
    }
}
