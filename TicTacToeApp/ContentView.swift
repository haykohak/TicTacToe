import SwiftUI

//struct ContentView: View {
//    @ObservedObject var ticTac = TicTacModel()
//    
//    var body: some View {
//        VStack {
//            Text("TIC TAC TOE")
//                .font(.system(size: 45, weight: .heavy))
//            
//            let col = Array(repeating: GridItem(.flexible()), count: 3)// stexceci col anunov hastatun popoxakan vory zangvac e ev ir mej ka 3 krknvox ev azat GridItem
//            LazyVGrid(columns: col, content: {//stexceci 3x3 canc vortex bolor bgignery buttonner en ev tveci dranc parametrer orinak erkarutyun,laynutyun,guyn ev ayln
//                ForEach(0..<9) { i in
//                    Button(action: {ticTac.buttonTap(i: i)}, label: {
//                        Text(ticTac.buttonLabel(i: i))
//                            .frame(width: 100, height: 100)
//                            .background(.blue)
//                            .foregroundStyle(.white)
//                            .font(.system(size: 45, weight: .heavy))
//                    })
//                }
//            })
//            Text(ticTac.gameMessage)
//                .font(.headline)
//                .padding()
//                .foregroundColor(.green)
//            .padding(.bottom)//apahoveci taracytyun dranc mej
//            
//            Button(action: {ticTac.resetGame()}, label: {// stexceci kojak vori anuny "Restart Game" e ev tveci dran parametrer ev vory katarum e restart game() hramany
//                Text("RESTART GAME")
//                    .frame(width: 200, height: 50)
//                    .background(.blue)
//                    .foregroundStyle(.white)
//                    .font(.system(size: 25, weight: .heavy))
//                    .clipShape(.capsule)
//            })
//        }
//        .padding()
//    }
//}

#Preview {
    ContentView()
}


struct ContentView: View {
    @State var ticTac = TicTacModel()

    var body: some View {
        VStack {
            Text("TIC TAC TOE")
                .font(.system(size: 45, weight: .heavy))
            
            let col = Array(repeating: GridItem(.flexible()), count: 3)// stexceci col anunov hastatun popoxakan vory zangvac e ev ir mej ka 3 krknvox ev azat GridItem
            LazyVGrid(columns: col, content: {//stexceci 3x3 canc vortex bolor bgignery buttonner en ev tveci dranc parametrer orinak erkarutyun,laynutyun,guyn ev ayln
                ForEach(0..<9) { i in
                    Button(action: {ticTac.buttonTap(i: i)}, label: {
                        Text(ticTac.buttonLabel(i: i))
                            .frame(width: 100, height: 100)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .font(.system(size: 45, weight: .heavy))
                    })
                }
            })
            Text(ticTac.gameMessage)
                .font(.headline)
                .padding()
                .foregroundColor(.green)
            .padding(.bottom)//apahoveci taracytyun dranc mej
            
            Button(action: {ticTac.resetGame()}, label: {// stexceci kojak vori anuny "Restart Game" e ev tveci dran parametrer ev vory katarum e restart game() hramany
                Text("RESTART GAME")
                    .frame(width: 200, height: 50)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .font(.system(size: 25, weight: .heavy))
                    .clipShape(.capsule)
            })
        }
        .padding()
    }
}
