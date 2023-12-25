
import SwiftUI

struct UISliderRepresentation: View, UIViewRepresentable {
    @Binding var value: Int
    var result: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100

        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: Double(computeScore())/100)
        print(computeScore()/100)
    }
    
    private func computeScore() -> Int {
        let difference = abs(result - lround(Double(value)))
        return 100 - difference
    }
    

}

#Preview {
    UISliderRepresentation(value: .constant(35), result: 13)
}
