//
//  Follower.swift
//  GHFollowers
//
//  Created by Konstantinos Rizos on 14/2/20.
//  Copyright © 2020 Konstantinos Rizos. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
