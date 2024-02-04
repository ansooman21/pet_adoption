class petname {
  final String name;
  final String urlimage;
  final int age;
  final int price;
  //final List<String> images;
  String adoptionStatus;

  petname({
    required this.name,
    required this.urlimage,
    required this.age,
    required this.price,
    //required this.images,
    this.adoptionStatus = "Not Adopted",
  });
}

final List<petname> allpetname = [
  petname(
    name: 'Dog',
    price: 10000,
    age: 8,
    urlimage:
        'https://images.unsplash.com/photo-1592754862816-1a21a4ea2281?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Cat',
    price: 10000,
    age: 5,
    urlimage:
        'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?q=80&w=2043&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Parrot',
    price: 10000,
    age: 2,
    urlimage:
        'https://images.unsplash.com/photo-1555169062-013468b47731?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Fish',
    price: 10000,
    age: 3,
    urlimage:
        'https://images.unsplash.com/photo-1535591273668-578e31182c4f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Cow',
    price: 50000,
    age: 10,
    urlimage:
        'https://images.unsplash.com/photo-1527153857715-3908f2bae5e8?q=80&w=1988&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Guinea Pig',
    price: 40000,
    age: 3,
    urlimage:
        'https://images.unsplash.com/photo-1612267168669-679c961c5b31?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Tortoise',
    price: 10000,
    age: 9,
    urlimage:
        'https://images.unsplash.com/photo-1597776941486-054bf5529210?q=80&w=1998&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Chicken',
    price: 1000,
    age: 4,
    urlimage:
        'https://images.unsplash.com/photo-1548550023-2bdb3c5beed7?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Duck',
    price: 8000,
    age: 8,
    urlimage:
        'https://images.unsplash.com/photo-1563409236302-8442b5e644df?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  petname(
    name: 'Snake',
    price: 40000,
    age: 3,
    urlimage:
        'https://images.unsplash.com/photo-1613176748515-8cd503764873?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
];
