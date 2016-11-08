package id.ac.unikom.codelabs;

/**
 * Created by mochadwi on 10/28/16.
 */
public class Persegi extends BangunDatar {
    private double sisi;

    public Persegi() {
    }

    public Persegi(double sisi) {
        super();
        this.sisi = sisi;
    }

    public double getSisi() {
        return sisi;
    }

    public void setSisi(double sisi) {
        this.sisi = sisi;
    }

    @Override
    public void hitungLuas() {
        super.hitungLuas();
        System.out.println("Luas persegi: " + (sisi * sisi));
    }

    @Override
    public void hitungKeliling() {
        super.hitungKeliling();
        System.out.println("Keliling persegi: " + (2 * sisi));
    }
}
