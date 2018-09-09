//
//  main.swift
//  leetcode
//
//  Created by xiepengxiang on 2018/7/24.
//  Copyright © 2018年 OFBank. All rights reserved.
//

import Foundation

//var someInts = [Int]()
//
//someInts.append(1)
//
//someInts = []
//
//print(someInts)
//
//var threeDoubles = Array(repeating: 0.0, count: 3)
//
//var anotherDoubles = Array(repeating: 2.6, count: 3)
//
//var sixDoubles = threeDoubles + anotherDoubles
//
//print(sixDoubles)
//
//if sixDoubles.isEmpty {
//
//    print(sixDoubles.count)
//}
//
//
//for (index, value) in sixDoubles.enumerated() {
//    print("item \(index): \(value)")
//}
//
//
//
//var letters = Set<Character>()
//
//letters.insert("1")
//
//letters.remove("1")
//
//
//
//let oddDigits: Set = [1, 3, 5, 7, 9];
//
//let evenDigits: Set = [0, 2, 4, 6, 8];
//
//let singleDigitPrimeNumbers: Set = [2, 3,5, 7]
//
//
//print(oddDigits.union(evenDigits).sorted())
//
//print(oddDigits.intersection(evenDigits).sorted())
//
//print(oddDigits.subtracting(evenDigits).sorted())
//
//print(oddDigits.symmetricDifference(evenDigits).sorted())





//var numbersOfIntegers = [Int: String]()
//
//numbersOfIntegers[16] = "sixteen"
//
//print(numbersOfIntegers)
//
//numbersOfIntegers = [:]
//
//print(numbersOfIntegers)






//let base = 3
//
//let power = 10
//
//var answer = 1
//
//for _ in 1...power {
//    answer *= base
//}
//
//print(answer)
//
//
//
//let minutes = 60
//
//for tickMark in 0 ..< minutes {
//    print(tickMark)
//}
//
//
//let minuteInterval = 5
//
//// 右侧开区间
//for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
//    print(tickMark)
//}
//
//// 右侧闭区间
//for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
//    print(tickMark)
//}




//let approximateCount = 62
//
//let countedThings = "moons orbiting Saturn"
//
//let naturalCount: String
//
//switch approximateCount {
//case 0:
//    naturalCount = "no"
//
//case 1 ..< 5:
//    naturalCount = "a few"
//
//case 5 ..< 12:
//    naturalCount = "several"
//
//case 12 ..< 100:
//    naturalCount = "dozens of"
//
//case 100 ..< 1000:
//    naturalCount = "handreds of"
//
//default:
//    naturalCount = "many"
//}
//
//print(naturalCount)
//
//
//let somePoint = (5, 0)
//
//switch somePoint {
//case (0, 0):
//    print("\(somePoint) is at the origin")
//
//case (_, 0):
//    print("\(somePoint) is on the x-axis")
//
//case (0, _):
//    print("\(somePoint) is on the y-axis")
//
//case (-2...2, -2...2):
//    print("\(somePoint) is inside the box")
//
//default:
//    print("\(somePoint) is outside of the box")
//}
//
//
//switch somePoint {
//case (let x, 0):
//    print("on the x-axis with an x value of \(x)")
//
//case (0, let y):
//    print("on the y-axis with an y value of \(y)")
//
//case (let x, let y):
//    print("somewhere else at (\(x), \(y)")
//}
//
//
//switch somePoint {
//case let (x, y) where x == y:
//    print("(\(x), \(y) is on the line x == y")
//
//case let (x, y) where x == -y:
//    print("(\(x), \(y) is on the line x == -y")
//
//case let (x ,y):
//    print("(\(x), \(y) is just some arbitrary point")
//}



