import UIKit

// Задание.
enum CarWindowsState {
    case open, close
}

enum CarMotorState {
    case run, stop
}
struct Car {
    let brand: String
    let reales: Int
    var trunk: Double // Вместимость багажника.
    var motor: CarMotorState
    var windows: CarWindowsState
    var bulk: Double // Кол-во груза.
    var freeSpase: Double { // Свободное место в багажнике.
        get {
            return trunk - bulk
        }
    }
    
    mutating func windowState(action: String) {
        if action == "Open" {
            self.windows = .open
            print("Окно открыто.")
        } else if action == "Close" {
            self.windows = .close
            print("Окно закрыто.")
        } else {
            print("Error")
        }
    }
    
    mutating func motorState(action: String) {
        if action == "Run" {
            self.motor = .run
            print("Рум-Рум!!!")
        } else if action == "Stop" {
            self.motor = .stop
            print("Заглушить двигатель!")
        } else {
            print("Error")
        }
    }
    
    mutating func bulkState(action: Double) {
        if action <= trunk {
            self.bulk = action
            print("В багажнике \(bulk) кг груза.")
        } else if action > trunk {
            print("Error")
        }
    }
}

var automobile = Car(brand: "Lada", reales: 1990, trunk: 20, motor: .stop, windows: .close, bulk: 0)
var truck =  Car(brand: "BMW", reales: 2001, trunk: 40, motor: .stop, windows: .close, bulk: 0)


truck.windowState(action: "Open")
truck.windows
truck.bulkState(action: 25)
truck.freeSpase

automobile.motorState(action: "Run")
automobile.motor
automobile.bulkState(action: 15)
automobile.freeSpase




