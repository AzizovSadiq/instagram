
enum ImagePath{
  instagram
}

extension ImagePathxtention on ImagePath{
  String path(){
    return 'assets/images/$name.png';
  }
}