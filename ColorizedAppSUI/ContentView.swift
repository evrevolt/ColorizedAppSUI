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
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
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
                
                SliderView(sliderValue: $redColor, color: .red)
                SliderView(sliderValue: $greenColor, color: .green)
                SliderView(sliderValue: $blueColor, color: .blue)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
