//
//  SliderView.swift
//  ColorizedAppSUI
//
//  Created by Геннадий Ведерников on 12.11.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            
            Text(lround(sliderValue).formatted())
                .frame(width: 40)
            Slider(
                value: $sliderValue,
                in: 0...255
            )
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(100))
    }
}
