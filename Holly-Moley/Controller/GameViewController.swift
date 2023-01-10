//
//  GameViewController.swift
//  Holly-Moley
//
//  Created by 김태형 on 2023/01/09.
//

import AVFoundation
import UIKit


class GameViewController: UIViewController {
    
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    
    @IBOutlet weak var timelbl: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var timeProgress: UIProgressView!
    
    let moleArr: [UIImage] = [UIImage(named: "Hole")!, UIImage(named: "Hole")!, UIImage(named: "Hole")!, UIImage(named: "Hole")!, UIImage(named: "Hole")!, UIImage(named: "Hole")!, UIImage(named: "Hole")!, UIImage(named: "Hole")!, UIImage(named: "mole")!, UIImage(named: "mole")!, UIImage(named: "mole")!, UIImage(named: "mole")!, UIImage(named: "mole")!, UIImage(named: "mole")!, UIImage(named: "mole")!, UIImage(named: "rabbit")!, UIImage(named: "rabbit")!, UIImage(named: "bomb")!, UIImage(named: "bomb")!, UIImage(named: "bomb")!, UIImage(named: "bomb")!]
    
    var timer: Timer? = Timer()
    var secondPassed: Float = 0.0
    var timeAttack: Int = 60
    var totalScore: Int = 0
    var gameFinished: Bool = false
    
    @IBOutlet weak var backgroundView: UIImageView!
    
    func numberFormatter(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value: number))!
        
    }
    

    override func viewDidLoad() {
         
        super.viewDidLoad()
        
        assignbackground()
        defaultSet()
        randomMole()
                     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Progressing), userInfo: nil, repeats: true)
    }
    
    func assignbackground(){
        let background = UIImage(named: "loading")

        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
      }
    
    func defaultSet() {
        
        imgView1.image = UIImage(named: "Hole")
        imgView2.image = UIImage(named: "Hole")
        imgView3.image = UIImage(named: "Hole")
        imgView4.image = UIImage(named: "Hole")
        imgView5.image = UIImage(named: "Hole")
        imgView6.image = UIImage(named: "Hole")
        imgView7.image = UIImage(named: "Hole")
        imgView8.image = UIImage(named: "Hole")
        imgView9.image = UIImage(named: "Hole")

    }
    
    @objc func viewTapped1(_ sender: UITapGestureRecognizer) {
        if self.imgView1.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView1.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
//            numberFormatter(number: totalScore)
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView1.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()                                          //핸드폰 진동
            self.imgView1.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView1.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView1.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped2(_ sender: UITapGestureRecognizer) {
        if self.imgView2.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView2.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView2.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView2.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView2.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView2.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped3(_ sender: UITapGestureRecognizer) {
        if self.imgView3.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView3.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView3.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView3.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView3.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView3.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped4(_ sender: UITapGestureRecognizer) {
        if self.imgView4.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView4.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView4.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView4.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView4.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView4.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped5(_ sender: UITapGestureRecognizer) {
        if self.imgView5.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView5.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView5.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView5.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView5.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView5.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped6(_ sender: UITapGestureRecognizer) {
        if self.imgView6.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView6.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView6.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView6.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView6.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView6.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped7(_ sender: UITapGestureRecognizer) {
        if self.imgView7.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView7.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView7.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView7.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView7.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView7.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped8(_ sender: UITapGestureRecognizer) {
        if self.imgView8.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView8.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView8.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView8.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView8.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView8.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func viewTapped9(_ sender: UITapGestureRecognizer) {
        if self.imgView9.image == UIImage(named: "mole")! {       //두더지 클릭할 때 생성됨
            self.imgView9.image = UIImage(named: "mole_hit")    //두더지 hit된 사진
            totalScore += 10    //점수 더하기
            self.score.text = "\(numberFormatter(number: totalScore))"
            
        } else if self.imgView9.image == UIImage(named: "bomb")! {      //bomb
            UIDevice.vibrate()
            self.imgView9.image = UIImage(named: "bomb_hit")
            totalScore -= 10
            self.score.text = "\(numberFormatter(number: totalScore))"
        } else if self.imgView9.image == UIImage(named: "rabbit")! {        //rabbit
            self.imgView9.image = UIImage(named: "rabbit_hit")
            totalScore += 30
            self.score.text = "\(numberFormatter(number: totalScore))"
        }
    }
    
    @objc func Progressing() {
        timelbl.text = String(timeAttack)
        secondPassed += 1/60
        timeAttack -= 1
        timeProgress.setProgress(secondPassed, animated: true)
        
        if (timeAttack < 10) && (timeAttack >= 0) {
            timelbl.textColor = .red
        } else if timeAttack == -1 {    //-1로 하기
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "GameOverViewController") as! GameOverViewController
            vc.finalScore = numberFormatter(number: totalScore)
            vc.modalPresentationStyle = .overFullScreen
            vc.view.alpha = 0.8
            timer?.invalidate()
            
            gameFinished = true
            present(vc, animated: true)
        }
        
    }
    
    
    
    private func randomMole() {

        DispatchQueue.global(qos: .userInitiated).async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }    //game이 끝났을 때 종료
                    
                    
                    
                    self.imgView1.image = self.moleArr.randomElement()
                    self.imgView1.isUserInteractionEnabled = true
                    self.imgView1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped1)))
                    print(self.imgView1.image!)
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global(qos: .userInitiated).async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView2.image = self.moleArr.randomElement()
                    self.imgView2.isUserInteractionEnabled = true
                    self.imgView2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped2)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global().async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView3.image = self.moleArr.randomElement()
                    self.imgView3.isUserInteractionEnabled = true
                    self.imgView3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped3)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global().async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView4.image = self.moleArr.randomElement()
                    self.imgView4.isUserInteractionEnabled = true
                    self.imgView4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped4)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global().async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView5.image = self.moleArr.randomElement()
                    self.imgView5.isUserInteractionEnabled = true
                    self.imgView5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped5)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global().async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView6.image = self.moleArr.randomElement()
                    self.imgView6.isUserInteractionEnabled = true
                    self.imgView6.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped6)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global().async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView7.image = self.moleArr.randomElement()
                    self.imgView7.isUserInteractionEnabled = true
                    self.imgView7.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped7)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global().async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView8.image = self.moleArr.randomElement()
                    self.imgView8.isUserInteractionEnabled = true
                    self.imgView8.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped8)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
        
        DispatchQueue.global().async {
            
            for _ in (0...100) {
                DispatchQueue.main.async {
                    guard self.gameFinished == false else { return }

                    self.imgView9.image = self.moleArr.randomElement()
                    self.imgView9.isUserInteractionEnabled = true
                    self.imgView9.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped9)))
                }
                usleep(useconds_t(UInt64.random(in: 500000 ... 4000000)))
            }
        }
    }
    
    
}

extension UIDevice {        // UIDevice extension => 진동 관련
    static func vibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
