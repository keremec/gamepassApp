//
//  Homepage.swift
//  gamepassApp
//
//  Created by Kerem Safa Dirican on 21.08.2022.
//

import UIKit

class Homepage: UIViewController {

    @IBOutlet weak var HeroCollectionView: UICollectionView!
    
    var HeroList = [Heros]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hero Collection View
        
        HeroCollectionView.delegate = self
        HeroCollectionView.dataSource = self
        
        let h1 = Heros(heroId: 1, heroTitle: "Control", heroDesc: "Play Now", heroImgName: "control-b")
        let h2 = Heros(heroId: 2, heroTitle: "Requiem", heroDesc: "A Plague Tale", heroImgName: "plague-b")

        
        HeroList.append(h1)
        HeroList.append(h2)
        
        let heroDesign = UICollectionViewFlowLayout()
        heroDesign.scrollDirection = .horizontal
        let width = self.view.frame.size.width
        heroDesign.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        heroDesign.itemSize = CGSize(width: width * 0.85, height: width * 0.6)
        HeroCollectionView.isPagingEnabled = true
        HeroCollectionView.collectionViewLayout = heroDesign
        
        
        
        
        
        
    }

}


extension Homepage : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HeroList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let hero = HeroList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heroCell", for: indexPath) as! HeroCollectionViewCell
        
        cell.heroImage.image = UIImage(named: hero.heroImgName!)
        cell.mainText.text = hero.heroTitle
        cell.subText.text = hero.heroDesc
        
        cell.layer.cornerRadius = 10.0
        
        
        return cell
    }
    
    
}
