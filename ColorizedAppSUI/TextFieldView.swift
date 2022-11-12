//
//  TextFieldView.swift
//  ColorizedAppSUI
//
//  Created by Геннадий Ведерников on 12.11.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        
        TextField("Slider Value", value: $sliderValue, formatter: NumberFormatter())
        
            .textFieldStyle(.roundedBorder)
        
            .frame(width: 50)
            .background(Color(.white))
            .multilineTextAlignment(.trailing)
            .keyboardType(.decimalPad)
        
        //Ввод отключен
            .disabled(true)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(sliderValue: .constant(100))
    }
}