//func sayHelloWorld() -> String {
//    return "Hello World!"
//}
//
//print(sayHelloWorld())
//
//
//func greet(person: String) {
//    print("Hello, \(person)")
//}
//
//func minMax(array: [Int]) -> (min: Int, max: Int)? {
//
//    if array.isEmpty { return nil }
//
//    var currentMin = array[0];
//    var currentMax = array[0];
//
//    for value in array {
//        if currentMin > value {
//            currentMin = value
//        }else if currentMax < value {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//
//if let bounds = minMax(array: [8, -5, 123, 23, 20]) {
//
//    print("min : \(bounds.min), max : \(bounds.max)")
//}
//
//func greet(person: String, from hometown: String) -> String {
//
//    return "Hello \(person)! Glad you could visit from \(hometown)"
//}
//
//print(greet(person: "Bill", from: "Cupertino"))
//
//func greet(_ person: String, _ hometown: String){
//    print("test")
//}
//
//func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
//    repeat {
//
//    } while true
//}
//
//func arithmeticMean(_ numbers: Double ...) -> Double {
//    var total : Double = 0
//
//    for number in numbers {
//        total += number
//    }
//    return total
//}
//
//print(arithmeticMean(1,2,3,4))
//
//
//
//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//
//let mathFunction: (Int, Int) -> Int = addTwoInts
//
//print(mathFunction(1, 2))
//
//func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("Result: \(mathFunction(a, b))")
//}
//
//printMathResult(mathFunction, 3, 5)
//
//
//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepForward : stepBackward
//}
//
//
//let value = 3
//
//let moveFunction = chooseStepFunction(backward: value > 0)
//
//print(moveFunction(3))
//
//
//
//var names = ["Tom", "Jime", "Barry"]
//
//names.sort { (name1, name2) -> Bool in
//    return name1 < name2
//}
//
//print(names)
//
//names.sort(by: { $0 > $1 })
//
//print(names)
//
//
//
//
//func someFunctionThatTakesAClosure(closure: (_ num: Int) -> Void) {
//    print("Function")
//    closure(1)
//}
//
//someFunctionThatTakesAClosure { (num) in
//    print("num is \(num)")
//}
//
//
//
//
//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//
//let numbers = [16, 234, 90]
//
//let result = numbers.map { (num) -> String in
//
//    var num = num
//
//    var output: String = ""
//
//    repeat {
//
//        output = digitNames[num % 10]! + output
//
//        num /= 10
//
//    } while num > 0
//
//    return output
//}
//
//print(result)
//
//
//
//var completionHandlers: [() -> Void] = []
//
//func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
//    completionHandlers.append(completionHandler)
//}
//
//func someFunctionWithNonescapingClouse(clouse: () -> Void) {
//    clouse()
//}
//
//class SomeClass {
//    var x = 10
//
//    func doSomething() {
//        someFunctionWithEscapingClosure {
//            self.x = 10
//        }
//        someFunctionWithNonescapingClouse {
//            x = 200
//        }
//    }
//}
//
//
//let instance = SomeClass()
//
//instance.doSomething()
//
//print(instance.x)
//
//completionHandlers.first?()
//
//print(instance.x)





//enum CompassPoint: String {
//
//    case north
//
//    case south
//
//    case east
//
//    case west
//}
//
//var direction = CompassPoint.north
//
//direction = .east
//
//print(direction.rawValue)
//
//let direction1 = CompassPoint(rawValue: "north")
//
//print(direction1?.rawValue ?? "ceshi")
//
//
//
//
//indirect enum ArithmeticExpression {
//
//    case number(Int)
//
//    case addition(ArithmeticExpression, ArithmeticExpression)
//
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//}
//
//
//let five = ArithmeticExpression.number(5)
//
//let six = ArithmeticExpression.number(6)
//
//let sum = ArithmeticExpression.addition(five, six)
//
//let product = ArithmeticExpression.multiplication(sum, six)
//
//func evaluate(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case let .number(value):
//        return value
//    case let .addition(left, right):
//        return evaluate(left) + evaluate(right)
//    case let .multiplication(left, right):
//        return evaluate(left) * evaluate(right)
//    }
//}
//
//print(evaluate(product))






//struct Resolution {
//    var width = 0
//
//    var height = 0
//}
//
//class VideoModel {
//
//    var resolution = Resolution()
//
//    var interlaced = false
//
//    var frameRate = 0.0
//
//    var name: String?
//}
//
//var re = Resolution(width: 1, height: 1)
//
//var video = VideoModel()




