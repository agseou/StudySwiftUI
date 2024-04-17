//
//  TamagotchiView.swift
//  StudySwiftUI
//
//  Created by eunseou on 4/17/24.
//

import SwiftUI

struct TamagotchiView: View {
    
    @State var level: Int = 0
    @State var food: Int = 0
    @State var water: Int = 0
    
    @State var inputFood = ""
    @State var inputWater = ""
    
    var body: some View {
        ZStack {
            
            Color(red: 0.85, green: 0.92, blue: 0.95)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("방실방실 다마고치")
                Text("LV\(level) ∙ 밥알 \(food)개 ∙ 물방울 \(water)개")
                HStack {
                    TextField("밥 쥬세요", text: $inputFood)
                        .keyboardType(.numberPad)
                        .frame(width: 150)
                    
                    Button("밥주기") {
                        if inputFood.isEmpty {
                            food += 1
                        } else if let newFood = Int(inputFood) {
                            food += newFood
                        }
                        inputFood = ""
                    }
                }
                HStack {
                    TextField("물 쥬세요", text: $inputWater)
                        .keyboardType(.numberPad)
                        .frame(width: 150)
                    Button("물주기") {
                        if inputWater.isEmpty {
                            water += 1
                        } else if let newWater = Int(inputWater) {
                            water += newWater
                        }
                        inputWater = ""
                    }
                }
            } //: VStack
        } //: ZStack
    }
}


#Preview {
    TamagotchiView()
}
