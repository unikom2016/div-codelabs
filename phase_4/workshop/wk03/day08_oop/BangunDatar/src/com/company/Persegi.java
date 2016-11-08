package com.company;

import java.util.Scanner;

/**
 * Created by mochadwi on 10/27/16.
 */
public final class Persegi {
    // Attribute
    protected double sisi;

    // Default constructor
    public Persegi() {
        sisi = 0;
    }

    public Persegi(double sisi) {
        this.sisi = sisi;
    }

    public double getSisi() {
        return sisi;
    }

    public void setSisi(double s) {
        this.sisi = s;
    }

    // Method
    public double hitungLuas() {
        return sisi * sisi;
    }

    public double hitungKeliling() {
        return 2 * sisi;
    }

    public void tampilHasilHitungLuas() {
        System.out.println("Luas : " + hitungLuas());
    }

    public void tampilHasilHitungKeliling() {
        System.out.println("Keliling : " + hitungKeliling());
    }
}
