
import UIKit

//Задание
enum CarWindowsState {
    case open, close
}

enum CarMotorState {
    case run, stop
}

enum CarCargobay {
    case open, close
}

enum CarTurbo {
    case on, off
}

class Car {
    let wheels: Int = 4
    let brakes: Bool = true
    let redder: Bool = true
    let transmission: Bool = true
}

class Trunk: Car {
    let doors: Int = 4
    let seats: Int = 4
    let maxSpeed: Int = 80
    let trunk: Bool = true
}

class Sport: Car {
    let doors : Int = 2
    let seats: Int = 2
    let maxSpeed: Int = 200
    let trunk: Bool = false
}

class TrunkCar: Trunk {
    var cargoBay: CarCargobay
    init(cargoBay: CarCargobay) {
        self.cargoBay = cargoBay
    }
    
    func cargobayState(action: String) {
        if action == "Open" {
            self.cargoBay = .open
            print("Открыто!")
        } else if action == "Close" {
            self.cargoBay = .close
            print("Закрыто!")
        } else {
            print("Error.")
        }
    }
}

class SportCar: Sport {
    var turbo: CarTurbo
    init(turbo: CarTurbo) {
        self.turbo = turbo
    }
    
    func turboState(action: String) {
        if action == "On" {
            self.turbo = .on
            print("Ускорение!")
        } else if action == "Off" {
            self.turbo = .off
            print("Ускорения нет!")
        } else {
            print("Error.")
        }
    }
}

var trunkCar = TrunkCar(cargoBay: .close)
trunkCar.cargobayState(action: "Open")
trunkCar.doors
trunkCar.transmission


var sportCar = SportCar(turbo: .off)
sportCar.turboState(action: "On")
sportCar.seats
sportCar.maxSpeed
