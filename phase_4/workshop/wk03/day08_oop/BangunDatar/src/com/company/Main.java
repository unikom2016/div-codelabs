package com.company;

/**
 * Created by mochadwi on 10/27/16.
 */
public class Main {
    public static void main(String[] args) {
        Kubus kubus = new Kubus();
        kubus.setSisi(10);

        System.out.println("Volume kubus: " + kubus.hitungVolume());
        System.out.println("Luas kubus: " + kubus.hitungLuasPermukaan());

        Kubus kubusPersegi = new Kubus();
        System.out.println("Luas persegi: " + kubus.hitungLuas());

        Balok balok = new Balok(10, 10, 10);
        System.out.println("Volume balok: " + balok.hitungVolume());
        System.out.println("Luas Permukaan balok: " + balok.hitungLuasPermukaan());
    }
}
