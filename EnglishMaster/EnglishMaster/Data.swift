////
////  Data.swift
////  EnglishMaster
////
////  Created by KimJS on 2022/05/30.
////
//
//import Foundation
//import SwiftUI
//
//enum NetworkError: Error {
//    case invalidURL
//    case unsuccessfulResponse
//    case APIInvalidResponse
//    case unknownError(message: String)
//    
//    var localizedDescription: String {
//        switch self {
//        case .invalidURL:
//            return "Invalid URL"
//        case .unsuccessfulResponse:
//            return "Unsuccessful Response"
//        case .APIInvalidResponse:
//            return "API Invalid Response"
//        case .unknownError(let message):
//            return "Unknown error : \(message)"
//        }
//    }
//}
//
//struct EnglishMan : Codable {
//    var results: [EnglishItem]
//}
//
//struct EnglishItem: Codable {
//    var id = UUID()
//    var words: [String]
//}
//
//class Api {
//    
//    let urlString: String = "..." // 주소
//    
//    func getEnglishItems() {
//        let session = URLSession.shared
//        let url = URL(string: urlString)!
//        
//        let task = session.dataTask(with: url) {data, response, error in
//            let successRange = 200..<300
//
//            guard let resultData = data else {
//                // 오류
//                return
//            }
//            
//            if error != nil {
//                // 오류
//                return
//            }
//            guard let httpResponse = response as? HTTPURLResponse, successRange.contains(httpResponse.statusCode) else {
//                // 오류
//                return
//            }
//            
//            guard let mime = response?.mimeType, mime == "application/json" else {
//                // 오류. wrong mime type
//                return
//            }
//            
//            do {
////                let decoder = JSONDecoder()
//                if let response = try JSONDecoder().decode([EnglishItem].self, from: resultData) {
//                    
//                }
//            } catch {
//                fatalError("Couldn't parse : \(error)")
//            }
//        }
//        
//        task.resume()
//    }
//}
