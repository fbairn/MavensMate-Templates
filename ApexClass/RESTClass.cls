@RestResource(urlMapping='/{ api_name }/*')
global class {{ api_name }} {
	
    @HttpGet
    global static string DoGet() {
        return 'Hello APEX World!';
    }

    @HttpDelete
    global static string DoDelete() {
        return 'Deleted something important';
    }

    @HttpPost
    global static string DoPost() {
        return 'Create something amazing';
    }

    @HttpPatch  //can also be used for PUT
    global static string DoPatch() {
        return 'Change the World';
    }
}