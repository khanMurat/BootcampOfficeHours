//
//  ViewController.swift
//  OOP
//
//  Created by Murat on 4.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        crazyBirdsOyunuBaslatma()
        
    }
    
    func crazyBirdsOyunuBaslatma(){
        
        
        print("Oyuna hoşgeldiniz")
        print("Lütfen kullanıcı adınızı giriniz:")
        
        if let nickname = readLine() {
            
            
            let oyuncu = Oyuncu(nickname: nickname)
            
            let topatar = Topatar(firlatmaHizi: 0, yerlesimAcisi: 0)
            
            let sise = Sise(konum: 750, delta: 0.5)
            
            let oyun = Oyun(oyuncu: oyuncu, topatar: topatar, sise: sise)
            
            
            print("Fırlatma hızı değerini ve açı değerini giriniz")
            
            if let hiz = readLine(), let aci = readLine() {
                
                
                oyun.oyna(firlatmaHizi: Double(hiz) ?? 0, yerlesimAcisi: Double(aci) ?? 0)
                
            }
            
        }
        
    }
}

