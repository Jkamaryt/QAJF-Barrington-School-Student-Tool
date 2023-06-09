//
//  ContentView.swift
//  QAJF Barrington School Student Tool
//
//  Created by QAJF on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingHomeworkPlannerView = false
    @State private var showingMapView = false
    @State private var showingBHSLinkView = false
    @State private var showingScheduleView = false
    @State private var showingDirectoryView = false
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
                    }.buttonStyle(CustomButtonStyle2())
                        .padding().position(x:200, y:-10).background(Color.red)
                    
                        .fullScreenCover(isPresented: $showingHomeworkPlannerView, content:{ HomeworkPlannerView()})
                    
                    Button(action: {showingMapView = true}) {
                        Text("Map of BHS")
                    }.buttonStyle(CustomButtonStyle2())
                        .padding().position(x:200, y:-70).background(Color.red)
                        .fullScreenCover(isPresented:$showingMapView, content:{ MapView()})
                    
                    Button(action: {showingBHSLinkView = true}) {
                        Text("BHS Links")
                    }.buttonStyle(CustomButtonStyle2())
                    .padding().position(x:200, y:-130).background(Color.red).fullScreenCover(isPresented:$showingBHSLinkView, content:{ BHSLinkView()})
                    Button(action: {showingScheduleView = true}) {
                        Text("BHS Day Schedule")
                    }.buttonStyle(CustomButtonStyle2())
                        .padding().position(x:200, y:-190).background(Color.red)
                        .fullScreenCover(isPresented:$showingScheduleView, content:{ ScheduleView()})
                    
                    Button(action: {showingDirectoryView = true}) {
                        Text("BHS Directory")
                    }.buttonStyle(CustomButtonStyle2())
                        .padding().position(x:200, y:-250).background(Color.red)
                        .fullScreenCover(isPresented:$showingDirectoryView, content:{ TeacherDirectoryView()})
                    
                }
            }
            
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
