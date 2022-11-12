//
//  SliderView.swift
//  ColorizedAppSUI
//
//  Created by Геннадий Ведерников on 12.11.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted())
                .frame(width: 40)
            Slider(
                value: $sliderValue,
                in: 0...255
            )
            .colorMultiply(color)
            
            TextFieldView(sliderValue: $sliderValue)
            
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea()
            SliderView(sliderValue: .constant(100), color: .red)
        }
    }
}

