package lab1.model;

/**
 *
 * @author dworgolet
 */
public class AreaCalculatingService {
    
    
    private double area;
    private String msg;
    
    
    private void calculateArea(double length, double width){
        area = length*width;
    }
    
    public double getArea(double length, double width){
        calculateArea(length, width);
        return area;
    }
    
    public String getAreaMsg(double length, double width){
        calculateArea(length, width);       
        msg = "The area of the rectange is " + area;
        return msg;
    }
    
    public double getLength(double length){
        return length;
    }
    
    public double getWidth(double width){
        return width;
    }
    
}
