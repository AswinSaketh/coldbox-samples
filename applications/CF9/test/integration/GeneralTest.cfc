/**
Author 	 :	Luis Majano
Date     :	September 25, 2005
Description :
	Unit Tests integration for the general Handler.

@output false
*/
component extends="coldbox.system.testing.BaseTestCase"{
	
	//Uncomment the following if you dont' need the controller in application scope for testing.
	//this.PERSIST_FRAMEWORK = false;

	void function setup(){
		//Setup ColdBox Mappings For this Test
		setAppMapping("/coldbox/ApplicationTemplate");
		setConfigMapping(ExpandPath(instance.AppMapping & "/config/coldbox.xml.cfm"));
			
		//Call the super setup method to setup the app.
		super.setup();
		
		//EXECUTE THE APPLICATION START HANDLER: UNCOMMENT IF NEEDED AND FILL IT OUT.
		//getController().runEvent("main.onAppInit");

		//EXECUTE THE ON REQUEST START HANDLER: UNCOMMENT IF NEEDED AND FILL IT OUT
		//getController().runEvent("main.onRequestStart");
	} 
	
	void function testIndex(){
		var event = "";
		
		//Place any variables on the form or URL scope to test the handler.
		//FORM.name = "luis"
		event = execute("general.index");
		
		debug(event.getCollection());
		
		//Do your asserts below
		assertEquals("Welcome to ColdBox!", event.getValue("welcomeMessage",""), "Failed to assert welcome message");
			
	}
	
	void function testSomething(){
		var event = "";
		
		//Place any variables on the form or URL scope to test the handler.
		//FORM.name = "luis"
		event = execute("general.doSomething");
		
		debug(event.getCollection());
			
		//Do your asserts below for setnextevent you can test for a setnextevent boolean flag
		assertEquals("general.index", event.getValue("setnextevent",""), "Relocation Test");
	}
}	