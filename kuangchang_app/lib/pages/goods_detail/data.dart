class GoodsDetailData{
  String id;
  String title;
  String subTitle;//商品描述
  double? price;
  List<String> goodsImgs;

  GoodsDetailData({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.goodsImgs,
  }
      );
}


var defaultData = GoodsDetailData(
  id: '1',
  title: 'coffee',
  subTitle: "咖啡一词源自阿拉伯语“قهوة”，意思是“植物饮料”。在世界各地，人们越来越爱喝咖啡。随之而来的“咖啡文化”充满生活的每"
      "个时刻。无论在家里、还是在办公室、或是各种社交场合，人们都在品着咖啡、它逐渐与时尚、现代生活、工作和休闲娱乐联系在一起。"
      "咖啡树原产于非洲埃塞俄比亚西南部的高原地区。据说一千多年以前一位牧羊人发现羊吃了一种植物后，变得非常兴奋活泼，进而发现了咖啡。"
      "还有说法称是因野火偶然烧毁了一片咖啡林，烧烤咖啡的香味引起周围居民注意。",
  price: 34.0,
  goodsImgs: [
    'https://tse1-mm.cn.bing.net/th/id/OIP-C.I9g3svv7D2oLEXXeHkGBTAHaE8?w=292&h=195&c=7&r=0&o=5&pid=1.7',
    'https://tse2-mm.cn.bing.net/th/id/OIP-C.ocJYWVcZ2hhZdxUi-qpJQwHaE6?w=276&h=183&c=7&r=0&o=5&pid=1.7',
    'https://tse2-mm.cn.bing.net/th/id/OIP-C.ocJYWVcZ2hhZdxUi-qpJQwHaE6?w=276&h=183&c=7&r=0&o=5&pid=1.7',
  ]
);