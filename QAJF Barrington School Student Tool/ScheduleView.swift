//
//  ScheduleView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Quinn Kozak on 4/26/23.
//

import SwiftUI

struct ScheduleView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack(spacing:0) {
                Group {
                    Text("Barrington High School Schedule").font(.system(size: 20)).fontWeight(.heavy).padding()
                    
                    Rectangle().fill(.black).frame(width: 1000, height: 15).position(y:0)
                        .background(Color.red)
                    HStack {
                        Text("1").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                            
                      
                        Text("08:30 - 09:18").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                    HStack {
                        Text("2").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        
                        Text("09:23 - 10:10").font(.headline).padding().background(
                            .black).foregroundColor(.white)
                        .cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                    HStack {
                        Text("3").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        
                        Text("10:15 - 11:02").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                    HStack {
                        Text("4").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        
                        Text("11:07 - 11:54").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                    HStack {
                        Text("5").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        
                        Text("11:57 - 12:46").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                    HStack {
                        Text("6").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        
                        Text("12:51 - 01:38").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                    HStack {
                        Text("7").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        
                        Text("01:43 - 02:30").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                    HStack {
                        Text("8").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        
                        Text("02:35 - 03:22").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0)
                            
                    }.background(Color.red)
                }
                
            }
            
                .navigationBarItems(leading: Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                    
                })
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
