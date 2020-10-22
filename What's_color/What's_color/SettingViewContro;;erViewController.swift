//
//  SettingViewContro;;erViewController.swift
//  What's_color
//
//  Created by yoshida kensuke on 2020/10/18.
//

import UIKit
import AVFoundation

class SettingViewContro__erViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    //それぞれのボタン
    @IBOutlet weak var leftUpButton: UIButton!
    @IBOutlet weak var leftDownButton: UIButton!
    @IBOutlet weak var rightUpButton: UIButton!
    @IBOutlet weak var rightDownButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var collectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.leftUpButton.layer.cornerRadius = 10.0
        self.leftDownButton.layer.cornerRadius = 10.0
        self.rightUpButton.layer.cornerRadius = 10.0
        self.rightDownButton.layer.cornerRadius = 10.0
        self.nextButton.layer.cornerRadius = 20.0
        
        randomQuestion()
    }
    //せいかい音源
    let pinponPath = Bundle.main.bundleURL.appendingPathComponent("audio_pinpon.wav")
    var pinponPlayer = AVAudioPlayer()
    
    //不正解音源
    let syogekiPath = Bundle.main.bundleURL.appendingPathComponent("audio_syogeki.wav")
    var notButtonPlayer = AVAudioPlayer()
    
    func randomQuestion() {
        var randomNumber = arc4random() % 4
        randomNumber += 1
        
        answerLabel.text = "なにいろでしょうか？"
        
        switch(randomNumber) {
        case 1 :
            imageView.image = UIImage(named: "red")
            leftUpButton.setTitle("あか", for: UIControl.State.normal)
            leftDownButton.setTitle("むらさき", for: UIControl.State.normal)
            rightUpButton.setTitle("ピンクいろ", for: UIControl.State.normal)
            rightDownButton.setTitle("みどり", for: UIControl.State.normal)
            collectAnswer = "あか"
            break
        case 2 :
            imageView.image = UIImage(named: "purple")
            leftUpButton.setTitle("あお", for: UIControl.State.normal)
            leftDownButton.setTitle("ピンクいろ", for: UIControl.State.normal)
            rightUpButton.setTitle("むらさき", for: UIControl.State.normal)
            rightDownButton.setTitle("しろ", for: UIControl.State.normal)
            collectAnswer = "むらさき"
            break
        case 3 :
            imageView.image = UIImage(named: "pink")
            leftUpButton.setTitle("むらさき", for: UIControl.State.normal)
            leftDownButton.setTitle("みずいろ", for: UIControl.State.normal)
            rightUpButton.setTitle("きいろ", for: UIControl.State.normal)
            rightDownButton.setTitle("ピンクいろ", for: UIControl.State.normal)
            collectAnswer = "ピンクいろ"
            break
        case 4 :
            imageView.image = UIImage(named: "green")
            leftUpButton.setTitle("むらさき", for: UIControl.State.normal)
            leftDownButton.setTitle("みどり", for: UIControl.State.normal)
            rightUpButton.setTitle("きいろ", for: UIControl.State.normal)
            rightDownButton.setTitle("みずいろ", for: UIControl.State.normal)
            collectAnswer = "みどり"
            break
        default :
            break
        }
    }
    @IBAction func leftUpButton(_ sender: Any) {
        if(collectAnswer == "あか") {
            answerLabel.text = "ピンポーン！　せいかい"
            do {
                pinponPlayer = try AVAudioPlayer(contentsOf: pinponPath, fileTypeHint: nil)
                pinponPlayer.play()
            } catch {
                print("ピンポンエラー")
            }
            
        } else {
            answerLabel.text = "ブッブーー　ちがうよ"
            do {
                notButtonPlayer = try AVAudioPlayer(contentsOf: syogekiPath, fileTypeHint: nil)
                notButtonPlayer.play()
            } catch {
                print("衝撃なエラー")
            }
        }
       
    }
    @IBAction func leftDownButton(_ sender: Any) {
        if(collectAnswer == "みどり") {
            answerLabel.text = "ピンポーン！　せいかい"
            do {
                pinponPlayer = try AVAudioPlayer(contentsOf: pinponPath, fileTypeHint: nil)
                pinponPlayer.play()
            } catch {
                print("ピンポンエラー")
            }
            
        } else {
            answerLabel.text = "ブッブーー　ちがうよ"
            do {
                notButtonPlayer = try AVAudioPlayer(contentsOf: syogekiPath, fileTypeHint: nil)
                notButtonPlayer.play()
            } catch {
                print("衝撃なエラー")
            }
        }
    }
    
    @IBAction func rightUpButton(_ sender: Any) {
        if(collectAnswer == "むらさき") {
            answerLabel.text = "ピンポーン！　せいかい"
            do {
                pinponPlayer = try AVAudioPlayer(contentsOf: pinponPath, fileTypeHint: nil)
                pinponPlayer.play()
            } catch {
                print("ピンポンエラー")
            }
            
        } else {
            answerLabel.text = "ブッブーー　ちがうよ"
            do {
                notButtonPlayer = try AVAudioPlayer(contentsOf: syogekiPath, fileTypeHint: nil)
                notButtonPlayer.play()
            } catch {
                print("衝撃なエラー")
            }
        }
    }
    
    @IBAction func rightDownButton(_ sender: Any) {
        if(collectAnswer == "ピンクいろ") {
            answerLabel.text = "ピンポーン！　せいかい"
            do {
                pinponPlayer = try AVAudioPlayer(contentsOf: pinponPath, fileTypeHint: nil)
                pinponPlayer.play()
            } catch {
                print("ピンポンエラー")
            }
            
        } else {
            answerLabel.text = "ブッブーー　ちがうよ"
            do {
                notButtonPlayer = try AVAudioPlayer(contentsOf: syogekiPath, fileTypeHint: nil)
                notButtonPlayer.play()
            } catch {
                print("衝撃なエラー")
            }
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        randomQuestion()
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
