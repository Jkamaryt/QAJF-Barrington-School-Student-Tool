//
//  ContentView.swift
//  QAJF Barrington School Student Tool
//
//  Created by QAJF on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
           // ScrollView(.vertical) { //scroll down for more tools
                VStack {
                   
                        Text("Yay! Something is on the screen")
                        Text("Hi")
                        Text("Hi")
                    
                   
                        List{
                            Text("Item")
                        }
                    
                }
            //}
            .navigationTitle("Home View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
