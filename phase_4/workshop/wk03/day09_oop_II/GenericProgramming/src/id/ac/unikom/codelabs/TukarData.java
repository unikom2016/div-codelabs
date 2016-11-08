package id.ac.unikom.codelabs;

/**
 * Created by mochadwi on 10/28/16.
 */
public class TukarData<T> {
    private T a, b, temp;

    public TukarData() {
    }

    public T getA() {
        return a;
    }

    public void setA(T a) {
        this.a = a;
    }

    public T getB() {
        return b;
    }

    public void setB(T b) {
        this.b = b;
    }

    public T getTemp() {
        return temp;
    }

    public void setTemp(T temp) {
        this.temp = temp;
    }

    public void tukarDataVariabel() {
        temp = a;
        a = b;
        b = temp;
    }

    public void tampilHasil() {
        System.out.println("Variabel A: " + a);
        System.out.println("Variabel B: " + b);
    }
}
