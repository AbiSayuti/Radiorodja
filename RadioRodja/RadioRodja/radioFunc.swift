//
//  radioFunc.swift
//  RadioRodja
//
//  Created by Abi Sayuti on 11/21/17.
//  Copyright © 2017 Abi Sayuti. All rights reserved.
//

import Foundation

//tambahkan library
import AVFoundation

//harus sama dengan nama file swift
class radioFunc {
    //menjadikan class radiofunction sebagai objek agar bisa di akses dari kelas lain
    
    static let sharedInstance = radioFunc()
    
    //mengatur default nilai dari isPlaying itu false
    private var isPlaying = false
    
    //mendeklarasikan alamat server streaming radio
    private var player = AVPlayer(url: (NSURL(string: "http://server.pesantrenalirsyad.org:80/")! as URL))
    
    //method play
    func play(){
        player.play()
        isPlaying = true
    }
    
    //method pause
    func pause(){
        player.pause()
        isPlaying = false
    }
    //method
    func toogleButton(){
        if isPlaying{
            pause()
        }else{
            play()
        }
    }
    
    //method current playing
    func currentPlaying() -> Bool {
        return isPlaying
    }
}