//struct Point {
//
//    var x = 0.0, y = 0.0
//
//    mutating func moveBy(X deltaX: Double, Y deltaY: Double) {
//
//        x += deltaX
//
//        y += deltaY
//    }
//}
//
//struct Size {
//
//    var width = 0.0, height = 0.0
//}
//
//struct Rect {
//
//    var origin = Point()
//
//    var size = Size()
//
//    var center: Point {
//
//        get {
//            let centerX = origin.x + (size.width / 2)
//
//            let centerY = origin.y + (size.height / 2)
//
//            return Point(x: centerX, y: centerY)
//        }
//
//        set (newCenter){
//            origin.x = newCenter.x - (size.width / 2)
//
//            origin.y = newCenter.y - (size.height / 2)
//        }
//    }
//}
//
//
//var square = Rect(origin: Point(x: 0.0, y: 0.0),
//                  size: Size(width: 10.0, height: 10.0))
//
//let initialSquareCenter = square.center
//
//square.center = Point(x: 15.0, y: 15.0)
//
//
//var position = Point(x: 1.0, y: 1.0)
//position.x = 2.0
//
//
//
//
//struct LevelTracker {
//
//    static var highestUnlockedLevel = 1
//
//    var currentLevel = 1
//
//    static func unlock(_ level: Int) {
//
//        if level > highestUnlockedLevel { highestUnlockedLevel = level }
//    }
//
//    static func isUnlocked(_ level: Int) -> Bool {
//        return level <= highestUnlockedLevel
//    }
//
//    @discardableResult
//    mutating func advance(to level: Int) -> Bool {
//        if LevelTracker.isUnlocked(level) {
//
//            currentLevel = level
//
//            return true
//        }else {
//
//            return false
//        }
//    }
//}
//
//
//struct Matrix {
//
//    let rows: Int, columns: Int
//
//    var grid: [Double]
//
//    init(rows: Int, columns: Int) {
//
//        self.rows = rows
//
//        self.columns = columns
//
//        grid = Array(repeating: 0.0, count: rows * columns)
//    }
//
//    func indexIsValid(row: Int, column: Int) -> Bool {
//
//        return row >= 0 && row < rows && column >= 0 && column < columns
//    }
//
//    subscript(row: Int, column: Int) -> Double {
//
//        get {
//
//            assert(indexIsValid(row: row, column: column), "Index is out of range")
//
//            return grid[row * columns + column]
//        }
//
//        set {
//
//            assert(indexIsValid(row: row, column: column), "Index is out of range")
//
//            grid[row * columns + column] = newValue
//        }
//
//    }
//}
//
//
//class Vehicle {
//
//    var currentSpeed = 0.0
//
//    var description: String {
//        return "traveling at \(currentSpeed) miles per hour"
//    }
//
//    func makeNoise() {
//
//    }
//}
//
//class Trine: Vehicle {
//
//    override func makeNoise() {
//        print("Choo Choo")
//    }
//}
//
//let trine = Trine()
//
//trine.makeNoise()
//
//
//class Car: Vehicle {
//
//    var gear = 1
//
//    override var description: String {
//
//        return super.description + "in gear \(gear)"
//    }
//
//}
//
//class AutomaticCar: Car {
//
//    override var currentSpeed: Double {
//
//        didSet {
//
//            gear = Int(currentSpeed / 10.0) + 1
//        }
//    }
//
//}
//
//struct Fahrenheit {
//
//    var temperature: Double
//
////    init() {
////
////        temperature = 32.0
////    }
//}
//
////var f = Fahrenheit()
////
////print("The default temperature is \(f.temperature)")
//
//var fa = Fahrenheit(temperature: 1.0)





