import Foundation
import Observation

enum Player {// stexceci erktipani enum vory aveli apahovum e xaxacoxneri mijev tarberutyuny
    case X
    case O
}

//class TicTacModel: ObservableObject {
//    @Published var gameMessage: String = ""
//    @Published var board:[Player?] = Array(repeating: nil, count: 9) // sa michapani 9 bgganoc zangvac e vory karox e krknvel
//    @Published var activePlayer:Player = .X//uni tarber arjeqner X ev O
//    @Published var winner:Player? = nil//ev karox e unenal naev nil arjeq
//    
//    func buttonTap(i:Int) {//yst funci parametri in int tipi eev anuny buttonTap e
//        guard board[i] == nil && winner == nil else {//aystex stugum e ardyoq sexmvac vandaky datark e? kam xaxum arden ka? haxtox
//            return//hakarak depqum uxxaki durs ari funcic
//        }
//        board[i] = activePlayer
//        
//        if checkWinner() {
//           winner = activePlayer
//            gameMessage = "ho ho ho \(activePlayer) has won the game"
//        }else if !board.contains(nil) {
//            gameMessage = "ho ho ho  it's a draw!"
//        }else {
//            activePlayer = (activePlayer == .X) ? .O : .X
//            gameMessage = "Current Player: \(activePlayer)"
//        }
//    }
//    
//    func buttonLabel(i:Int) -> String {//xaxataxtaki indeqsy int tipi e
//        if let player = board[i] {//stugum e ardyoq  ayd vandaky arden zbaxvac e xaxaxcoxi koxmic ete ayo uremn playerin veragrir ayd arjeqy
//            return player == .X ? "X" : "O"// ete player == .X i arjeqy "X" e uremn player == .O i arjeqy klini "O"
//        }
//        return ""// ete vandaky nil e veradarcru datark tox
//    }
//    
//    func resetGame() {
//        board = Array(repeating: nil, count: 9)//stexcum e nor 9 bggani zangvac ortex bolori skzbnakan arjeqy nil e
//        activePlayer = .X//xaxy sksvum e noric ev arajiny "X" xaxacoxne
//        winner = nil// isk verjum winnerin veragrum e datark arjeq
//    }
//    
//    func checkWinner() -> Bool{
//        for i in stride(from: 0, to: 9, by: 3) {//stugum e toxerov haxtely
//            if board[i] == activePlayer && board[i+1] == activePlayer && board[i+2] == activePlayer {
//                return true
//            }
//        }
//        for i in 0..<3 {//stugum e syunerov haxtely
//            if board[i] == activePlayer && board[i+3] == activePlayer && board[i+6] == activePlayer {
//                return true
//            }
//        }
//        if board[0] == activePlayer && board[4] == activePlayer && board[8] == activePlayer {//ev stugum e ankyunagcerov haxtely
//            return true
//        }
//        if board[2] == activePlayer && board[4] == activePlayer && board[6] == activePlayer {
//            return true
//        }
//        return false// verjum misht veradarcnum e false arjeqy
//    }
//}

@Observable
class TicTacModel {
    var gameMessage: String = ""
    var board: [Player?] = Array(repeating: nil, count: 9) // sa michapani 9 bgganoc zangvac e vory karox e krknvel
    var activePlayer: Player = .X//uni tarber arjeqner X ev O
    var winner: Player? = nil//ev karox e unenal naev nil arjeq
    
    func buttonTap(i: Int) {//yst funci parametri in int tipi eev anuny buttonTap e
        guard board[i] == nil && winner == nil else {//aystex stugum e ardyoq sexmvac vandaky datark e? kam xaxum arden ka? haxtox
            return//hakarak depqum uxxaki durs ari funcic
        }
        board[i] = activePlayer
        
        if checkWinner() {
           winner = activePlayer
            gameMessage = "ho ho ho \(activePlayer) has won the game"
        } else if !board.contains(nil) {
            gameMessage = "ho ho ho  it's a draw!"
        } else {
            activePlayer = (activePlayer == .X) ? .O : .X
            gameMessage = "Current Player: \(activePlayer)"
        }
    }
    
    func buttonLabel(i: Int) -> String {//xaxataxtaki indeqsy int tipi e
        if let player = board[i] {//stugum e ardyoq  ayd vandaky arden zbaxvac e xaxaxcoxi koxmic ete ayo uremn playerin veragrir ayd arjeqy
            return player == .X ? "X" : "O"// ete player == .X i arjeqy "X" e uremn player == .O i arjeqy klini "O"
        }
        return ""// ete vandaky nil e veradarcru datark tox
    }
    
    func resetGame() {
        board = Array(repeating: nil, count: 9)//stexcum e nor 9 bggani zangvac ortex bolori skzbnakan arjeqy nil e
        activePlayer = .X//xaxy sksvum e noric ev arajiny "X" xaxacoxne
        winner = nil// isk verjum winnerin veragrum e datark arjeq
    }
    
    func checkWinner() -> Bool{
        for i in stride(from: 0, to: 9, by: 3) {//stugum e toxerov haxtely
            if board[i] == activePlayer && board[i+1] == activePlayer && board[i+2] == activePlayer {
                return true
            }
        }
        for i in 0..<3 {//stugum e syunerov haxtely
            if board[i] == activePlayer && board[i+3] == activePlayer && board[i+6] == activePlayer {
                return true
            }
        }
        if board[0] == activePlayer && board[4] == activePlayer && board[8] == activePlayer {//ev stugum e ankyunagcerov haxtely
            return true
        }
        if board[2] == activePlayer && board[4] == activePlayer && board[6] == activePlayer {
            return true
        }
        return false// verjum misht veradarcnum e false arjeqy
    }
}
