//
//  EnglishWord.swift
//  EnglishMaster
//
//  Created by KimJS on 2022/05/30.
//

import Foundation
import Combine

struct EnglishWord: Codable{//, Identifiable {
    //var id: Int
    var name: String
    //var nameBox: [String]
    
    init(from decoder: Decoder) throws {
        var container = try decoder.singleValueContainer()
        self.name = try container.decode(String.self)
        //nameBox = try decoder.singleValueContainer().decode([String].self)
        //var container = try decoder.unkeyedContainer()
    }
}