//class Vehicle {
//
//    var numberOfWheels = 0
//
//    var description: String {
//
//        return "\(numberOfWheels) wheels"
//    }
//
//}
//
//class Bicycle: Vehicle {
//
//    var price: Double
//
//    override init() {
//
//        price = 100.0
//
//        super.init()
//
//        numberOfWheels = 2
//    }
//
//}
//
//
//class Food {
//
//    var name: String
//
//    init(name: String) {
//
//        self.name = name
//    }
//
//    convenience init() {
//
//        self.init(name: "[Unnameed]")
//    }
//}
//
//let nameMeat = Food(name: "Bacon")
//
//class RecipeIngredient: Food {
//
//    var quantity: Int
//
//    init(name: String, quantity: Int) {
//
//        self.quantity = quantity
//
//        super.init(name: name)
//    }
//
//    convenience override init(name: String) {
//
//        self.init(name: name, quantity: 1)
//    }
//
//}
//
//
//class ShoppingListItem: RecipeIngredient {
//
//    var purchased = false
//
//    var description: String {
//
//        var output = "\(quantity) x \(name)"
//
//        output += purchased ? "✔️" : "❎"
//
//        return output
//    }
//}
//
//
//var breakfastList = [
//
//    ShoppingListItem(),
//
//    ShoppingListItem(name: "Bacon"),
//
//    ShoppingListItem(name: "Eggs", quantity: 6)
//
//]
//
//breakfastList[0].name = "Orange juice"
//
//breakfastList[0].purchased = true
//
//for item in breakfastList {
//
//    print(item.description)
//}
//
//
//
//struct Animal {
//
//    let species: String
//
//    init?(species: String) {
//
//        if species.isEmpty {
//
//            return nil
//        }
//
//        self.species = species
//    }
//}
//
//class Document {
//
//    var name: String?
//
//    init() {}
//
//    init?(name: String) {
//
//        self.name = name
//
//        if name.isEmpty {
//
//            return nil
//        }
//    }
//
//}
//
//class AutomaticallyNameDocument: Document {
//
//    override init() {
//
//        super.init()
//
//        self.name = "[Untitled]"
//    }
//
//    override init(name: String) {
//
//        super.init()
//
//        if name.isEmpty {
//
//            self.name = "[Untitled]"
//        }else {
//
//            self.name = name
//        }
//    }
//
//}
//
//class UntitledDocument: Document {
//
//    override init() {
//
//        super.init(name: "[Untitled]")!
//    }
//
//}




//class Person {
//
//    let name: String
//
//    init(name: String) {
//
//        self.name = name
//    }
//
//    var apartment: Apartment?
//
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//
//}
//
//class Apartment {
//
//    let unit: String
//
//    init(unit: String) {
//
//        self.unit = unit
//    }
//
//    weak var tenant: Person?
//
//    deinit {
//        print("Apartment \(unit) is being deinitialized")
//    }
//}
//
//var john: Person?
//
//var unit4A: Apartment?
//
//john = Person(name: "John Appleseed")
//
//unit4A = Apartment(unit: "4A")
//
//john!.apartment = unit4A
//
//unit4A?.tenant = john
//
//john = nil
//
//unit4A = nil
//
//
//
//class Country {
//
//    let name: String
//
//    var capitalCity: City!
//
//    init(name: String, capitalName: String) {
//
//        self.name = name
//
//        self.capitalCity = City(name: capitalName, country: self)
//    }
//}
//
//class City {
//
//    let name: String
//
//    unowned let country: Country
//
//    init(name: String, country: Country) {
//
//        self.name = name
//
//        self.country = country
//    }
//
//    lazy var someClosure: () -> String = {
//        [unowned self, weak country = self.country] in
//
//        print("\(self)")
//        return self.name
//    }
//
//}



//class Person {
//
//    var residence: Residence?
//
//}
//
//class Residence {
//
//    var numberOfRooms = 1
//
//}
//
//let john = Person()
//
//let roomCount = john.residence?.numberOfRooms




//enum VendingMachineError: Error {
//
//    case invalidSelection
//
//    case insufficientFunds(coinsNeeded: Int)
//
//    case outOfStock
//}
//
//throw VendingMachineError.insufficientFunds(coinsNeeded: 5)
//
//
//func processFile(fileName: String) throws {
//
//    if exists(fileName) {
//
//        let file = open(fileName)
//
//        defer {
//            close(fileName)
//        }
//
//        while let line = try file.readline() {
//
//        }
//
//        // close file 会在此处执行
//    }
//
//}



