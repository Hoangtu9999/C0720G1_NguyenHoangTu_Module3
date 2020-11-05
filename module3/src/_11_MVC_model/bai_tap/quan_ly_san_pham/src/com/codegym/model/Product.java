package com.codegym.model;

public class Product {
    private int id;
    private String name;
    private String productType;
    private int price;

    public Product(int id, String name, String productType, int price) {
        this.id = id;
        this.name = name;
        this.productType = productType;
        this.price = price;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
