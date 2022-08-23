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
    
    @IBOutlet weak var CategoryCollectionView: UICollectionView!
    
    var HeroList = [Heros]()
    var CapsuleList = [Capsules]()
    var CategoryList = [Categories]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.frame.size.width
        let language = NSLocale.preferredLanguages[0]
        
        // Hero Collection View
        
        HeroCollectionView.delegate = self
        HeroCollectionView.dataSource = self
        
        var tombraiderDesc = "Become the Tomb Raider"
        var controlgameDesc = "Uncover the mysteries"
        
        if language.hasPrefix("tr") {
            tombraiderDesc = "Hayatta ve Ayakta Kal"
            controlgameDesc = "Gizemleri ortaya çıkar"
        }
        
        let h1 = Heros(heroId: 1, heroTitle: "Shadow of the Tomb Raider", heroDesc: tombraiderDesc, heroImgName: "tombraider-b")
        let h2 = Heros(heroId: 2, heroTitle: "Control", heroDesc: controlgameDesc, heroImgName: "control-b")

        
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
        let c6 = Capsules(capsuleId: 6, capsuleTitle: "Deathloop", capsuleDesc: "Lorem", capsuleImgName: "deathloop-b")
        let c7 = Capsules(capsuleId: 7, capsuleTitle: "Life is Strange True Colors", capsuleDesc: "Lorem", capsuleImgName: "lis-b")
        let c8 = Capsules(capsuleId: 8, capsuleTitle: "A Plague Tale Requiem", capsuleDesc: "Lorem", capsuleImgName: "plague-b")
        
        CapsuleList.append(c1)
        CapsuleList.append(c2)
        CapsuleList.append(c3)
        CapsuleList.append(c4)
        CapsuleList.append(c5)
        CapsuleList.append(c6)
        CapsuleList.append(c7)
        CapsuleList.append(c8)

        
        
        let capsuleDesign = UICollectionViewFlowLayout()
        capsuleDesign.scrollDirection = .horizontal
        capsuleDesign.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        capsuleDesign.itemSize = CGSize(width: width * 0.44, height: width * 0.65)
        capsuleDesign.minimumLineSpacing = 15
        CapsuleCollectionView.isPagingEnabled = false
        CapsuleCollectionView.collectionViewLayout = capsuleDesign
        
        
        // Category Collection View
        CategoryCollectionView.delegate = self
        CategoryCollectionView.dataSource = self
        
        var catName1 = "INDIE"
        var catName2 = "FAMILY"
        var catName3 = "CLASSICS"
        var catName4 = "SHOOTER"
        var catName5 = "SPORTS"
        var catName6 = "ADVENTURE"
        var catName7 = "PLATFORM"
        var catName8 = "FIGHTING"
        
        if language.hasPrefix("tr") {
            catName1 = "BAĞIMSIZ"
            catName2 = "AİLE"
            catName3 = "KLASİKLER"
            catName4 = "NİŞANCI"
            catName5 = "SPOR"
            catName6 = "MACERA"
            catName7 = "PLATFORM"
            catName8 = "DÖVÜŞ"
        }
        
        
        let cat1 = Categories(CategoryId: 1, CategoryTitle: catName1,CategoryColor: "#008745ff", CategoryImgName: "tips_and_updates-tips_and_updates_symbol")
        let cat2 = Categories(CategoryId: 2, CategoryTitle: catName2,CategoryColor: "#008745ff", CategoryImgName: "family_restroom-family_restroom_symbol")
        let cat3 = Categories(CategoryId: 3, CategoryTitle: catName3,CategoryColor: "#038572ff", CategoryImgName: "videogame_asset-videogame_asset_symbol")
        let cat4 = Categories(CategoryId: 4, CategoryTitle: catName4,CategoryColor: "#038572ff", CategoryImgName: "adjust-adjust_symbol")
        let cat5 = Categories(CategoryId: 5, CategoryTitle: catName5,CategoryColor: "#007c8eff", CategoryImgName: "sports_football-sports_football_symbol")
        let cat6 = Categories(CategoryId: 6, CategoryTitle: catName6,CategoryColor: "#007c8eff", CategoryImgName: "sailing-sailing_symbol")
        let cat7 = Categories(CategoryId: 7, CategoryTitle: catName7,CategoryColor: "#006f98ff", CategoryImgName: "nature-nature_symbol")
        let cat8 = Categories(CategoryId: 8, CategoryTitle: catName8,CategoryColor: "#006f98ff", CategoryImgName: "sports_mma-sports_mma_symbol")

        let categoryDesign = UICollectionViewFlowLayout()
        categoryDesign.scrollDirection = .vertical
        categoryDesign.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        categoryDesign.minimumInteritemSpacing = 1
        categoryDesign.itemSize = CGSize(width: width * 0.45, height: width * 0.2)
        CategoryCollectionView.collectionViewLayout = categoryDesign
        CategoryCollectionView.isScrollEnabled = false
        
        CategoryList.append(cat1)
        CategoryList.append(cat2)
        CategoryList.append(cat3)
        CategoryList.append(cat4)
        CategoryList.append(cat5)
        CategoryList.append(cat6)
        CategoryList.append(cat7)
        CategoryList.append(cat8)
    }

}


extension Homepage : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView{
            
        case HeroCollectionView:
            return HeroList.count
            
        case CapsuleCollectionView:
            return CapsuleList.count
            
        case CategoryCollectionView:
            return CategoryList.count
            
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
          
        case CategoryCollectionView:
            let category = CategoryList[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
            cell.labelSpec.text = category.CategoryTitle!
            cell.imageSpec.image = UIImage(named: category.CategoryImgName!)
            
            cell.layer.cornerRadius = 5.0
            cell.backgroundColor = UIColor(hex: category.CategoryColor!)
            return cell
            
        default:
            return UICollectionViewCell()

        }
    }
    
    
}


extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
