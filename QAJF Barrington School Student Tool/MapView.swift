//
//  MapView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Alex Anderson on 4/18/23.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        NavigationView{
           

            VStack(spacing:0){
                Text("What floor are you on ?").font(.system(size:30)).fontWeight(.heavy).bold()
                    .padding()
                Spacer()
                Rectangle().fill(.black).frame(width: 1000, height: 15).position(y:0)
                    .background(Color.red)
                NavigationLink(
                    destination: MapImageView(floorNum: "1F"),label:{Text("1F")})
            .buttonStyle(CustomButtonStyle())
            .position(x:200)
            .background(Color.red)

                
                NavigationLink(
                    destination: MapImageView(floorNum: "2F"),label:{Text("2F")})
                .buttonStyle(CustomButtonStyle())
                .position(x: 200)
                .background(Color.red)
                   
                NavigationLink(
                    destination: MapImageView(floorNum: "3F"),label:{Text("3F")})
                .buttonStyle(CustomButtonStyle())
                .position(x: 200)
                .background(Color.red)

            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width:55)
            .font(Font.custom("Coolvetica", size: 24))
            .padding()
            .background(.black).opacity(configuration.isPressed ? 0.0 : 1.0)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
