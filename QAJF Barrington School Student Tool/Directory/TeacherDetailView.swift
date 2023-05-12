//
//  TeacherDetailView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Jack Kamaryt on 5/2/23.
//

import SwiftUI

struct TeacherDetailView: View {
    var teacher: TeacherDataObject
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                HStack{
                    Text(teacher.name)
                        .font(.title)
                    Image(teacher.name)
                        .resizable()
                        .frame(width:100 ,height:100)
                        .padding()
                }
                Text("Title: \(teacher.title)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text("Subject: \(teacher.subject)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text("Email: \(teacher.email)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
    }
    
    struct TeacherDetailView_Previews: PreviewProvider {
        static var previews: some View {
            TeacherDetailView(teacher: TeacherDataObject())
        }
    }
}
