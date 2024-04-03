//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Alex Sison on 4/3/24.
//

import Foundation

struct QuizBrain {
    let quiz = [Question(q: "Albert Einstein had trouble with mathematics when he was in school.", a: "False"),
                Question(q: "The vapor produced by e-cigarettes is actually water.", a: "False"),
                Question(q: "Anatomy considers the forms of macroscopic structures such as organs and organ systems.", a: "True"),
                Question(q: "Instant mashed potatoes were invented by Canadian Edward Asselbergs in 1962.", a: "True"),
                Question(q: "Tupac Shakur died due to complications from being stabbed in 1996.", a: "False"),
                Question(q: "In \"Star Trek\", Klingons are aliens.", a: "True")]

    var questionNumber = 0
    
    var score = 0

    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            return questionNumber += 1
        } else {
            return reset()
            
        }
    }
    
    mutating func reset() {
        score = 0
        questionNumber = 0
    }
    
}
