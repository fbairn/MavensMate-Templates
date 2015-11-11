@isTest
private class {{ api_name }} {
	
    @testSetup static void setupMethod()
    {

    }

	@isTest static void test_method() {
		//Setup Test Data
		
		//Preform Test
		Test.StartTest();
		
		Test.StopTest();

		//Assert test results
        System.assertEquals(true,false);
	}
	
}