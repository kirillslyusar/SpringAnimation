//
//  DataStore.swift
//  SpringAnimation
//
//  Created by Кирилл Слюсарь on 29.06.2023.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore() // делаем синголтон(одну точку доступа к хранилищу)
    
    let animations: [AnimationPreset] = [ //массив кейсов
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .zoomIn,
        .wobble,
        .zoomOut
    ]
    
    let curves = AnimationCurve.allCases // массив кривых, метод allCases позволяет обратится ко все кейсам, но он должен быть подписан под CaseIterable
    
    private init() {} // приватный инициализатор нужен для того, чтобы нигде больше нельзя было создать экземпляр класса
}

