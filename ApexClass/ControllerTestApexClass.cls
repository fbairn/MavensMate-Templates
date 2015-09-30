@isTest
private class {{ api_name }} {
	
    private static {{ controller_name }} controller;

    private static void SetupPage()
    {
        SetupPage(new Map<String, String>());
    }

    private static void SetupPage(Map<String, String> Parameters)
    {
        SoObject record=[Select id from ObjectType limit 1];    //Change ObjectType

        //Setup the page reference
        PageReference pageRef = Page.ApexPage;  //Change to name of Apex Page
        pageRef.getParameters().put('Id', record.Id);
        for(String key: Parameters.keySet())
        {
            pageRef.getParameters().put(key, Parameters.get(key));
        }
        Test.setCurrentPage(pageRef);
        controller=new {{ controller_name }}(new ApexPages.StandardController(record));
    }

    @testSetup static void SetupData()
    {
        //Setup test data
    }

    //Tests the class constructor
    @isTest static void Test_Constructor()
    {
        Try
        {
            SetupPage();
        }
        catch(Exception e)
        {
            System.Assert(false,'The following exception has occurred: ' + e.getMessage());
        }
        System.Assert(true);    //No errors
    }

    @isTest static void test_method_one()
    {
        SetupPage();

        System.assert(false,'TODO: Build test cases');
    }
}