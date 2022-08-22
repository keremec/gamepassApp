//
//  Homepage.swift
//  gamepassApp
//
//  Created by Kerem Safa Dirican on 21.08.2022.
//

import UIKit

class Homepage: UIViewController {

    @IBOutlet weak var HeroCollectionView: UICollectionView!
    
    @IBOutlet weak var CapsuleCollectionView: UICollectionView!
    
    var HeroList = [Heros]()
    var CapsuleList = [Capsules]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.frame.size.width
        
        // Hero Collection View
        
        HeroCollectionView.delegate = self
        HeroCollectionView.dataSource = self
        let h1 = Heros(heroId: 1, heroTitle: "Control", heroDesc: "Play Now", heroImgName: "control-b")
        let h2 = Heros(heroId: 2, heroTitle: "Requiem", heroDesc: "A Plague Tale", heroImgName: "plague-b")

        
        HeroList.append(h1)
        HeroList.append(h2)
        
        let heroDesign = UICollectionViewFlowLayout()
        heroDesign.scrollDirection = .horizontal
        heroDesign.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        heroDesign.itemSize = CGSize(width: width * 0.85, height: width * 0.6)
        HeroCollectionView.isPagingEnabled = true
        HeroCollectionView.collectionViewLayout = heroDesign
        
        // Capsule Collection View
        
        
        CapsuleCollectionView.delegate = self
        CapsuleCollectionView.dataSource = self
        let c1 = Capsules(capsuleId: 1, capsuleTitle: "Starfield", capsuleDesc: "Space Awaits", capsuleImgName: "starfield-b")
        let c2 = Capsules(capsuleId: 2, capsuleTitle: "Saints Row", capsuleDesc: "Dark Future", capsuleImgName: "saintsrow-b")
        let c3 = Capsules(capsuleId: 3, capsuleTitle: "Call of Duty Modern Warfare 2", capsuleDesc: "game", capsuleImgName: "codmw2-b")
        let c4 = Capsules(capsuleId: 4, capsuleTitle: "The Invincible", capsuleDesc: "Dark Future", capsuleImgName: "invincible-b")
        let c5 = Capsules(capsuleId: 5, capsuleTitle: "Death Stranding", capsuleDesc: "Space Awaits", capsuleImgName: "ds-b")


        
        CapsuleList.append(c1)
        CapsuleList.append(c2)
        CapsuleList.append(c3)
        CapsuleList.append(c4)
        CapsuleList.append(c5)

        
        
        let capsuleDesign = UICollectionViewFlowLayout()
        capsuleDesign.scrollDirection = .horizontal
        capsuleDesign.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        capsuleDesign.itemSize = CGSize(width: width * 0.44, height: width * 0.65)
        capsuleDesign.minimumLineSpacing = 15
        CapsuleCollectionView.isPagingEnabled = false
        CapsuleCollectionView.collectionViewLayout = capsuleDesign
    }

}


extension Homepage : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView{
            
        case HeroCollectionView:
            return HeroList.count
            
        case CapsuleCollectionView:
            return CapsuleList.count
            
        default:
            return 0
            
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView{
        case HeroCollectionView:
            let hero = HeroList[indexPath.row]
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heroCell", for: indexPath) as! HeroCollectionViewCell
            
            cell.heroImage.image = UIImage(named: hero.heroImgName!)
            cell.mainText.text = hero.heroTitle
            cell.subText.text = hero.heroDesc
            
            cell.layer.cornerRadius = 10.0
            
            return cell
            
        case CapsuleCollectionView:
            let capsule = CapsuleList[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "capsuleCell", for: indexPath) as! CapsuleCollectionViewCell
            
            cell.capsuleImage.image = UIImage(named: capsule.capsuleImgName!)
            
            cell.layer.cornerRadius = 10.0
            
            return cell
            
        default:
            return UICollectionViewCell()

        }
    }
    
    
}
