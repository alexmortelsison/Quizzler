//
//  ViewController.swift
//  Quizzler
//
//  Created by Alex Sison on 4/2/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var trueButton: UIButton!

    let quiz = [Question(q: "Albert Einstein had trouble with mathematics when he was in school.", a: "False"),
                Question(q: "The vapor produced by e-cigarettes is actually water.", a: "False"),
                Question(q: "Anatomy considers the forms of macroscopic structures such as organs and organ systems.", a: "True"),
                Question(q: "Instant mashed potatoes were invented by Canadian Edward Asselbergs in 1962.", a: "True"),
                Question(q: "Tupac Shakur died due to complications from being stabbed in 1996.", a: "False"),
                Question(q: "In \"Star Trek\", Klingons are aliens.", a: "True")
    
    ]

    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerPresssedButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer

        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    
    }

    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
}
