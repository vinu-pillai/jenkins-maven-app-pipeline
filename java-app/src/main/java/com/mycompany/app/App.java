package com.mycompany.app;

/**
 * Hello world!
 */
public class App
{

    private final String message = "If you see this message, then you have successfully deployed a java app! Boo-Hoo..!!";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}
