@RestResource(urlMapping='/OrderHistoryCreate/*')
global class OrderHistoryCreation{
    @HttpPost
    global Static responseWrapper doPost()
    {
        ResponseWrapper responseWrapper = new ResponseWrapper();
        String body = System.RestContext.request.requestBody.toString();
        System.debug('Value in body variable: '+body);
        if(body!=null || body!='')
        {
            Contact con;
            List<OrderHistory__c> UpdateOrderHistory = new List<OrderHistory__c>();
            JsonParser JsonVariable = (JsonParser)JSON.deserialize(String.valueOf(body), JsonParser.class);
            System.debug('Value in Json variable: '+JsonVariable);
            OrderHistory__c orderhisobj = new OrderHistory__c();
            List<OrderHistory__c> UpdateOrderHistry = new List<OrderHistory__c>();
            
            CreateOrderHistory createorderhis = JsonVariable.CreateOrderHistory;
            OrderHistoryFieldMap orderhistorymap = createorderhis.OrderHistoryFieldMap;
            try
            {
                if(orderhistorymap.customerId != null){
                    con = [select id from Contact where id =:orderhistorymap.customerId];
                }
            }
            catch(Exception e)
            {
                responseWrapper.status = 'Customer id is mandatory or else enter a valid customer id';
                return responseWrapper;
            }
            
            try{
               /* List<Order_History__c> orderhistory = [select id,contact_name__c,Name,order_link__c,Order_Link_in_HTML__c,order_number__c,Transaction_Amount__c,Transaction_Date__c from Order_History__c];
                for(Order_History__c oh: orderhistory)
                {
                    OrdernoToOrderHistryMap.put(oh.order_number__c,oh);
                } */
                List<OrderHistory__c> orderhislist = [select id,Contact__c,Name,OrderLink__c,Order_Link_In_HTML__c,OrderNumber__c from OrderHistory__c where OrderNumber__c =:orderhistorymap.orderNumber];
                if(!orderhislist.isEmpty())
                {
             		for(OrderHistory__c orderhistory:orderhislist)
                {  
                        orderhisobj.Id = orderhistory.Id;
                        orderhisobj.Name = orderhistorymap.orderHistoryname;
                        orderhisobj.OrderLink__c = orderhistorymap.orderLink;
                        orderhisobj.Order_Link_In_HTML__c = orderhistorymap.orderLinkHtml;
                        //orderhisobj.Transaction_Amount__c = orderhistorymap.amount;
                        //orderhisobj.Transaction_Date__c = orderhistorymap.tranDate;
                    UpdateOrderHistry.add(orderhisobj);
                    }
                update UpdateOrderHistry;
                responseWrapper.status = 'Successfully updated order history';
                responseWrapper.orderhistroyid = orderhisobj.Id;
                return responseWrapper;
                }
                else{   
                OrderHistory__c orderhobj2 = new OrderHistory__c();
                orderhobj2.Contact__c = con.id;
                orderhobj2.Name = orderhistorymap.orderHistoryname;
                orderhobj2.OrderLink__c = orderhistorymap.orderLink;
                orderhobj2.Order_Link_In_HTML__c = orderhistorymap.orderLinkHtml;
                orderhobj2.OrderNumber__c = orderhistorymap.orderNumber;
                //orderhobj2.Transaction_Amount__c = orderhistorymap.amount;
                //orderhobj2.Transaction_Date__c = orderhistorymap.tranDate;
                
                insert orderhobj2;
                
                OrderHistory__c orderhistoryQueryresult = [select id,Name from OrderHistory__c where id =:orderhobj2.Id]; 
                responseWrapper.status = 'Successfully created Order';
                responseWrapper.orderhistroyid = orderhistoryQueryresult.Id;
                return responseWrapper;
                }
            }
            catch(Exception e)
            {
                responseWrapper.status = 'Unable to create or update order. Please check all the mandatory fields';
                return responseWrapper;               
            }
            
        }
        return responseWrapper;
    }
    
    global class JsonParser{
        public CreateOrderHistory CreateOrderHistory{get;set;}
    }
    
    
    public class OrderHistoryFieldMap{
        public String customerId{get;set;}
        public String orderNumber{get;set;}
        public String orderLinkHtml{get;set;}
        public String orderLink{get;set;}
        public String orderHistoryname{get;set;}
        public Date tranDate{get;set;}
        public Double amount{get;set;}
    }
    public class CreateOrderHistory{
        public OrderHistoryFieldMap OrderHistoryFieldMap{get;set;}
    }
    global class ResponseWrapper{
        public String status;
        public String orderhistroyid;
    }
}