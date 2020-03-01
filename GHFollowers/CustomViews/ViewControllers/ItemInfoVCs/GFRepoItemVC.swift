//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Konstantinos Rizos on 28/2/20.
//  Copyright © 2020 Konstantinos Rizos. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
