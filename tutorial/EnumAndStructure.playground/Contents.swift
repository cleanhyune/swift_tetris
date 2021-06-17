import UIKit

enum Days : Int {
    
    case mon = 5
    case tue, wed, thu, fri, sat, sun
    
    func simplePrint() -> String {
        
        switch self {
        case .sat, .sun:
            return "주말입니다."
        default:
            return "평일입니다."
        }
    }
    
}

let day = Days.tue

print(day.simplePrint())

enum CardType : String, CaseIterable {
    case spade, heart, clover, diamond
    
    func symbol() -> String {
        switch self {
        case .spade:
            return "♠️"
        case .heart:
            return "❤️"
        case .clover:
            return "♣️"
        case .diamond:
            return "♦️"
        }
    }
}

struct Card {
    var symbol : CardType
    var value: Int
    
    init(symbol: CardType, value: Int) {
        self.symbol = symbol
        self.value = value
    }
    
    func printCard() -> String {
        return "\(self.symbol.symbol())\(printFormat())"
    }
    
    func printFormat() -> String {
        switch self.value {
        case 10:
            return "J"
        case 11:
            return "Q"
        case 12:
            return "K"
        default:
            return String(value)
        }
    }
}

var deck:[Card] = []

CardType.allCases.forEach({ symbol in
    for index in 1...12 {
        let card = Card(symbol: symbol, value: index)
        deck.append(card)
    }
})

deck.shuffle()

let card = deck.first
deck.removeFirst()
