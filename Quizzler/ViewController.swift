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

    let quiz = ["Albert Einstein had trouble with mathematics when he was in school.",
                "The vapor produced by e-cigarettes is actually water.",
                "Anatomy considers the forms of macroscopic structures such as organs and organ systems."]

    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = "Four + Two equals Six"
    }

    @IBAction func answerPresssedButton(_ sender: UIButton) {}
}
