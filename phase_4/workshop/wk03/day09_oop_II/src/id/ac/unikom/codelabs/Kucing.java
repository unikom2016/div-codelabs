package id.ac.unikom.codelabs;

/**
 * Created by mochadwi on 10/28/16.
 */
public class Kucing {
    private String makanan;

    public Kucing() {
    }

    public Kucing(String makanan) {
        this.makanan = makanan;
    }

    public String getMakanan() {
        return makanan;
    }

    public void setMakanan(String makanan) {
        this.makanan = makanan;
    }

    public void makan() {
        System.out.println("Kucing senang makan " + makanan);
    }

    public void makan(String makananDiBenci) {
        System.out.println("Kucing senang makan " + makanan + ", tapi kucing benci " + makananDiBenci);
    }
}
