//
//  Oyun.swift
//  OOP
//
//  Created by Murat on 4.04.2024.
//

import Foundation
import CoreGraphics

let g: CGFloat = 10.0

class Oyun {
    var oyuncu: Oyuncu
    var topatar: Topatar
    var sise: Sise
    
    init(oyuncu: Oyuncu, topatar: Topatar, sise: Sise) {
        self.oyuncu = oyuncu
        self.topatar = topatar
        self.sise = sise
    }
    
    func yeniOyun() {
        sise.durum = true
        oyuncu.puan = 0
    }
    
    func oyna(firlatmaHizi: CGFloat, yerlesimAcisi: CGFloat) {
        guard firlatmaHizi >= 0 && firlatmaHizi <= 100 else {
            print("Fırlatma hızı 0 ile 100 m/s arasında olmalıdır.")
            return
        }
        guard yerlesimAcisi >= 0 && yerlesimAcisi <= .pi / 2 else {
            print("Yerleşim açısı 0 ile 90 derece (π/2 radyan) arasında olmalıdır.")
            return
        }
        
        topatar.firlatmaHizi = firlatmaHizi
        topatar.yerlesimAcisi = yerlesimAcisi
        
        let menzil = topatar.menzilHesapla()
        if sise.vurulduMu(menzil: menzil) {
            oyuncu.puanArttir()
            print("Tebrikler! Şişe vuruldu. Oyuncu puanı: \(oyuncu.puan)")
        } else {
            print("Maalesef! Şişe vurulamadı.")
        }
    }
    
}

