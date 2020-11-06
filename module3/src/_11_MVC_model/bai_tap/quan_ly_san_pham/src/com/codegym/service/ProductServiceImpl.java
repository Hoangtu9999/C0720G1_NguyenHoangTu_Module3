package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "tu lanh", "Đồ điện tử", 1000));
        productMap.put(2, new Product(2, "tivi", "Đồ điện tử", 1000));
        productMap.put(3, new Product(3, "tivi", "Đồ điện tử", 1000));
        productMap.put(4, new Product(4, "tivi", "Đồ điện tử", 1000));
        productMap.put(5, new Product(5, "tivi", "Đồ điện tử", 1000));
        productMap.put(6, new Product(6, "tivi", "Đồ điện tử", 1000));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public Product findByName(String name) {
        for (int key : productMap.keySet()) {
            if (productMap.get(key).getName().equals(name)) {
                return productMap.get(key);
            }
        }
        return null;
    }
}
