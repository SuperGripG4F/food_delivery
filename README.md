# food_delivery

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Learn

- Expaned widget  = focus the widget to get all available space

- initalize later, so no need to set = now, but have to init it before use it;
  late String firstHalf;
  late String secondHalf;

- while want to build a scroll view , it need a Expanded and SingleChildScrollview together !
- Nested Json

- How to build a model

```
void main() {
  var myMap={
    "name":"Henry",
    "age":23,
    "city":"Hong Kong",
    'address':[{
      "country":"china",
      "city":"Hong Kong"
    },{
      "country":"Bangladesh",
      "city":"Dhanka"
    }
              ]};
  
  var obj = Person.fromJson(myMap);
  print (obj.address![1].city);
  
}
class Person{
  String? name;
  int? age;
  String? city;
  List<Address>? address;
  Person({this.name,this.age,this.city});
  
  Person.fromJson(Map<String,dynamic> json){
    name = json['name'];
    age = json['age'];
    city = json['city'];
    if(json['address']!= null){
      address = <Address>[];
      for(var a in json['address'] as List){
        address!.add(Address.fromJson(a));
      } 
    }
  }
}

class Address{
  String? country;
  String? city;
  Address({this.country,this.city});
  
  Address.fromJson(Map<String,dynamic> json){
    country = json['country'];
    city = json['city'];

  }
}
```

```
Output:
Dhanka
```

- use json to Dart <https://javiercbk.github.io/json_to_dart/>

- Getter

```

  //gettet
  List<ProductModel> get products => _products;

```

- product model

```
{
    "total_size": 6,
    "type_id": 2,
    "offset": 0,
    "products": [
        {
            "id": 1,
            "name": "Nutritious fruit meal in china",
            "description": "This five red bases, two are dedicated to salami (fennel and regular),",
            "price": 12,
            "stars": 5,
            "location": "China",
            "img": "images/food1.png",
            "created_at": "2021-11-17 10:09:08",
            "updated_at": "2022-01-01 08:27:22",
            "type_id": 2
        },
        {
            "id": 2,
            "name": "Nutritious fruit meal in china 2",
            "description": "This five red bases 2, two are dedicated to salami (fennel and regular),",
            "price": 12,
            "stars": 5,
            "location": "China",
            "img": "images/food1.png",
            "created_at": "2021-11-17 10:09:08",
            "updated_at": "2022-01-01 08:27:22",
            "type_id": 2
        },
        {
            "id": 3,
            "name": "Nutritious fruit meal in china 3",
            "description": "This five red bases 3, two are dedicated to salami (fennel and regular),",
            "price": 12,
            "stars": 5,
            "location": "China",
            "img": "images/food1.png",
            "created_at": "2021-11-17 10:09:08",
            "updated_at": "2022-01-01 08:27:22",
            "type_id": 2
        },
        {
            "id": 4,
            "name": "Nutritious fruit meal in china 4",
            "description": "This five red bases 4, two are dedicated to salami (fennel and regular),",
            "price": 12,
            "stars": 5,
            "location": "China",
            "img": "images/food1.png",
            "created_at": "2021-11-17 10:09:08",
            "updated_at": "2022-01-01 08:27:22",
            "type_id": 2
        },
        {
            "id": 5,
            "name": "Nutritious fruit meal in china 5",
            "description": "This five red bases 5, two are dedicated to salami (fennel and regular),",
            "price": 12,
            "stars": 5,
            "location": "China",
            "img": "images/food1.png",
            "created_at": "2021-11-17 10:09:08",
            "updated_at": "2022-01-01 08:27:22",
            "type_id": 2
        },
        {
            "id": 6,
            "name": "Nutritious fruit meal in china 6",
            "description": "This five red bases 6, two are dedicated to salami (fennel and regular),",
            "price": 12,
            "stars": 5,
            "location": "China",
            "img": "images/food1.png",
            "created_at": "2021-11-17 10:09:08",
            "updated_at": "2022-01-01 08:27:22",
            "type_id": 2
        }
    ]
}
```

- put a var in string, use $
