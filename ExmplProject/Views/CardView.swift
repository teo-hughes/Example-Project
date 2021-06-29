//
//  CardView.swift
//  ExmplProject
//
//  Created by Hughes, Teo (BJH) on 17/06/2021.
//

import SwiftUI

struct CardView: View {
    
    @State private var flipped = false
    var cardViewModel: CardViewModel
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(flipped ? Color.red: Color.blue)
            .frame(height: 150)
            .overlay(
                ZStack {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: cardViewModel.studyCard.passed ? "star.fill" : "star")
                            Spacer()
                        }
                    }
                    Text(flipped ? cardViewModel.studyCard.answer : cardViewModel.studyCard.question)
                        .foregroundColor(flipped ? Color.black : Color.white)
                        .font(.custom("Avenir", size:25))
                }.padding()
            )
            .onTapGesture {
                withAnimation {
                    flipped.toggle()
                }
            }
    }
}
