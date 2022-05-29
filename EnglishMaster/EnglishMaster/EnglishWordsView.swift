//
//  EnglishWordsView.swift
//  EnglishMaster
//
//  Created by KimJS on 2022/05/30.
//

import SwiftUI

struct EnglishWordsView: View {
    @StateObject var englishModel = EnglishViewModel()
    
    
    var body: some View {
        List(englishModel.words) { word in
            Text(word.name)
        }
        .task {
            await self.englishModel.reload()
        }
        .refreshable {
            await self.englishModel.reload()
        }
    }
}

struct EnglishWordsView_Previews: PreviewProvider {
    static var previews: some View {
        EnglishWordsView()
    }
}
