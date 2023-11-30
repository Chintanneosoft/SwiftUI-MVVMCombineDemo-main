//
//  SearchUserResponse.swift
//  MVVMCombineDemo
//
//  Created by mukesh on 28/05/20.
//  Copyright © 2020 neosoft. All rights reserved.
//

import Foundation
import SwiftUI

struct SearchUserResponse: Decodable {
    var items: [User]
}

struct User: Hashable, Identifiable, Decodable {
    var id: Int64
    var login: String
    var avatar_url: URL
}
