//
//  PersistenceManager.swift
//  GHFollowers
//
//  Created by Konstantinos Rizos on 29/2/20.
//  Copyright © 2020 Konstantinos Rizos. All rights reserved.
//

import Foundation

enum PersistenceActionType {
    case add, remove
}

enum PersistenceManager {
    
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favourites = "favourites"
    }
    
    static func updateWith(favorite: Follower, actionType: PersistenceActionType, completion: @escaping (ErrorMessage?) -> Void) {
        retrieveFavourites { (result) in
            switch result {
            case .success(var favorites):
                
                switch actionType {
                case .add:
                    guard !favorites.contains(favorite) else {
                        completion(.alreadyInFavorites)
                        return
                    }
                    favorites.append(favorite)
                case .remove:
                    favorites.removeAll { $0.login == favorite.login}
                }
                completion(save(favorites: favorites))
            case .failure(let error):
                completion(error)
            }
        }
    }
    
    static func retrieveFavourites(completion: @escaping (Result<[Follower], ErrorMessage>) -> Void) {
        guard let favouriteData = defaults.object(forKey: Keys.favourites) as? Data else {
            completion(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favourites = try decoder.decode([Follower].self, from: favouriteData)
            completion(.success(favourites))
        } catch {
            completion(.failure(.unableToFavourite))
        }
    }
    
    static func save(favorites: [Follower]) -> ErrorMessage? {
        
        do {
            let encode = JSONEncoder()
            let encodedFavorites = try encode.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favourites)
            return nil
        } catch {
            return .unableToFavourite
        }
    }
}
