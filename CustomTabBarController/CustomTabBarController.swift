//
//  ViewController.swift
//  ShiftGate
//
//  Created by Paxcreation on 7/14/20.
//  Copyright © 2020 Paxcreation. All rights reserved.
//

import UIKit

class CustomTabBarController: BaseViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageView: UIView!
    var pageViewController: UIPageViewController!
    var pages = [UIViewController]()
    let tabBarTitles = ["基本","装備","色","開発図","質問事項","画像","車検証","価格"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        setupUI()
        setupContent()
    }

    func setupUI() {
        let nib = UINib(nibName: TabViewSelection.identifier, bundle: Bundle.main)
        collectionView.register(nib, forCellWithReuseIdentifier: TabViewSelection.identifier)
    }
    
   func setupContent() {
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? UIPageViewController {
            pageViewController = vc
            pageViewController.dataSource = self
            pageViewController.delegate = self
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let generalPage = storyboard.instantiateViewController(identifier: "generalPage")
            let equipmentPage = storyboard.instantiateViewController(identifier: "equipmentPage")
            pages = [generalPage, equipmentPage]
            
            pageViewController.setViewControllers([pages[0]], direction: .forward, animated: true, completion: nil)
        }
    }
}

extension CustomTabBarController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tabBarTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: TabViewSelection.identifier, for: indexPath) as! TabViewSelection
        
        collectionViewCell.bindingData(data: tabBarTitles[indexPath.row])
        collectionViewCell.setupUI()
        return collectionViewCell
    }
}

extension CustomTabBarController:UICollectionViewDelegate{
    
}

extension CustomTabBarController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard var currentIndex = pages.firstIndex(of: viewController) else { return nil }
        
        currentIndex = (currentIndex - 1)
        
        if currentIndex < 0 {
            return nil
        }
        
        return pages[currentIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard var currentIndex = pages.firstIndex(of: viewController) else { return nil }
        currentIndex = (currentIndex + 1)
        if currentIndex >= pages.count {
            return nil
        }
        return pages[currentIndex]
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
}

