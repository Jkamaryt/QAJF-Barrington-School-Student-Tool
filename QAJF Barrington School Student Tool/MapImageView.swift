//
//  MapImageView.swift
//  QAJF Barrington School Student Tool
//
//  Created by Alex Anderson on 4/19/23.
//

import SwiftUI

struct MapImageView: View {
    var floorNum: String
    var body: some View {
        Image(floorNum).resizable()
    }
}

struct MapImageView_Previews: PreviewProvider {
    static var previews: some View {
        MapImageView(floorNum: String())
    }
}
