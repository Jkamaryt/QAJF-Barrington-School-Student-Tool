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
                    Text("1").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                    Text("2").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                    Text("3").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                    Text("4").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                    Text("5").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                    Text("6").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                    Text("7").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                    Text("8").font(.headline).padding().background(.white).cornerRadius(15)
                        .position(x: 50, y: 0)
                        .background(Color.red)
                }
                Group {
                    Text("8:30 - 9:18").font(.title).padding().background(.white).cornerRadius(15)
                        .position(x: 300, y: 0)
                        .background(Color.red)
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
