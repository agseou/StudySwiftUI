//
//  TossUI.swift
//  StudySwiftUI
//
//  Created by eunseou on 4/15/24.
//

import SwiftUI

struct TossUIView: View {
    var body: some View {
        ZStack {
            Color.black // backgroundColor
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Image(systemName: "sparkles")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 10)
                
                Text("포인트를 더 모을 수 있게 맞춤 혜택을\n추천해드릴까요?")
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 40)
                
                VStack(alignment: .leading,spacing: 30) {
                    HStack {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.blue)
                        Text("매일 포인트 받는 출석체크 퀴즈")
                            
                    }
                    HStack {
                        Image(systemName: "circle.fill")
                            .foregroundColor(.red)
                        Text("새로운 이벤트")
                    }
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("미션추천")
                    }
                }
                .font(.system(size: 18))
                
                Spacer()
                
                Text("[선택] 맞춤형 서비스 이용동의")
                    .foregroundStyle(.gray)
                    .padding(.bottom, 20)
                
                VStack {
                    Button("동의하기") {
                        print("tap 버튼")
                    }
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(.blue)
                    .clipShape(.buttonBorder)
                    .padding(.bottom, 20)
                    
                    Button("다음에 하기") {
                        print("tap 버튼")
                    }
                    .foregroundStyle(.gray)
                }
                .fontWeight(.bold)
            } // VStack
            .foregroundColor(.white)
            .padding(.horizontal)
        } // ZStack
    }
}

#Preview {
    TossUIView()
}
