## dbdiagram
Table menu {
  Menu_ID int [PK]
  Menu_name varchar [not null]
  Price float
}
Table Order {
  Order_Id int [PK]
  Order_date datetime
  customer int
  Menu_ID int
  paymentm_id int
  staff_id int
}

Table paymentm {
  paymentm_id int [pk]
  paymetm_name text
}

Table member {
  member_id int [pk]
  member_Level text 
}

table customer {
  Customer_id int [pk]
  Customer_name text
  Customer_Phone text
  member_id int
}

Table staff {
  staff_id [pk]
  staff_name text
}

Ref a_relationship {
  menu.Menu_ID < Order.Menu_ID
}

Ref a_relationship {
  paymentm.paymentm_id < Order.paymentm_id
}

ref a_relationship {
  member.member_id < customer.member_id
}

ref a_relationship {
  customer.Customer_id < Order.customer
}

ref a_relationship {
  staff.staff_id < Order.staff_id
}
