//
//  Person.swift
//  HW4
//
//  Created by Сергей Долгих on 24.10.2020.
//
struct Person {
    let user: String
    let password: String
    let fullName: String
    let biography: String
    let hobby: String
}

extension Person {
    static func getPerson() -> Person {
        return Person(
            user: "Sergey",
            password: "123",
            fullName: "Sergey Dolgikh",
            biography: "Тут должен быть текст с биографией.",
            hobby: "Мое хобби кататься на велосипеде и шить всякие кошелечки из натуральной кожи."
        )
    }
}
