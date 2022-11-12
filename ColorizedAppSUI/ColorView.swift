//
//  ColorView.swift
//  ColorizedAppSUI
//
//  Created by Геннадий Ведерников on 12.11.2022.
//

import SwiftUI

struct ColorView: View {
    
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        
        Color(red: redColor/255,
              green: greenColor/255,
              blue: blueColor/255
        )
        .cornerRadius(30)
        .frame(height: 200)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(lineWidth: 4)
                .foregroundColor(.white))
        .transition(.scale)
        .animation(.default, value: redColor)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 100, greenColor: 200, blueColor: 100)
    }
}
