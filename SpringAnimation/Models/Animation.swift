//
//  Animation.swift
//  SpringAnimation
//
//  Created by Кирилл Слюсарь on 29.06.2023.
//


struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double // задаем все свойства
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    } // и вычисялемое свойство
    
    static func getRandomAnimation() -> Animation { //  статичный метод можно вызвать без создания экземпляра
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "slideLeft", // обращаемся к хранилищу и вытаскиваем нужно значение
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
