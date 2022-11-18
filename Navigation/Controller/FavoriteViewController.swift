//
//  FavoriteViewController.swift
//  Navigation
//
//  Created by Nikita Byzov on 18.11.2022.
//

import UIKit
import CoreData

class FavoriteViewController: UIViewController {
    
    var posts = CoreDataManager().posts
    var id = [UUID]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .systemGray6
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 500
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    private func setupView(){
        view.backgroundColor = .white
        navigationItem.largeTitleDisplayMode = .automatic
        navigationItem.title = Constants.viewFavoriteTitle
        createDataForCoreData()
        view.addSubview(tableView)
        
        // настройка Constrait
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func createDataForCoreData(){
        if posts.count > 0 {
            for i in posts {
                id.append(i.id!)
            }
        }
    }
}

extension FavoriteViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? PostTableViewCell {
            let idForPost = id[indexPath.row]
            cell.backgroundColor = .white
            cell.setupForFavoriteFromCoreData(for: idForPost)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
            return cell
        }
    }
    
    
}
