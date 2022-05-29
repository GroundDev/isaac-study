////
////  ContentView.swift
////  EnglishMaster
////
////  Created by KimJS on 2022/05/29.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    @StateObject var englishmodel = EnglishViewModel()
//
//    @State private var usercount = 0
//    @State private var item: Int = 0
//    @State private var showAlert: Bool = false
//
//    @State private var results = [EnglishItem]()
//
//    var body: some View {
//        HStack {
//            VStack {
//                TextField (
//                    "숫자를 입력하시오 : 1~15",
//                    value: $usercount,
//                    format: .number
//                )
//                .keyboardType(.decimalPad)
//                .textFieldStyle(.roundedBorder)
//                .foregroundColor(.green)
//                .padding()
//                .background(Color.blue)
//
//                Text("입력받은 숫자 : \(usercount)")
//
//                Button(action: {
//                    saveThis()
//                }, label: {
//                    Text("저장")
//                        .padding()
//                        .font(.callout)
//                        .foregroundColor(.black)
//                        .background(Color.gray)
//                })
//                .alert("숫자만 넣으라니까", isPresented: $showAlert) {
//                    Button("ㅇㅋ", role: .cancel) {}
//                }
//
//                Text("입력받아서 저장된 값: \(item)")
//            }
//
//        }
//    }
//
//
//
//    func saveThis() {
//        if textAppropriate() {
//            item = usercount
//        }
//    }
//
//    func textAppropriate () -> Bool {
//        if type(of: usercount) != Int.self {
//            showAlert.toggle()
//            return false
//        }
//        else {
//            return true
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().preferredColorScheme(.light)
//        ContentView().preferredColorScheme(.dark)
//    }
//}
