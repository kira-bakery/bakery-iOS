//
//  Bundle.swift
//  kira-bakery
//
//  Created by sujeong on 2024/05/07.
//

import Foundation

extension Bundle {
    var kakaoAppKey: String? {
        return infoDictionary?["KAKAP_APP_KEY"] as? String
    }
}
