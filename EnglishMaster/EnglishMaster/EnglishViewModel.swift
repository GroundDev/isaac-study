//
//  EnglishViewModel.swift
//  EnglishMaster
//
//  Created by KimJS on 2022/05/30.
//

import Foundation
import Combine

typealias EnglishBox = [EnglishWord]
//@MainActor
class EnglishViewModel: ObservableObject {

    @Published var words: EnglishBox = []
    
    func reload() async {
        let successRange = 200..<300
        let url = URL(string: "https://random-word-api.herokuapp.com/word?number=5")!
        let urlSession = URLSession.shared
        do {
            let (data, response) = try await urlSession.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse, successRange.contains(httpResponse.statusCode) else {
                // 오류처리
                return
            }
            self.words = try JSONDecoder().decode(EnglishBox.self, from: data)
        } catch {
            // 오류처리
            // fatalError("Data couldn't be loaded : \(error)")
        }
    }
}
