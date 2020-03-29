//
//  ProfilesCollectionViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

enum Section {
    case main
}

class ProfilesCollectionViewController: UICollectionViewController {

    private var dataSource: UICollectionViewDiffableDataSource<Section, Follower>!

    let followers: [Follower]
    var data = [Follower]()

    init(followers: [Follower]) {
        self.followers = followers
        super.init(collectionViewLayout: AppLayout.generateLayout())
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Chris"
        collectionView.backgroundColor = .backgroundAny
        collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: "cell")

        debugPrint(followers.count)
        setupDataSource()
        data.append(self.followers.first!)
        updateCollectionView(data: data, animated: true)

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addFollowers))
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    func setupDataSource() {
        dataSource = UICollectionViewDiffableDataSource <Section, Follower>(collectionView: collectionView) { (collectionView: UICollectionView, indexPath: IndexPath, follower: Follower) -> UICollectionViewCell? in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ProfileCell
            cell?.setup(follower: follower)
            return cell
        }
    }

    func updateCollectionView(data: [Follower], animated: Bool) {
      var snapshot = NSDiffableDataSourceSnapshot<Section, Follower>()
      snapshot.appendSections([.main])
      snapshot.appendItems(data, toSection: .main)
      dataSource.apply(snapshot, animatingDifferences: animated)
    }

    @objc
    func addFollowers() {
        updateCollectionView(data: self.followers, animated: true)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
