//
//  Topatar.swift
//  OOP
//
//  Created by Murat on 4.04.2024.
//

import Foundation

class Topatar {
    var firlatmaHizi: Double
    var yerlesimAcisi: Double

    init(firlatmaHizi: Double, yerlesimAcisi: Double) {
        assert(firlatmaHizi >= 0 && firlatmaHizi <= 100, "Fırlatma hızı 0 ile 100 m/s arasında olmalıdır.")
        assert(yerlesimAcisi >= 0 && yerlesimAcisi <= .pi / 2, "Yerleşim açısı 0 ile 90 derece (π/2 radyan) arasında olmalıdır.")

        self.firlatmaHizi = firlatmaHizi
        self.yerlesimAcisi = yerlesimAcisi
    }

    public func menzilHesapla() -> Double {
            
            var menzil:CGFloat
            let radian = yerlesimAcisi * (Double.pi / 180)
            
            //menzil = (firlatmaHizi * firlatmaHizi * sin(2*yerlesimAcisi)) / g
            menzil = (firlatmaHizi * firlatmaHizi * sin(2*radian)) / g

            return menzil
        }}
