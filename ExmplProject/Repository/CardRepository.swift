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
    private let path = "StudyCards"
    private let store = Firestore.firestore()
    @Published var studyCards: [StudyCard] = []
    
    init() {
        get()
    }
    
    func get() {
        store.collection(path).addSnapshotListener { (snapshot, error) in
            if let error = error {
                print(error)
                return
            }
            self.studyCards = snapshot?.documents.compactMap {
                try? $0.data(as: StudyCard.self)
            } ?? []
        }
    }
    
    func add(_ studyCard: StudyCard) {
        do {
            _ = try store.collection(path).addDocument(from: studyCard)
        } catch {
            fatalError("Adding a study card failed")
        }
        
    }
}
