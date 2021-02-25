//
//  Sum.swift
//  Summator
//
//  Created by Ольга Ботанова on 25.02.2021.
//

import Foundation

class Result {
    let resultSum: Int
    
    init(sum: Int) {
        self.resultSum = sum
    }
}

class ResultManager {
    static let shared = ResultManager()
    
    private init() {}
    
    var result: Result? = nil

}

