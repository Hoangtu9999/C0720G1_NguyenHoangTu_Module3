package dao;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerDao {
    static List<Customer> customersList = new ArrayList<>();

    static {
        customersList.add(new Customer("Hoàng Tứ","24/06/1999","Quảng nam","anh1.jpg"));
        customersList.add(new Customer("Hoàng Tứ 1","24/06/1999","Quảng nam","anh1.jpg"));
        customersList.add(new Customer("Hoàng Tứ 2","24/06/1999","Quảng nam","anh1.jpg"));
        customersList.add(new Customer("Hoàng Tứ 3","24/06/1999","Quảng nam","anh1.jpg"));
        customersList.add(new Customer("Hoàng Tứ 4","24/06/1999","Quảng nam","anh1.jpg"));
        customersList.add(new Customer("Hoàng Tứ 5","24/06/1999","Quảng nam","anh1.jpg"));
    }
    public static List<Customer> showAllCustomer(){
        return customersList;
    }
}
