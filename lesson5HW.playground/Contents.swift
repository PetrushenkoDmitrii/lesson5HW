import UIKit

//MARK: TASK1
enum Currency: String {
    case USD = "840"
    case EUR = "978"
    case BYN = "933"
}

func getExchangeRate(from: Currency, to: Currency) -> Double? {
    let usdToEurRate = 0.92
    let eurToUsdRate = 1.08
    let usdToBynRate = 3.27
    let bynToUsdRate = 0.31
    let eurToBynRate = 3.53
   switch (from, to) {
    case (.USD, .EUR):
        return usdToEurRate
    case (.EUR, .USD):
        return eurToUsdRate
    case (.USD, .BYN):
        return usdToBynRate
    case (.BYN, .USD):
        return bynToUsdRate
    case (.EUR, .BYN):
        return eurToBynRate
   default:
       return nil
    }
}

getExchangeRate(from: .BYN , to: .EUR)


func convertCurrency(amount: Double, from: Currency, to: Currency) -> Double? {
    if let exchangeRate = getExchangeRate(from: from , to: to) {
        return exchangeRate * amount
    } else {
        return nil
    }
}

convertCurrency (amount: 32352, from: .USD, to: .BYN)



//MARK: TASK2
enum Grade: Int {
    case A = 90
    case B = 80
    case C = 70
    case D = 60
    case F = 50
}

func getLetterGrade(score: Int) -> Grade? {
    switch score {
    case 90...100:
        return .A
    case 80...89:
        return .B
    case 70...89:
        return .C
    case 60...79:
        return .D
    case 50...59:
        return .F
    default:
        return nil
    }
}

getLetterGrade(score: 75)

func printExamResult(name: String, score: Int) -> String {
    if let letterGrade = getLetterGrade(score: score) {
        return "\(name) получил - \(letterGrade) - \(score)"
    } else {
        return "\(name) получил недопустимый балл - \(score)"
    }
}

printExamResult(name: "Max", score: 12)
printExamResult(name: "Roy", score: 98)
