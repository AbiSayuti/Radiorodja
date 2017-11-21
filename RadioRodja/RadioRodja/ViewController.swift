//
//  ViewController.swift
//  RadioRodja
//
//  Created by Abi Sayuti on 11/20/17.
//  Copyright © 2017 Abi Sayuti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelbuttonn: UIButton!
    @IBOutlet weak var labelplayy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnPLAY(_ sender: Any) {
        toggleButtonRadio()
    }
    
    func toggleButtonRadio(){
            //mengecek kondisi radio apakah sedang play atau pause
            if radioFunc.sharedInstance.currentPlaying(){
                //memanggil method pauseRadio
                pauseRadio()
            }else{
                
                //memanggil method playRadio
                playRadio()
            }
        }
        
    func pauseRadio(){
            
            //memanggil method pause radio
            radioFunc.sharedInstance.pause()
            //menampilkan teks play radio
            labelplayy.text = "Play Radio"
            //mengganti icon button menjadi play
                labelbuttonn.setImage(UIImage(named: "play.png"), for: .normal)
            }
    
            func playRadio(){
                //memanggil method play
                radioFunc.sharedInstance.play()
                //untuk label nya berganti menjadi pause radio
                labelplayy.text = "Pause Radio"
                //mengganti icon button menjadi pause
                    labelbuttonn.setImage(UIImage(named: "pause.png"), for: .normal)
            }
    
override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}
}
func didReceiveMemoryWarning() {
    didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}


