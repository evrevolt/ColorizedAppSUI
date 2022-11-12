//
//  ContentView.swift
//  ColorizedAppSUI
//
//  Created by Геннадий Ведерников on 12.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColor = getRangeDouble()
    @State private var greenColor = getRangeDouble()
    @State private var blueColor = getRangeDouble()
    
    var body: some View {
        ZStack {
            
            //Во что могу))))
            LinearGradient(
                stops: [SwiftUI.Gradient.Stop(color: .red, location: 0.0), SwiftUI.Gradient.Stop(color: .blue, location: 0.5), SwiftUI.Gradient.Stop(color: .green, location: 1.0)],
                startPoint: .top,
                endPoint: .bottom
            )
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
                .transition(.scale)
                .animation(.default, value: redColor)
                
                SliderView(sliderValue: $redColor, color: .red)
                SliderView(sliderValue: $greenColor, color: .green)
                SliderView(sliderValue: $blueColor, color: .blue)
                Spacer()
                Button(action: {
                    
                    redColor = getRangeDouble()
                    greenColor = getRangeDouble()
                    blueColor = getRangeDouble()
                    
                }) {
                    Text("Get Random Color")
                }.buttonStyle(CustomButtonStyle())
            }
            .padding()
        }
    }
}

private func getRangeDouble () -> Double {
    Double.random(in: 0...255)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
