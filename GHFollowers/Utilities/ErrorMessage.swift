//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Konstantinos Rizos on 14/2/20.
//  Copyright © 2020 Konstantinos Rizos. All rights reserved.
//

import Foundation

enum ErrorMessage: String, Error {
    case invalidUser = "This username created an invalid request. Please try again"
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "invalid response from the server. Please try again"
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavourite = "There was an error favoriting tjis User. Please try again."
    case alreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
}
