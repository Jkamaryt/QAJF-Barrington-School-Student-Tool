//
//  SearchObservableObject.swift
//  QAJF Barrington School Student Tool
//
//  Created by Jack Kamaryt on 4/18/23.
//

import Foundation

class SearchObservableObject: ObservableObject{
    
     var data: [TeacherDataObject] = []
    @Published var searchResults: [TeacherDataObject] = []
    
    init(){
        data = DirectoryData.shared.getData()
    }
    
}
