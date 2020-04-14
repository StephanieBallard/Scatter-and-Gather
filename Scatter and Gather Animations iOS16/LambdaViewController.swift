//
//  LambdaViewController.swift
//  Scatter and Gather Animations iOS16
//
//  Created by Stephanie Ballard on 4/14/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class LambdaViewController: UIViewController {

    var isScattered: Bool = false
    
    @IBOutlet weak var letterLTextLabel: UILabel!
    @IBOutlet weak var letterATextLabel: UILabel!
    @IBOutlet weak var letterMTextLabel: UILabel!
    @IBOutlet weak var letterBTextLabel: UILabel!
    @IBOutlet weak var letterDTextLabel: UILabel!
    @IBOutlet weak var secondLetterATextLabel: UILabel!
    @IBOutlet weak var lambdaImage: UIImageView!
    
    @IBOutlet var lambdaLetters: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func startAnimations() {
        lambdaImage.alpha = 0
        UIView.animate(withDuration: 3) {
            self.lambdaImage.alpha = 1
        }
        for letter in self.lambdaLetters {
                letter.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0.7...1))
            }
            
            for letter in self.lambdaLetters {
                letter.textColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0.7...1))
            }
        }
    
    @IBAction func toggleButtonPressed(_ sender: UIBarButtonItem) {
        startAnimations()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
