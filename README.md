# FLUTTER NAVIGASYON İŞLEMLERİ


## Ders 1 : Proje Oluşturma ve Sayfaları Düzenleme

1.	VS Code -> View -> Command Palette -> Flutter New Project -> Application denilip projenin kurulacağı yer seçilir
ve flutter_navigasyon_islemleri ismi projeye verilir.

2.	main.dart içeriği silinir ve mateapp diyerek örnek şablon oluşturulur.

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/6f2c22a3-440e-4471-bfff-5cf7af1b4ad8)


3.	Sayfa geçişleri için Hakkımızda, Galeri, Çalışmalarımız,İletişim şeklinde boş sayfalar oluşturalım.


![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/de8540b4-7f2a-4c3a-b81e-5460250d21ef)


4.	Main.dart içinde bulunan Anasayfa sınıfını anasayfa.dart olarak ayrı bir dosyaya taşıyalım.
   

5.	Anasayfa.dart dosyasının kodlamasını yapalım.
   

6.	myCard isminde bir stateless widget i anasayfa içinde renk ve sayfa isimlerini dışarıdan alacak şekilde oluşturalım.

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/1d6636c6-9287-4565-a28a-54fe5628115f)


7.	anasayfa içinde body kısmında oluşturulan myCard öğelerini sayfa adedi kadar aşağıdaki gibi ekleyelim. 
Sayfayı çalıştırılınca görseldeki tasarım oluşmuş olacaktır.

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/3c2182e6-3e67-419f-8dc1-446ef33f51be)


**************************************************************************************************************************

## Ders 2 : Navigator push – pop ile sayfa geçişleri

1.	anasayfa içinde body alanında oluşturulan myCard yapılarını kullanarak ilgili
butona basınca ilgili sayfaya gitme işlemlerini yapalım.

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/e51bf0bb-8c6f-45ea-a476-202e41c6feda)

2.	Yukarıdaki kodlarda da görüldüğü gibi sayfa geçişleri için basit anlamda aşağıdaki kod kullanılır.
Örneğin Galeri sayfasına gidilmesi için aşağıdaki kod yazılır.

Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Galeri()));

3.	Galeri sayfası için bir tasarım oluşturalım.



![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/40191606-9903-4fea-889a-8cc82bc48294)

4.	Aşağıda görüldüğü gibi pop metodu sayesinde bir önceki sayfaya geri dönülmüştür.



![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/3706eaa3-c93e-436c-8421-4c6f0ae1a788)







