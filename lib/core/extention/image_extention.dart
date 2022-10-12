
enum ImagePath{
  instagram
}

extension ImagePathExtension on ImagePath{
  String path(){
    return 'assets/images/$name.png';
  }
}