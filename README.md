# Daddy'sCoffeeApplication for Small Coffee shop 

<h3>Question 01 - REST API Design</h3>


1).<b>Requirements For building and running the application</b>


* JDK 1.11.
- Springboot 2.4.0.
+ PhpMyadmin or other mysql running tool.

2).<b> simple DB Structure to store the product details</b>

| Tables names        | Data types    | default value |
| ------------------- |:-------------:| -------------:|
| product_id          | int(11)       | notnull       |
| product_name        | varchar(255)  | notnull       |
| product_discription | varchar(255)  | null          |

    getting coffee details from https://www.homegrounds.co/types-of-coffee/

<b> db initialization </b>

before you running this project you should configure your <b> daddyscoffee.sql </b> this is the way which I followed.
<b>Steps:</b>

    1.Install xampp or wampp on you machine 
    2.start 
            : Apache amd mysql servers

    3.Enter the url: http://localhost/phpmyadmin/
    4.Create new database named-> daddyscoffee
    5.Then Import daddyscoffee.sql file it is located on ****
    6.Location:https://github.com/Chamithfernando/-DaddysCoffeeApplication/tree/master/src/main/resources/daddyscoffee.sql

3).<b>how to run the application</b>

<b>Steps:</b>

1).On the command line

    git clone https://github.com/Chamithfernando/-DaddysCoffeeApplication.git

2). Inside Eclipse,IntelliJ IDEA or STS
    
    Download zipfile and extract it
    File -> Import ->Existing project
    
2). Run the Application

    1.visit the main class of  Application.java file  
    2.right click on it and run.
    
    
3).Visit your browser:/  or PostMan

      GetRequest   http://localhost:8080/products/all  --> for view all the products on the Coffee shop.
      GetRequest   http://localhost:8080/products/all/1 -->  for view product by given productId.

      GetRequest   http://localhost:8080/order/all  -->   for view all the orders in Coffee shop.
      GetRequest   http://localhost:8080/order/all/1  --> for view all the orders by given orderId.


      PostRequest   http://localhost:8080/order/add  -->  for placing new Order in Coffee shop
      
3).Sample test

* GetRequest   http://localhost:8080/products/all  --> [
                                                            {
                                                                "productId": 1,
                                                                "productName": "Black Coffee",
                                                                "productDiscription": "imply put, black coffee is a combination of water and coffee without any milk"
                                                            },
                                                            {
                                                                "productId": 2,
                                                                "productName": "Drip Coffee",
                                                                "productDiscription": "As the name suggests, drip coffee involves dripping boiling water over ground coffee."
                                                            }

                                                         ]
                                   

* PostRequest   http://localhost:8080/order/add  -->  {
                                                        "orderId": 9,
                                                        "orderQuantity": 120,
                                                        "orderDate": "2020-12-27T07:00:00.000+00:00"
                                                    }
                                                    
                                                    status : 201Created

