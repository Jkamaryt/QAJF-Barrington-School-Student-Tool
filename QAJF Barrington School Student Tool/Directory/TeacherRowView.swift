//
//  TeacherRowView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Jack Kamaryt on 4/19/23.
//

import SwiftUI

struct TeacherRowView: View {
    var teacher: TeacherDataObject
    var body: some View {
            HStack{
                Image(teacher.name)
                    .resizable()
                    .frame(width:100 ,height:100)
                    .padding()
                Text(teacher.name)
                    .padding()
            }   
    }
}

struct TeacherRowView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherRowView(teacher: TeacherDataObject.yeet())
    }
}
