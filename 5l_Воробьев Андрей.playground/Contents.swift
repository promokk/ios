import UIKit

// ДЗ № 5.
enum CarWindowState {
    case open, close
}

enum CarMotorState {
    case run, stop
}

protocol Car {
    var wheels: Int { get set }
    var brakes: Bool { get set }
    var redder: Bool { get set }
    var transmission: Bool { get set }
    var trunk: Bool { get set }
    var doors: Int { get set }
    var seats: Int { get set }
    var maxSpeed: Int { get set }
    var windows: CarWindowState { get set}
    var motor: CarMotorState { get set}
    
    func windowsState()
    func motorStat()
}

extension Car {
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
}

class TrunkCar: Car {
    var wheels: Int = 4
    var brakes: Bool = true
    var redder: Bool = true
    var transmission: Bool = true
    var trunk: Bool = true
    var doors: Int = 4
    var seats: Int = 4
    var maxSpeed: Int = 80
    var windows: CarWindowState = .close
    var motor: CarMotorState = .stop
    func windowsState() {
    }
    
    func motorStat() {
    }
    
    init(windiws: CarWindowState, motor: CarMotorState) {
        self.windows
        self.motor
    }
}

class SportCar: Car {
    var wheels: Int = 4
    var brakes: Bool = true
    var redder: Bool = true
    var transmission: Bool = true
    var trunk: Bool = false
    var doors: Int = 2
    var seats: Int = 2
    var maxSpeed: Int = 200
    var windows: CarWindowState = .close
    var motor: CarMotorState = .stop
    func windowsState() {
    }

    func motorStat() {
    }
    
    init(widiws: CarWindowState, motor: CarMotorState) {
        self.windows
        self.motor
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Wheels: \(wheels), brakes: \(brakes), redder: \(redder), transmission: \(transmission), trunk: \(trunk), doors: \(doors), seats: \(seats), maxSpeed: \(maxSpeed), windowsState: \(windows), motorState: \(motor)."
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Wheels: \(wheels), brakes: \(brakes), redder: \(redder), transmission: \(transmission), trunk: \(trunk), doors: \(doors), seats: \(seats), maxSpeed: \(maxSpeed), windowsState: \(windows), motorState: \(motor)."
    }
}

var trunkCar = TrunkCar(windiws: .close, motor: .stop)
trunkCar.windowState(action: "Open")
trunkCar.doors
trunkCar.windows

var sportCar = SportCar(widiws: .close, motor: .stop)
sportCar.motorState(action: "Run")
sportCar.maxSpeed
sportCar.motor

print(trunkCar)
print(sportCar)
