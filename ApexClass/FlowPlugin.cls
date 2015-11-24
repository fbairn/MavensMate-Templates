global class {{ api_name }} implements Process.Plugin {

    // This method runs when called by a flow's Apex plug-in element.
    global Process.PluginResult invoke(
        Process.PluginRequest request) {
        // Set up variables to store input parameters from 
        // the flow.
        String stringParam = (String) request.inputParameters.get('stringParam');
        Integer integerParam = (Integer) request.inputParameters.get('integerParam');
        Boolean boolParam = (Boolean) request.inputParameters.get('boolParam');
        
        // Set the default handling for booleans. 
        if (boolParam == null) 
            boolParam = false;

        //TODO: Add process here
        Map<String,Object> result = new Map<String,Object>();
        result.put('stringParam', 'String');
        result.put('integerParam', 0);
        result.put('boolParam', false);
        return new Process.PluginResult(result); 
    }


	// This method describes the plug-in and its inputs from
    // and outputs to the flow.
    // Implementing this method adds the class to the 
    // Cloud Flow Designer palette.
    global Process.PluginDescribeResult describe() {
        // Set up plugin metadata
        Process.PluginDescribeResult result = new 
            Process.PluginDescribeResult();
        result.description = 
            'This is a template for a Flow plugin.';
        result.tag = 'Template';
        
        // Create a list that stores both mandatory and optional 
        // input parameters from the flow.
        // NOTE: Only primitive types (STRING, NUMBER, etc.) are 
        // supported at this time.
        // Collections are currently not supported.
        result.inputParameters = new 
            List<Process.PluginDescribeResult.InputParameter>{
            // String (mandatory)
            new Process.PluginDescribeResult.InputParameter(
                'stringParam', 
                Process.PluginDescribeResult.ParameterType.STRING, 
                true),
            // Integer (optional)
            new Process.PluginDescribeResult.InputParameter(
                'integerParam', 
                Process.PluginDescribeResult.ParameterType.INTEGER, 
                false),
            // Boolean (optional)
            new Process.PluginDescribeResult.InputParameter(
                'boolParam', 
                Process.PluginDescribeResult.ParameterType.BOOLEAN, 
                false)                                                   
        };

        // Create a list that stores output parameters sent 
        // to the flow.
        result.outputParameters = new List<
            Process.PluginDescribeResult.OutputParameter>{
            // String
            new Process.PluginDescribeResult.OutputParameter(
                'stringParam', 
                Process.PluginDescribeResult.ParameterType.STRING),
            // Integer
            new Process.PluginDescribeResult.OutputParameter(
                'integerParam', 
                Process.PluginDescribeResult.ParameterType.INTEGER),
            // Boolean
            new Process.PluginDescribeResult.OutputParameter(
                'boolParam', 
                Process.PluginDescribeResult.ParameterType.BOOLEAN)                
        };

        return result;
    }
}