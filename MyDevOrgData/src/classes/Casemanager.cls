@RestResource(urlMapping='/Cases/*')
global with sharing class Casemanager
{
    @HttpGet
    global static Case getCaseById()
    {
        RestRequest request = restcontext.request;
        String caseid = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case result = [select CaseNumber,Subject,Status,Priority,Origin FROM Case WHERE Id =:caseid];
        return result;
    }
    @HttpPost
    global static ID createCase(String subject,String status,String origin,String priority)
    {
        Case thisCase = new Case(Subject = subject,Status=status,Origin=origin,Priority = priority);
        insert thisCase;
        return thisCase.Id;
    }
    
}