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


*************************************************************************************************************************

## Ders 3 : pushReplacement, canPop, MaybePop ve WillPopScope Metotları

1. pushReplacement
Navigator.pushReplacement metodu, mevcut sayfayı yeni bir sayfa ile değiştirir.
Yeni sayfaya geçerken, eski sayfa navigasyon yığınından çıkarılır. Bu, kullanıcı için bir "yer değiştirme" efekti yaratır.
Örneğin, bir giriş ekranından ana ekrana geçişte kullanılır.


![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/ead6c0fa-205a-42f7-8a85-96b88af0e3a7)



2. maybePop
Navigator.maybePop metodu, yığında geri dönülebilecek bir sayfa varsa (yani canPop true dönerse),
mevcut sayfayı kapatır ve bir önceki sayfaya döner. Eğer yığında geri dönülecek sayfa yoksa hiçbir şey yapmaz.
Bu, kullanıcı bir "geri" butonuna bastığında uygulamanın otomatik olarak davranmasını sağlar.

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/a19598d0-8bc8-49bf-8f84-afd527765a04)



3. canPop
Navigator.canPop metodu, navigasyon yığınında şu anda gösterilen sayfadan başka sayfa olup olmadığını kontrol eder.
Eğer başka sayfa varsa true, yoksa false döner. Bu, geri butonunun görünürlüğünü kontrol etmek için kullanılabilir.

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/45e878d8-a159-4c20-aee6-a125dc1da282)


4. WillPopScope
WillPopScope widget'ı, kullanıcının Android cihazındaki geri tuşuna bastığı zaman yapılacak işlemleri yönetmek için kullanılır.
 Bu widget sayesinde, kullanıcı geri tuşuna bastığında uygulama tarafından özel bir işlem gerçekleştirilebilir.
Örneğin, bir onay diyalogu gösterilebilir.


![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/727c79aa-36c2-42b1-96c8-2f310ce16d5c)


 5. Projemizde Çalışmalarımız sayfasında bu metotları ele alalım.


![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/8d83bcc7-f881-4b8e-adb6-670808e7f171)


6. WillPopScope için İletişim Sayfasında basit bir form uygulaması yapalım.

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/9486a2cd-8348-4584-8390-3ad9e98bf5fe)

![image](https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/9bbbb3eb-f915-4302-9ccd-b9d19617d6d2)


**************************************************************************************************************************

## Ders 4 : Rota Tanımlama İşlemleri ( pushNamed )

1. Önceki yöntemlerde push yapısı ile belirli sayfalara giriş önceden belirleniyordu. Eğer yanlış bir yazım veya
yönlendirme olunca program çöker.
2. Bunun yerine pushNamed yöntemi kullanılabilir.
3. main.dart içinde home kısmını yorum satırı haline getirelim ve hemen altına rotaları aşağıdaki gibi tanımlayalım.

<img width="1040" alt="Screenshot 2024-05-03 at 20 53 28" src="https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/901056ee-369b-48b4-88b4-302a2c47a8e2">

4. Üstteki resimde routes {} alanı içinde var olan rotalar tanımlanmıştır.
5. onUnknownRoute kısmında ise rota içinde tanımlı olmayan bir yola girilmişse 404 sayfası gibi bir sayfa tanımlaması
yapılmıştır.
6. Bu rotaları pushNamed ile anasayfa.dart içerisinde myCard widget larının onTap yapısı içinde önceki push yapılarını
yorum satırı yaparak yeniden aşağıdaki gibi çağıralım.

<img width="1026" alt="Screenshot 2024-05-03 at 20 59 06" src="https://github.com/akkayasoft/flutter_navigasyon_islemleri/assets/133866777/181138b1-44cd-495a-92c4-b654228e79b6">

*************************************************************************************************************************