//class MediaItem {
//
//    var name: String
//
//    init(name: String) {
//
//        self.name = name
//    }
//}
//
//class Movie: MediaItem {
//
//    var director: String
//
//    init(name: String, director: String) {
//
//        self.director = director
//
//        super.init(name: name)
//    }
//}
//
//class Song: MediaItem {
//
//    var artist: String
//
//    init(name: String, artist: String) {
//
//        self.artist = artist
//
//        super.init(name: name)
//    }
//
//}
//
//let library = [
//    Movie(name: "Casablanca", director: "Michael Curtiz"),
//    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
//    Movie(name: "Citizen Kane", director: "Orson Welles"),
//    Song(name: "The One And Only", artist: "Chesney Hawkes"),
//    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
//]
//
//
//var movieCount = 0
//
//var songCount = 0
//
//for item in library {
//
//    if item is Movie {
//
//        movieCount += 1
//
//    } else if item is Song {
//
//        songCount += 1
//    }
//
//}
//
//for item in library {
//
//    if let movie = item as? Movie {
//
//        print("Movie: '\(movie.name)', dir. \(movie.director)")
//    }else if let song = item as? Song {
//
//        print("Song: '\(song.name)', art. \(song.artist)")
//    }
//}




//var things = [Any]()
//
//things.append(0)
//things.append(0.0)
//things.append(34)
//things.append("Hello")
//things.append((3.0, 5.0))
//things.append({(name: String) -> String in "Hello, \(name)"})
//
//
//for thing in things {
//
//    switch thing {
//
//    case 0 as Int:
//        print("zero as an Int")
//
//    case 0 as Double:
//        print("zero as an double")
//
//    case let someInt as Int:
//        print("an integer value f \(someInt)")
//
//    default:
//        print("Default")
//
//    }
//}
//
//let optionalNumber: Int? = 3
//
//things.append(optionalNumber)
//things.append(optionalNumber as Any)



//struct BlackjackCard {
//
//    enum Suit: Character {
//        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
//    }
//
//    enum Rank: Int {
//        case two = 2, three, four, five, six, seven, eight, nine, ten
//
//        case jack, queen, king, ace
//
//        struct Values {
//            let first: Int, second: Int?
//        }
//
//        var values: Values {
//
//            switch self {
//            case .ace:
//
//                return Values(first: 1, second: 11)
//
//            case .jack, .queen, .king:
//
//                return Values(first: 10, second: nil)
//
//            default:
//                return Values(first: self.rawValue, second: nil)
//            }
//
//        }
//
//    }
//
//    let rank: Rank, suit: Suit
//
//    var description: String {
//
//        var output = "suit is \(suit.rawValue),"
//
//        output += " value is \(rank.values.first)"
//
//        if let second = rank.values.second {
//
//            output += " or \(second)"
//        }
//
//        return output
//
//    }
//
//
//}





//extension Double {
//
//    var km: Double { return self * 1_000.0 }
//
//    var m : Double { return self }
//
//    var cm: Double { return self / 100.0 }
//
//    var mm: Double { return self / 1_000.0 }
//
//    var ft: Double { return self / 3.28084 }
//
//}
//
//let oneInch = 25.4.mm
//
//print("One inch is \(oneInch) meters")
//
//let threeFeet = 3.ft
//
//print("Three feet is \(threeFeet) meters")
//
//let aMarathon = 42.km + 195.m
//
//print("A marathon is \(aMarathon) meters long")
//
//
//
//extension Int {
//
//    func repetitions(task: () -> Void) {
//
//        for _ in 0 ..< self {
//
//            task()
//        }
//
//    }
//
//}
//
//
//3.repetitions {
//    print("Hello")
//}
//
//
//extension Int {
//
//    mutating func square(){
//
//        self = self * self
//    }
//
//}
//
//
//var someInt = 3
//
//someInt.square()
//
//print(someInt)
//
//
//extension Int {
//
//    subscript(digitIndex: Int) -> Int {
//
//        var decimalBase = 1
//
//        for _ in 0 ..< digitIndex {
//
//            decimalBase *= 10
//
//        }
//
//        return (self / decimalBase) % 10
//
//    }
//
//}
//
//someInt = 11253
//
//print(someInt[1])
//
//
//
//
//extension Int {
//
//    enum Kind {
//        case Negative, Zero, Positive
//    }
//
//    var kind: Kind {
//
//        switch self {
//
//        case 0:
//            return .Zero
//
//        case let x where x > 0:
//            return .Positive
//
//        default:
//            return .Negative
//        }
//
//    }
//
//}


