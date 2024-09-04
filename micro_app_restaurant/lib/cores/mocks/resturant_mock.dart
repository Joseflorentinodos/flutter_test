import 'package:micro_app_ds/micro_app_ds.dart';
import 'package:micro_app_http/micro_app_http.dart';

class RestaurantMock {
  static const bool mockEnable = true;
  static const int duration = 2;
  static Future<CommonsHttpResponse> _delay(
      CommonsHttpResponse response) async {
    return Future.delayed(const Duration(seconds: duration), () => response);
  }

  static Future<CommonsHttpResponse>? getRestaurant(String route) =>
      _delay(_getRestaurant(route));

  static CommonsHttpResponse _getRestaurant(String route) {
    return CommonsHttpResponse(
      statusCode: 200,
      data: {
        "data": {
          "search": {
            "total": 5056,
            "business": [
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "12",
                "rating": 3.2,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.open,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": true,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.closed,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 4 Lines",
                "price": "10",
                "rating": 2.1,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.star,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 5 Lines",
                "price": "10",
                "rating": 4.4,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.open,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.closed,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 12 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.open,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.closed,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.open,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.open,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": true,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.open,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              },
              {
                "id": "faPVqws-x-5k2CQKDNtHxw",
                "name": "Restaurant Name Goes Here And Wraps 2 Lines",
                "price": "10",
                "rating": 4.5,
                "photos": 'https://picsum.photos/id/1/200/300',
                "status": Status.open,
                "category": "Italian",
                "address": "102 Lakeside Ave Seattle, WA 98122",
                "isFavorite": false,
                "reviews": [
                  {
                    "id": "sjZoO8wcK1NeGJFDk5i82Q",
                    "rating": 5,
                    "user": {
                      "id": "BuBCkWFNT_O2dbSnBZvpoQ",
                      "image_url":
                          "https:s3-media2.fl.yelpcdn.com/photo/v8tbTjYaFvkzh1d7iE-pcQ/o.jpg",
                      "name": "Gina T.",
                      "text":
                          "I love this place! The food is amazing and the service is great."
                    }
                  },
                  {
                    "id": "okpO9hfpxQXssbTZTKq9hA",
                    "rating": 5,
                    "user": {
                      "id": "0x9xu_b0Ct_6hG6jaxpztw",
                      "image_url":
                          "https:s3-media3.fl.yelpcdn.com/photo/gjz8X6tqE3e4praK4HfCiA/o.jpg",
                      "name": "Crystal L.",
                      "text": "Greate place to eat"
                    }
                  },
                ]
              }
            ]
          }
        }
      },
      requestOptions: CommonsHttpRequestOptions(path: route),
    );
  }
}
