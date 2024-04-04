//
//  Sise.swift
//  OOP
//
//  Created by Murat on 4.04.2024.
//

import Foundation

class Sise {
    var konum: Double
    var delta: Double
    var durum: Bool

    init(konum: Double, delta: Double) {
        assert(konum >= 0 && konum <= 1500, "Şişenin konumu 0 ile 1500 m arasında olmalıdır.")
        assert(delta >= 0.1 && delta <= 1, "Delta 0.1 ile 1 m arasında olmalıdır.")

        self.konum = konum
        self.delta = delta
        self.durum = true
    }

    func vurulduMu(menzil: Double) -> Bool {
        if (konum - delta)...(konum + delta) ~= menzil {
            durum = false
            return true
        }
        return false
    }
}