//
//protocol SomeProtocol {
//
//    var mustBeSettable: Int { set get}
//
//    var doesNotNeedToBeSettable: Int { get }
//}
//
//protocol AnotherProtocol {
//
//    static var someTypeProperty: Int { get set }
//}
//
//protocol FullyNamed {
//
//    var fullName: String { get }
//}
//
//struct Person: FullyNamed {
//
//    var fullName: String
//}
//
//let john = Person(fullName: "John Appleseed")
//
//print(john)
//
//
//class Starship: FullyNamed {
//
//    var prefix: String?
//
//    var name: String
//
//    init(name: String, prefix: String? = nil) {
//
//        self.name = name
//
//        self.prefix = prefix
//    }
//
//    var fullName: String {
//
//        return (prefix != nil ? prefix! + " " : "") + name
//    }
//
//}
//
//protocol RandomNumberGenerator {
//
//    func random() -> Double
//}
//
//class LinderGenerator: RandomNumberGenerator {
//
//    var lastRandom = 42.0
//
//    let m = 139.0
//
//    let a = 189.0
//
//    let c = 123.0
//
//    func random() -> Double {
//
//        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
//
//        return lastRandom / m
//    }
//
//}
//
//protocol Togglable {
//
//    mutating func toggle()
//}
//
//enum OnOffSwitch: Togglable {
//
//    case off, on
//
//    mutating func toggle() {
//
//        switch self {
//        case .off:
//            self = .on
//
//        case .on:
//            self = .off
//        }
//    }
//}
//
//
//var lightSwitch = OnOffSwitch.off
//
//lightSwitch.toggle()
//
//
//
//protocol SomeClassOnlyProtocol: class, Togglable {
//
//
//}


//protocol Named {
//
//    var name: String { get }
//}
//
//protocol Aged {
//
//    var age: Int { get }
//}
//
//struct Person: Named, Aged {
//
//    var name: String
//
//    var age: Int
//
//}
//
//func wishHappyBirthday(to celebrator: Named & Aged) {
//
//    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
//}
//
//let birthdayPerson = Person(name: "Malcolm", age: 21)
//
//wishHappyBirthday(to: birthdayPerson)
//
//
//extension Collection where Iterator.Element: Named {
//
//    var name: String {
//
//        let itemsAsText = self.map { $0.name }
//
//        return "[" + itemsAsText.joined(separator: ",")
//    }
//}





//func swapTwoValues<T>(a: inout T, b: inout T) {
//
//    let temporaryValue = a
//
//    a = b
//
//    b = temporaryValue
//}
//
//var str1 = "Hello"
//
//var str2 = "Hi"
//
//swapTwoValues(a: &str1, b: &str2)
//
//
//
//struct IntStack {
//
//    var items = [Int]()
//
//    mutating func push(_ item: Int) {
//        items.append(item)
//    }
//
//    mutating func pop() -> Int {
//        return items.removeLast()
//    }
//}
//
//
//struct Stack<Element> {
//
//    var items = [Element]()
//
//    mutating func push(_ item: Element) {
//        items.append(item)
//    }
//
//    mutating func pop() -> Element {
//        return items.removeLast()
//    }
//}
//
//extension Stack {
//
//    var topItem: Element? {
//
//        return items.isEmpty ? nil : items[items.count - 1]
//
//    }
//}
//
//
//func findIndex(ofString valueToFind: String, in array: [String]) -> Int? {
//
//    for (index, value) in array.enumerated() {
//
//        if value == valueToFind {
//
//            return index
//        }
//    }
//
//    return nil
//
//}
//
//let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
//if let foundIndex = findIndex(ofString: "llama", in: strings) {
//    print("The index of llama is \(foundIndex)")
//}
//
//
//func findIndex<T: Equatable>(of valueToFind: T, in array: [T]) -> Int? {
//
//    for (index ,value) in array.enumerated() {
//
//        if value == valueToFind {
//
//            return index
//        }
//    }
//
//    return nil
//}




//protocol Container {
//
//    associatedtype ItemType
//
//    mutating func append(_ item: ItemType)
//
//    var count: Int { get }
//
//    subscript(i: Int) -> ItemType { get }
//
//    associatedtype Iterator: IteratorProtocol where Iterator.Element == ItemType
//
//    func makeIterator() -> Iterator
//}

