//
//  CardRepository.swift
//  ExmplProject
//
//  Created by Hughes, Teo (BJH) on 17/06/2021.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

final class CardRepository:ObservableObject {
    private let store = Firestore.firestore()
    @Published var studyCards: [StudyCard] = []
}
