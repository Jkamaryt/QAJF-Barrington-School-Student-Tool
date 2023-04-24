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
            VStack {
                Link("BHS Homepage", destination: URL(string: "https://bhs.barrington220.org/")!)
                Link("BHS District Calendar", destination: URL(string: "https://bhs.barrington220.org/district-calendar")!)
                Link("Infinite Campus Student Login", destination: URL(string: "https://barrington220.infinitecampus.org/campus/portal/students/barrington.jsp?status=login")!)
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
