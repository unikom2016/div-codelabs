package id.ac.unikom.codelabs;

/**
 * Created by mochadwi on 10/28/16.
 */
public class Main {
    public static void main(String[] args) {
        PersegiPanjang persegiPanjang = new PersegiPanjang();
        persegiPanjang.setLebar(10);
        persegiPanjang.setPanjang(30);

        persegiPanjang.hitungLuas();
        persegiPanjang.hitungKeliling();
    }
}
