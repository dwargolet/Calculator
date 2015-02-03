package lab4.model;

/**
 *
 * @author Daniel
 */
public class CircleAreaCalculator {
    
    private double area;
    private String msg;
    private String areaString;
    
    private void calculateArea(String radius){      
        area = Math.PI * (Double.parseDouble(radius) * Double.parseDouble(radius));
        areaString = Double.toString(area);            
    }

    public String getAreaString(String radius){
        calculateArea(radius);
        return areaString;
    }
    
    public String getAreaMsg(String radius){
        calculateArea(radius);       
        msg = "The area of the circle is " + areaString;
        return msg;
    }  
    
    
}
