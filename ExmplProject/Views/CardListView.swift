//
//  ContentView.swift
//  ExmplProject
//
//  Created by Hughes, Teo (BJH) on 17/06/2021.
//

import SwiftUI

struct CardListView: View {
    @ObservedObject var cardListViewModel: CardListViewModel
    
    var body: some View {
        VStack {
            List(cardListViewModel.studyCards) { card in
                Text(card.question)
            }
            Button("Add Mock Question") {
                let card = StudyCard(question: "exsa", answer: "ans")
                cardListViewModel.add(card)
            }
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView(cardListViewModel: CardListViewModel())
    }
}
