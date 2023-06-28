package com.example.Animal;

public class Animal {
    String color;
    int age;
    int weight;
    void info(String a, int b, int c)
    {
        color = a;
        age = b;
        weight = c;
    }
    void display()
    {
        System.out.println(color+" "+age+" "+weight);
    }
    public static void main(String[] args)
    {
        Animal guzo = new Animal();
        guzo.info("white", 6, 35);
        guzo.display();

        Animal fonto = new Animal();
        fonto.info("black",4,40);
        fonto.display();
    }
}
