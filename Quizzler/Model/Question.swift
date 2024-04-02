//
//  Question.swift
//  Quizzler
//
//  Created by Alex Sison on 4/2/24.
//

import Foundation

struct Question {
    let text: String
    let answer: String

    init(q: String, a: String) {
        text = q
        answer = a
    }
}
