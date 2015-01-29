package lab3.model;

/**
 *
 * @author Daniel
 */
public class RectangleAreaService {
    private double area;
    private String msg;
    private String areaString;

    
    private void calculateArea(String length, String width){      
        area = Double.parseDouble(length) * Double.parseDouble(width);
        areaString = Double.toString(area);      
        
    }

    public String getAreaString(String length, String width){
        calculateArea(length, width);
        return areaString;
    }
    
    public String getAreaMsg(String length, String width){
        calculateArea(length, width);       
        msg = "The area of the rectange is " + areaString;
        return msg;
    }
}
