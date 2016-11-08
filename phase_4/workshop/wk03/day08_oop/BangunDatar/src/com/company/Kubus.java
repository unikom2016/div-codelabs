package com.company;

/**
 * Created by mochadwi on 10/27/16.
 */
public class Kubus extends Persegi {

    public Kubus(double sisi) {
        super(sisi);
    }

    public Kubus() {}

    public double hitungVolume() {
        double volume = hitungLuas() * sisi;
        return volume;
    }

    public double hitungLuasPermukaan() {
        double luasPermukaan = 6 * hitungLuas();
        return luasPermukaan;
    }
}
