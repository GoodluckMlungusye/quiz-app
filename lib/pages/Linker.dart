class Linker{
  String pageIcon;
  String pageLocation;

  Linker({required this.pageIcon,required this.pageLocation});
}

List<Linker> getLink(){
  List<Linker> links = [];

  links.add(Linker(pageIcon: 'c#.png', pageLocation: '/C_sharp'));
  links.add( Linker(pageIcon: 'c.png', pageLocation: '/C_plain'));
  links.add(Linker(pageIcon: 'cpp.png', pageLocation: '/Cpp'));
  links.add(Linker(pageIcon: 'java.png', pageLocation: '/Java'));
  links.add( Linker(pageIcon: 'R.png', pageLocation: '/R_plain'));
  links.add(Linker(pageIcon: 'python.png', pageLocation: '/Python'));

  return links;
}