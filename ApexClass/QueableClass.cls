public with sharing class {{ api_name }} implements Queueable {
	private List<SObject> dataList;

	public {{ api_name }}(List<SObject> dataList) {
		this.dataList = dataList;
	}

	public void execute(QueueableContext context) {
		//Do something with the data here.
	}
}