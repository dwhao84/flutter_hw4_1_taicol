// Path: lib/taiwan_endemic_species.dart

class TaiwanEndemicSpecies {
  final String name;
  final String description;
  final String image;

  const TaiwanEndemicSpecies({
    required this.name,
    required this.description,
    required this.image,
  });
}

// 台灣特有種資料列表
final List<TaiwanEndemicSpecies> taiwanEndemicSpecies = [
  const TaiwanEndemicSpecies(
    name: '台北樹蛙',
    description: '台灣特有種，體型中小型的樹蛙，體色為綠色，具有吸盤可以攀爬樹木。主要分布於北部低海拔山區的闊葉林、竹林與果園中。',
    image: 'assets/台北樹蛙.jpg',
  ),
  const TaiwanEndemicSpecies(
    name: '台灣山椒魚',
    description:
        '台灣特有種兩棲類動物，全長約11-15公分，呈褐色或黑褐色。棲息於海拔1,000公尺以上的山區溪流與森林中，為瀕臨絕種保育類動物。',
    image: 'assets/台灣山椒魚.jpg',
  ),
  const TaiwanEndemicSpecies(
    name: '台灣獼猴',
    description: '台灣唯一原生猴類，全島皆有分布。屬於中型猴類，具有較短的尾巴，面部略呈紅色。主要棲息於低海拔至中海拔的森林中。',
    image: 'assets/台灣獼猴.png',
  ),
  const TaiwanEndemicSpecies(
    name: '台灣長鬃山羊',
    description:
        '台灣特有種大型哺乳動物，善於在陡峭山區活動。體型魁梧，具有特殊的長鬃，為瀕臨絕種保育類動物。主要棲息於中高海拔的峭壁與山區森林。',
    image: 'assets/台灣長鬃山羊.jpg',
  ),
  const TaiwanEndemicSpecies(
    name: '帝雉',
    description:
        '台灣特有種鳥類，有「國寶鳥」之稱。雄鳥具有華麗的藍黑色羽毛，尾羽特長。主要棲息於中高海拔的原始林中，為瀕臨絕種保育類動物。',
    image: 'assets/帝雉.jpg',
  ),
  const TaiwanEndemicSpecies(
    name: '台灣藍鵲',
    description:
        '台灣特有種鳥類，有「長尾山娘」之稱。全身藍色為主，具有長而華麗的尾巴。主要棲息於低海拔山區的闊葉林中，為珍貴稀有保育類動物。',
    image: 'assets/台灣藍鵲.jpg',
  ),
  const TaiwanEndemicSpecies(
    name: '櫻花鉤吻鮭',
    description: '台灣特有亞種，為冰河時期孑遺生物。體型優美，產卵期會呈現粉紅色。僅分布於雪霸國家公園七家灣溪流域，為瀕臨絕種保育類動物。',
    image: 'assets/櫻花鉤吻鮭.jpg',
  ),
  const TaiwanEndemicSpecies(
    name: '台灣黑熊',
    description: '台灣最大型的肉食性哺乳動物，胸前具有標誌性的V字型白色斑紋。主要棲息於中高海拔的原始林中，為瀕臨絕種保育類動物。',
    image: 'assets/黑熊.jpg',
  ),
  const TaiwanEndemicSpecies(
    name: '石虎',
    description:
        '台灣現存僅存的野生貓科動物，體型約為家貓大小，毛色為黃褐色帶有黑色斑點。主要棲息於低海拔山區與農地，為瀕臨絕種保育類動物。',
    image: 'assets/石虎.webp',
  ),
  const TaiwanEndemicSpecies(
    name: '藍腹鷴',
    description: '台灣特有種鳥類，雄鳥具有艷麗的藍色腹部與紅色臉部。主要棲息於中低海拔森林中，為瀕臨絕種保育類動物。',
    image: 'assets/藍腹鷴.jpeg',
  ),
  const TaiwanEndemicSpecies(
    name: '龜殼花',
    description: '台灣重要毒蛇之一，頭部呈三角形，體色為褐色或灰褐色，具有特殊的網狀花紋。主要棲息於低海拔山區、竹林與草生地。',
    image: 'assets/龜殼花.jpg',
  ),
];
