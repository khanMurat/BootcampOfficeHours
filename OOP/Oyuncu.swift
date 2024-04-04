//
//  Oyuncu.swift
//  OOP
//
//  Created by Murat on 4.04.2024.
//

import Foundation

class Oyuncu {
    var nickname: String
    var puan: Int

    init(nickname: String) {
        self.nickname = nickname
        self.puan = 0
    }

    func puanArttir() {
        puan += 1
    }
}
