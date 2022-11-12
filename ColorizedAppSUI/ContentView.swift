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
                ColorView(redColor: redColor,
                          greenColor: greenColor,
                          blueColor: blueColor
                )
                
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
