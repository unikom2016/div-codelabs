package com.company;

/**
 * Created by mochadwi on 10/27/16.
 */
public class Balok extends PersegiPanjang {

    private double tinggi;

    public Balok() {
    }

    public Balok(double lebar, double panjang, double tinggi) {
        super(lebar, panjang);
        this.tinggi = tinggi;
    }

    public double hitungVolume() {
        double volume = hitungLuas() * tinggi;
        return volume;
    }

    public double hitungLuasPermukaan() {
        double luasPermukaan = 2 * (hitungLuas() + panjang * tinggi + lebar * tinggi);
        return luasPermukaan;
    }
}
