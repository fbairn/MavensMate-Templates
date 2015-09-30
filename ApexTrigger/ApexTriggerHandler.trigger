trigger {{ api_name }} on {{ object_name }} (
	before insert, 
	before update, 
	before delete, 
	after insert, 
	after update, 
	after delete, 
	after undelete) {

	EB_TriggerHandler th = new EB_TriggerHandler();
	th.bind(EB_TriggerHandler.Evt.afterinsert, new {{ object_name }}Handle());
	th.bind(EB_TriggerHandler.Evt.afterupdate, new {{ object_name }}Handle());

	//execute bindings
	th.manage();
}
