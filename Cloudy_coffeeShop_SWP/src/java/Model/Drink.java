/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Ho Hieu
 */
public class Drink {
    //drink_id int, drink_name String, price float, kind_of_Drink String, ingredient String, description String, image String
    private int drink_id;
    private String drink_name;
    private float price;
    private String kind_of_Drink;
    private String[] ingredient;
    private String description;
    private String image;

    public Drink() {
    }

    public Drink(int drink_id, String drink_name, float price, String kind_of_Drink, String[] ingredient,
            String description, String image) {
        this.drink_id = drink_id;
        this.drink_name = drink_name;
        this.price = price;
        this.kind_of_Drink = kind_of_Drink;
        this.ingredient = ingredient;
        this.description = description;
        this.image = image;
    }

    public int getDrink_id() {
        return drink_id;
    }

    public void setDrink_id(int drink_id) {
        this.drink_id = drink_id;
    }

    public String getDrink_name() {
        return drink_name;
    }

    public void setDrink_name(String drink_name) {
        this.drink_name = drink_name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getKind_of_Drink() {
        return kind_of_Drink;
    }

    public void setKind_of_Drink(String kind_of_Drink) {
        this.kind_of_Drink = kind_of_Drink;
    }

    public String[] getIngredient() {
        return ingredient;
    }

    public void setIngredient(String[] ingredient) {
        this.ingredient = ingredient;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