//struct IntStack: Container {
//
//    var items = [Int]()
//
//    mutating func push(_ item: Int) {
//
//        items.append(item)
//    }
//
//    mutating func pop() -> Int {
//
//        return items.removeLast()
//    }
//
//
//    typealias ItemType = Int
//
//    mutating func append(_ item: Int) {
//
//        self.push(item)
//    }
//
//    var count: Int {
//
//        return items.count
//    }
//
//    subscript(i: Int) -> Int {
//
//        return items[i]
//    }
//
//}
//
//struct Stack<Element>: Container {
//
//    var items = [Element]()
//
//    mutating func push(_ item: Element) {
//
//        items.append(item)
//    }
//
//    mutating func pop() -> Element {
//
//        return items.removeLast()
//    }
//
//
//
//    mutating func append(_ item: Element) {
//
//        self.push(item)
//    }
//
//    var count: Int {
//
//        return items.count
//    }
//
//    subscript(i: Int) -> Element {
//
//        return items[i]
//    }
//}
//
//extension Array: Container { }
//
//func allItemsMatch<C1: Container, C2: Container> (_ someContainer: C1, anotherContainer: C2) -> Bool
//    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable {
//
//        if someContainer.count != anotherContainer.count {
//
//            return false
//        }
//
//        for i in 0 ..< someContainer.count {
//
//            if someContainer[i] != anotherContainer[i] {
//
//                return false
//            }
//        }
//
//        return true
//}
//
//
//extension Container where ItemType: Equatable {
//
//    func startsWidth(_ item: ItemType) -> Bool {
//
//        return count >= 1 && self[0] == item
//    }
//
//}
//
//if [9, 9, 9].startsWidth(42) {
//
//    print("Array start true")
//
//} else {
//
//    print("Starts with something else")
//}


//protocol ComparableContainer: Container where ItemType: Comparable {
//
//
//}
//
//extension Container {
//
//    subscript<Indices: Sequence>(indices: Indices) -> [ItemType]
//        where Indices.Iterator.Element == Int {
//
//            var result = [ItemType]()
//
//            for index in indices {
//
//                result.append(self[index])
//            }
//
//            return result
//    }
//}




/*
 * 访问冲突
 */
//var stepSize = 1
//
//func increment(_ number: inout Int) {
//
//    number += stepSize
//}
//
//increment(&stepSize)


//func balance(_ x: inout Int, y: inout Int) {
//
//    let sum = x + y
//
//    x = sum / 2
//
//    y = sum - x
//}
//
//var playerOne = 42
//
//var playerTwo = 123
//
//balance(&playerOne, y: &playerTwo)
//
////balance(&playerOne, y: &playerOne)
//
//
//
//struct Player {
//
//    var name: String
//
//    var health: Int
//
//    var energy: Int
//
//    static let maxHealth = 10
//
//    mutating func restoreHealth() {
//
//        health = Player.maxHealth
//    }
//}
//
//extension Player {
//
//    mutating func shareHealth(with teammate: inout Player) {
//
//        balance(&teammate.health, y: &health)
//    }
//
//}
//
//var oscar = Player(name: "Oscar", health: 10, energy: 10)
//
//var maria = Player(name: "Maria", health: 5, energy: 10)
//
//oscar.shareHealth(with: &maria)
//
////oscar.shareHealth(with: &oscar)
//
////balance(&oscar.health, y: &oscar.energy)
//
////var playerInformation = (health: 10, energy: 20)
////
////balance(&playerInformation.health, y: &playerInformation.energy)
//
//
//
//func someFunction() {
//
//    var oscar = Player(name: "Oscar", health: 10, energy: 10)
//
//    balance(&oscar.health, y: &oscar.energy)
//}
//
//someFunction()




//public class SomePublicClass {
//    
//    public var somePublicProperty = 0
//    
//    var someInternalProperty = 0
//    
//    fileprivate fucn someFilePrivateMethod() {}
//    
//    private func somePrivateMethod() {}
//}
//
//class SomeINternalClass {
//    
//    var someInternalProperty
//    
//}


















