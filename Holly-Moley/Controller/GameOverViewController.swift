//
//  GameOverViewController.swift
//  Holly-Moley
//
//  Created by 김태형 on 2023/01/10.
//

import Foundation
import UIKit

class GameOverViewController: UIViewController {
    
    
    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var resultScore: UILabel!
    

    @IBAction func onClickQuit(_ sender: Any) {
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            exit(0)
        }
    }
    
    
    var finalScore: String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        result()
        
        if let finalScore = finalScore {
            self.resultScore.text = finalScore
        }
        
    }
    
    func result() {
        
        resultView.layer.cornerRadius = 30
        

        
    }
    
}
