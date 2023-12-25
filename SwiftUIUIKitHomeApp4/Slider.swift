//
//  Slider.swift
//  SwiftUIUIKitHomeApp4
//
//  Created by Глеб Зобнин on 25.12.2023.
//

import SwiftUI

struct Slider: View {
    @Binding var value: Int
    let result: Int
    
    var body: some View {
        HStack {
            Text("0")
            UISliderRepresentation(value: $value, result: result)
            Text("100")
        }
        .padding()
    }
}

#Preview {
    Slider(value: .constant(35), result: 35)
}
    

