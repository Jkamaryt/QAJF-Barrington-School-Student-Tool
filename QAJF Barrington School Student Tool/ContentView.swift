//
//  ContentView.swift
//  QAJF Barrington School Student Tool
//
//  Created by QAJF on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingHomeworkPlannerView = false
    var body: some View {
        NavigationView {
            
            // ScrollView(.vertical) { //scroll down for more tools
            ZStack {
            
                VStack(spacing:0) {
                    Text("Barrington High School Student Tool").font(.system(size: 20)).fontWeight(.heavy).padding()
                
                    Rectangle().fill(.black).frame(width: 1000, height: 15).position(y:0)
                        .background(Color.red)
                    Button(action: {showingHomeworkPlannerView = true}) {
                        Text("Homework Planner")
                    }
                        .padding().frame(width: 300, height: 20).position(x:200, y:-60).background(Color.red)
                    
                }.fullScreenCover(isPresented: $showingHomeworkPlannerView, content:{ HomeworkPlannerView()})
                
              }
              
            
                    
            
            
            
        
                       // Text("Yay! Something is on the screen")
                       // Text("Hi")
                      //  Text("Hi")
                    
                   
                        //List{
                         //   Text("Item")
                       // }
                    
                }
            //}
               
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
