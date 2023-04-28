//
//  ScheduleView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Quinn Kozak on 4/26/23.
//

import SwiftUI

struct ScheduleView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var period1F = "08:30 - 09:17"
    @State private var period2F = "09:22 - 10:08"
    @State private var period3F = "10:13 - 11:07"
    @State private var period4F = "11:12 - 11:58"
    @State private var period5F = "12:03 - 12:49"
    @State private var period6F = "12:54 - 01:40"
    @State private var period7F = "01:45 - 02:31"
    @State private var period8F = "02:36 - 03:22"
    @State private var fridaySched = true
    var body: some View {
        NavigationView {
            VStack(spacing:0) {
                Toggle("Friday Bell Schedule" , isOn: $fridaySched ).font(.headline).padding().background(
                    .white).foregroundColor(.black)
                Group {
                    Text("Barrington High School Schedule").font(.system(size: 20)).fontWeight(.heavy).padding()
                    
                    Rectangle().fill(.black).frame(width: 1000, height: 15).position(y:0)
                        .background(Color.red)
                    HStack {
                        Text("1").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                            
                        if fridaySched{Text("\(period1F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("08:30 - 09:18").font(.headline).padding().background(
                                    .black).foregroundColor(.white).cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
                    }.background(Color.red)
                    HStack {
                        Text("2").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        if fridaySched{Text("\(period2F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("09:23 - 10:10").font(.headline).padding().background(
                                    .black).foregroundColor(.white)
                                    .cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
                    }.background(Color.red)
                    HStack {
                        Text("3").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        if fridaySched{Text("\(period3F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("10:15 - 11:02").font(.headline).padding().background(
                                    .black).foregroundColor(.white).cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
                    }.background(Color.red)
                    HStack {
                        Text("4").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        if fridaySched{Text("\(period4F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("11:07 - 11:54").font(.headline).padding().background(
                                    .black).foregroundColor(.white).cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
                    }.background(Color.red)
                    HStack {
                        Text("5").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        if fridaySched{Text("\(period5F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("11:57 - 12:46").font(.headline).padding().background(
                                    .black).foregroundColor(.white).cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
                    }.background(Color.red)
                    HStack {
                        Text("6").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        if fridaySched{Text("\(period6F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("12:51 - 01:38").font(.headline).padding().background(
                                    .black).foregroundColor(.white).cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
                    }.background(Color.red)
                    HStack {
                        Text("7").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        if fridaySched{Text("\(period7F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("01:43 - 02:30").font(.headline).padding().background(
                                    .black).foregroundColor(.white).cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
                    }.background(Color.red)
                    HStack {
                        Text("8").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 50, y: 0)
                        if fridaySched{Text("\(period8F)").font(.headline).padding().background(
                            .black).foregroundColor(.white).cornerRadius(15)
                            .position(x: 0, y: 0) } else{
                                Text("02:35 - 03:22").font(.headline).padding().background(
                                    .black).foregroundColor(.white).cornerRadius(15)
                                    .position(x: 0, y: 0)
                            }
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
