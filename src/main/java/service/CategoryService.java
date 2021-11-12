package service;

import java.util.List;

import dao.CategoryDAO;
import entity.Category;

public class CategoryService {

    private CategoryDAO categoryDAO = new CategoryDAO();
    public void printCategories(){
        List<Category> categories = categoryDAO.find();
        categories.forEach(a -> System.out.println(a.toString()));
    }

    public Category getCategoryByCode(String categoryCode) {
        return categoryDAO.findByCode(categoryCode);
    }

    public Category addCategory(String name, String code){
        Category category = new Category();
        category.setCode(code);
        category.setName(name);
        return categoryDAO.insert(category);
    }

    public Category updateCategory(Category category) {
        return categoryDAO.update(category);
    }

    public void deleteCategory(String code) {
        categoryDAO.deleteByCode(code);
    }
}
