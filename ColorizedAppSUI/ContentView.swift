//
//  ContentView.swift
//  ColorizedAppSUI
//
//  Created by Геннадий Ведерников on 12.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColor = Double.random(in: 0...255)
    @State private var greenColor = Double.random(in: 0...255)
    @State private var blueColor = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 200)
                .overlay(Rectangle().stroke(lineWidth: 4))
                .cornerRadius(40)
                .foregroundColor(Color(red: redColor/255, green: greenColor/255, blue: blueColor/255))
            SliderView(sliderValue: $redColor)
            SliderView(sliderValue: $greenColor)
            SliderView(sliderValue: $blueColor)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
