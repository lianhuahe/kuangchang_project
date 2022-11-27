class InfoItem{
   final String? id;
   final String? Itemtitle;
    final String? imageUrl;
   final double? mark;
   final double? price;
    final String? Uername;
   const InfoItem({this.id,this.Itemtitle,this.imageUrl,this.mark,this.price,this.Uername});
}
const List<InfoItem> infoData =[
   InfoItem(
     id: '1',
    Itemtitle: 'coffee',
    imageUrl: 'https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-136217274.jpg',
    mark: 4,
    price: 34,
    Uername: '1fff'
  ),
  InfoItem(
    id: '2',
      Itemtitle: 'coffee',
      imageUrl: 'https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-136217274.jpg',
      mark: 3,
      price: 34,
      Uername: '1fff'
  ),

  InfoItem(
    id: '3',
      Itemtitle: 'coffee',
      imageUrl: 'https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-136217274.jpg',
      mark: 2,
      price: 34,
      Uername: '1fff'
  ),


];


