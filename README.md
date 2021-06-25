# README



Ruby version -  2.7.3p183
rails version - 6.1.32


Database table :
user 
categories
orders
productions
sellers


 Database relationship 
 sellers belongs to user
 product belongs to categories
 orders belongs to products

 
admin is add to user tabel. By default admin = false
for admin  set admin = true from rails console

admin can authorize the seller or user to add another seller 
admin can create the product with images


