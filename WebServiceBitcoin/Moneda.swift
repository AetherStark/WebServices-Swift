//
//  Moneda.swift
//  WebServiceBitcoin
//
//  Created by Francisco on 22/04/20.
//  Copyright © 2020 Francisco. All rights reserved.
//

import Foundation

class Moneda {
    var description: String?
    var rate: String?
    var code: String?

    init(description: String?, rate: String?, code: String?) {

        self.description = description
        self.rate = rate
        self.code = code
    }
}


