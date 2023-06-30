//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Кирилл Слюсарь on 29.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation() // экземпляр модели анимайшен

    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) { //sender нужен для того, что обратиться к тексту кнопки
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in // animateNext нужен для того, чтобы сделать плавный переход от одной анимации к другой
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
            
            animationView.animation = animation.name
            animationView.curve = animation.curve
            animationView.duration = animation.duration
            animationView.force = animation.force
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.getRandomAnimation() // присваеваем обновленную анимацию
            sender.setTitle("Run \(animation.name)", for: .normal) // передаем туда значение кнопки
        }
    }
}



