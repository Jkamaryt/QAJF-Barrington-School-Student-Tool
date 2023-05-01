//
//  TeacherDirectoryView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Jack Kamaryt on 4/18/23.
//

import SwiftUI

struct TeacherDirectoryView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var oo = SearchObservableObject()
    @State private var searchText: String = ""
    var body: some View {
        NavigationView{
            VStack{
                Text("Begin typing the name of your teacher above to find more information about them!").font(.caption)
                    .position(x:180, y:20)
                    .foregroundColor(Color.gray)
                    
                    
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarItems(leading: Button("Back") {
                presentationMode.wrappedValue.dismiss()})
            .navigationBarTitle("Teacher Directory", displayMode: .inline)
        }
        .searchable(text: $searchText)
        {
            ForEach(oo.searchResults) { teacher in
                TeacherRowView(teacher: teacher)
            }
        }
        .onChange(of: searchText) { searchText in
            oo.searchResults = oo.data.filter({ teacher in
                teacher.name.lowercased().contains(searchText.lowercased())
            })
        }
    }
}

struct TeacherDirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherDirectoryView()
    }
}

//struct TeachersNames{
  //  var teachers = ""
//}
