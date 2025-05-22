//
//  ViewController.swift
//  DarkMode
//
//  Created by Ali Ünal UZUNÇAYIR on 22.05.2025.
//

import UIKit

class ViewController: UIViewController {
//Tüm Uygulamanın darkta çalışmasını istiyosuan İnfoPlisttden UserInterfaceStyle ı dark se.
    @IBOutlet weak var buuton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        /* Swift’te traitCollection, bir cihazın ve arayüzün çevresel özelliklerini (traitlerini) tanımlayan bir yapıdır. Bu özellikler sayesinde uygulamanın farklı cihazlarda, ekran boyutlarında ve kullanıcı arayüzü ortamlarında dinamik olarak uyum sağlaması mümkün olur. Kısaca: uygulamanı farklı koşullarda nasıl göstereceğini kontrol etmeni sağlar.   */
        //darkMode olunca button nasıl gözükecek ama bu şekilde yanlış çünkü (gerekli olmasada) kullanıcı uygulama yı kullanırken ayarlardan dark mod dan lighta geçebilir bunun için threatModDidChange Kullanıyoruz
        
        overrideUserInterfaceStyle = .light // bu foksiyon bu view ın ligtta çalışmasını sağalr (kullanıcıdan bağımsız)
            
        
       
        
        
        
        
    }

  override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
     
       //traitCollectionDidChange iel kullanıcı değişim yaptı mı yapmadı mı bakabiliyoruz
        let userİnterfaceType =  traitCollection.userInterfaceStyle
        if userİnterfaceType == .dark {
            buuton.tintColor = .green
        }
        else {
            buuton.tintColor = .red
        }
    }
}

