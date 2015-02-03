package lab4.model;

/**
 *
 * @author Daniel
 */
public class TriangleAreaCalculator {
    private double area;
    private String msg;
    private String areaString;
    
    private void calculateArea(String height, String base){      
        area = (Double.parseDouble(height) * Double.parseDouble(base)) / 2;
        areaString = Double.toString(area);       
    }

    public String getAreaString(String height, String base){
        calculateArea(height, base);
        return areaString;
    }
    
    public String getAreaMsg(String height, String base){
        calculateArea(height, base);       
        msg = "The area of the triangle is " + areaString;
        return msg;
    }
}
