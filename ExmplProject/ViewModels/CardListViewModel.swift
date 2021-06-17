//
//  CardListViewModel.swift
//  ExmplProject
//
//  Created by Hughes, Teo (BJH) on 17/06/2021.
//

import Combine

final class CardListViewModel: ObservableObject {
    @Published var cardRepository = CardRepository()
    @Published var studyCards: [StudyCard] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        cardRepository.$studyCards
            .assign(to: \.studyCards, on: self)
            .store(in: &cancellables)
    }
    
    func add(_ studyCard: StudyCard) {
        cardRepository.add(studyCard)
    }
}
