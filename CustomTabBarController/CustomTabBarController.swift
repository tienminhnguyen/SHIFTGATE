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
    var pageViewController: UIPageViewController!
    var pages = [UIViewController]()
    let tabBarTitles = ["基本","装備","色","開発図","質問事項","画像","車検証","価格"]
    var currentTabIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        setupUI()
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
        update(cell: collectionViewCell, at: indexPath)
        return collectionViewCell
    }
    
    func update(cell: TabViewSelection, at indexPath: IndexPath)
    {
        let data = tabBarTitles[indexPath.row]
        let selected = currentTabIndex == indexPath.row
        cell.bindingData(data: data, selected: selected)
    }
}

extension CustomTabBarController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let oldIndex = currentTabIndex
        currentTabIndex = indexPath.row

        if let currentCell = collectionView.cellForItem(at: indexPath) as? TabViewSelection {
            update(cell: currentCell, at: indexPath)
        }
        
        let oldIndexPath = IndexPath(row: oldIndex, section: 0)
        if let oldCell = collectionView.cellForItem(at: oldIndexPath) as? TabViewSelection {
            update(cell: oldCell, at: oldIndexPath)
        }
        
    }
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

