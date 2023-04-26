//
//  BHSLinkView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Quinn Kozak on 4/19/23.
//

import SwiftUI

struct BHSLinkView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
    
            VStack(spacing:0) {
                Text("Barrington High School Links").font(.system(size: 20)).fontWeight(.heavy).padding()
                
                Rectangle().fill(.black).frame(width: 1000, height: 15).position(y:0)
                    .background(Color.red)
                Link("BHS Homepage", destination: URL(string: "https://bhs.barrington220.org/")!)
                    .buttonStyle(CustomButtonStyle2())
                    .position(x: 200, y: -50)
                    .background(Color.red)
                    
                Link("BHS District Calendar", destination: URL(string: "https://bhs.barrington220.org/district-calendar")!)
                    .buttonStyle(CustomButtonStyle2())
                    .position(x: 200, y: -50)
                    .background(Color.red)
                    
                Link("Infinite Campus Student Login", destination: URL(string: "https://barrington220.infinitecampus.org/campus/portal/students/barrington.jsp?status=login")!).buttonStyle(CustomButtonStyle2())
                    .position(x: 200, y: -50)
                    .background(Color.red)
                    .navigationBarItems(leading: Button("Back") {
                        presentationMode.wrappedValue.dismiss()
                        
                    })
                Link("Schoology Student Login", destination: URL(string: "https://barrington220.schoology.com/home")!).buttonStyle(CustomButtonStyle2())
                    .position(x: 200, y: -50)
                    .background(Color.red)
                    .navigationBarItems(leading: Button("Back") {
                        presentationMode.wrappedValue.dismiss()
                        
                    })
            }
        }
        
        
    }
}

struct BHSLinkView_Previews: PreviewProvider {
    static var previews: some View {
        BHSLinkView()
    }
}
