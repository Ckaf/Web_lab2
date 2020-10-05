import java.io.Serializable;

public class Object implements Serializable {
    public static double x;
    public double y;
    public double r;
    public boolean result;
    public Object(double x, double y, double r, boolean result) {
    this.x=x;
    this.y=y;
    this.r=r;
    this.result=result;
    }
    public static double getX(){
        return x;
    }

    public double getR() {
        return r;
    }

    public double getY() {
        return y;
    }

    public boolean getResult() {
        return result;
    }

    public void setY(double y) {
        this.y = y;
    }

    public static void setX(double x) {
        Object.x = x;
    }

    public void setR(double r) {
        this.r = r;
    }

    public boolean setResult() {
        return result;
    }
}
