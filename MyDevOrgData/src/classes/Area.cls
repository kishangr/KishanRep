public class Area
{
    integer r,l,b;
    double S,A;
    
    public void area(integer r)
    {
        A = 3.14*r*r;
        System.debug('Area' + A);
        System.debug('Its circle');
    }
    
    public void area(integer l, integer b)
    {
        A = l*b;
        System.debug('Area' + A);
        System.debug('Its quadrilateral');  
    }
}