class petname {
  final String name;
  final String urlimage;
  //final List<String> images;
  String adoptionStatus;

  petname({
    required this.name,
    required this.urlimage,
    //required this.images,
    this.adoptionStatus = "Not Adopted",
  });
}

final List<petname> allpetname = [
  petname(
    name: 'Dog',
    urlimage:
        'https://images.unsplash.com/photo-1592754862816-1a21a4ea2281?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Cat',
    urlimage:
        'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?q=80&w=2043&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Parrot',
    urlimage:
        'https://images.unsplash.com/photo-1555169062-013468b47731?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Fish',
    urlimage:
        'https://images.unsplash.com/photo-1535591273668-578e31182c4f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Cow',
    urlimage:
        'https://images.unsplash.com/photo-1527153857715-3908f2bae5e8?q=80&w=1988&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Guinea Pig',
    urlimage:
        'https://images.unsplash.com/photo-1612267168669-679c961c5b31?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Tortoise',
    urlimage:
        'https://images.unsplash.com/photo-1597776941486-054bf5529210?q=80&w=1998&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Chicken',
    urlimage:
        'https://images.unsplash.com/photo-1548550023-2bdb3c5beed7?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Duck',
    urlimage:
        'https://images.unsplash.com/photo-1563409236302-8442b5e644df?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Snake',
    urlimage:
        'https://images.unsplash.com/photo-1613176748515-8cd503764873?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
];
