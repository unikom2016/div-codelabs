package com.company;

import java.util.Scanner;

/**
 * Created by mochadwi on 10/27/16.
 */
public class PersegiPanjang {

    protected double lebar;
    protected double panjang;

    public PersegiPanjang() {

    }

    public PersegiPanjang(double lebar, double panjang) {
        this.lebar = lebar;
        this.panjang = panjang;
    }

    public void isiNilaiDariKeyboard() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Masukkan lebar: ");
        lebar = scanner.nextDouble();

        System.out.println("Masukkan panjang: ");
        panjang = scanner.nextDouble();
    }

    public double getLebar() {
        return lebar;
    }

    public void setLebar(double lebar) {
        this.lebar = lebar;
    }

    public double getPanjang() {
        return panjang;
    }

    public void setPanjang(double panjang) {
        this.panjang = panjang;
    }

    protected double hitungLuas() {
        return panjang * lebar;
    }

    protected double hitungKeliling() {
        return 2 * (lebar + panjang);
    }

//    public void tampilHasilPerhitungan() {
//        System.out.println("Luas        : " + hitungLuas());
//        System.out.println("Keliling    : " + hitungKeliling());
//    }
}
