package id.ac.unikom.codelabs;

/**
 * Created by mochadwi on 10/28/16.
 */
public class PersegiPanjang extends BangunDatar {
    private double panjang, lebar;

    public PersegiPanjang() {
    }

    public PersegiPanjang(double panjang, double lebar) {
        this.panjang = panjang;
        this.lebar = lebar;
    }

    public double getPanjang() {
        return panjang;
    }

    public void setPanjang(double panjang) {
        this.panjang = panjang;
    }

    public double getLebar() {
        return lebar;
    }

    public void setLebar(double lebar) {
        this.lebar = lebar;
    }

    @Override
    public void hitungKeliling() {
        super.hitungKeliling();
        System.out.println("Keliling Persegi Panjang: " + 2 * (panjang + lebar));
    }

    @Override
    public void hitungLuas() {
        super.hitungLuas();
        System.out.println("Luas Persegi Panjang: " + panjang * lebar);
    }
}
