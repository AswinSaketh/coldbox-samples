<?xml version="1.0" encoding="UTF-8"?>
<Config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:noNamespaceSchemaLocation="http://www.coldboxframework.com/schema/config_3.0.0.xsd">
	<Settings>
		<Setting name="AppName" 					value="Coldbox Flex Tester"/>
		<Setting name="AppMapping" 					value="/coldbox/samples/applications/ColdboxFlexTester/webroot"/>
		<Setting name="DebugMode" 					value="true"/>
		<Setting name="DebugPassword" 				value=""/>
		<Setting name="ReinitPassword" 				value=""/>
		<Setting name="EventName" 					value="event"/>
		<Setting name="DefaultEvent" 				value="ehFlex.monitor"/>
		<Setting name="RequestStartHandler" 		value=""/>
		<Setting name="RequestEndHandler" 			value=""/>
		<Setting name="ApplicationStartHandler"		value="ehGeneral.onApplicationStart" />
		<Setting name="SessionStartHandler"		    value="" />
		<Setting name="SessionEndHandler"		    value="" />
		<Setting name="UDFLibraryFile" 				value="" />
		<Setting name="CustomErrorTemplate"			value="" />
		<Setting name="MessageboxStyleOverride"		value="false" />
		<Setting name="HandlersIndexAutoReload"   	value="true" />
		<Setting name="ConfigAutoReload"			value="false" />
		<Setting name="ExceptionHandler"     		value="" />
		<Setting name="onInvalidEvent" 				value="" />
		<Setting name="PluginsExternalLocation" 			value=""/>
		<Setting name="HandlerCaching" 				value="false"/>
		<Setting name="RequestContextDecorator"		value="" />		
		<Setting name="ProxyReturnCollection" 		value="false" />
	</Settings>

	<YourSettings>
		<Setting name="MyArray"  value="[1,2,3,4,5,6]"/>
		<Setting name="MyStruct" value="{ 'name': 'luis majano', 'email': 'info@email.com', 'active':'true' }"/>
	</YourSettings>

	<!-- 
		ColdBox Logging via LogBox
		Levels: -1=OFF,0=FATAL,1=ERROR,2=WARN,3=INFO,4=DEBUG,5=TRACE
	-->
	<LogBox>
		<!-- Log to console -->
		<Appender name="console" class="coldbox.system.logging.appenders.ConsoleAppender" />
		<!-- Log to ColdBox Files -->
		<Appender name="coldboxfile" class="coldbox.system.logging.appenders.AsyncRollingFileAppender">
			<Property name="filePath">logs</Property>
			<Property name="fileName">${AppName}</Property>	
		</Appender>
		<!-- Root Logger Definition -->
		<Root levelMin="FATAL" levelMax="DEBUG" appenders="*" />
		<!-- Category Definitions Below -->
	</LogBox>
	
	<!--Optional,if blank it will use the CFMX administrator settings.-->
	<MailServerSettings />

	<BugTracerReports>
		<BugEmail>info@coldboxframework.com</BugEmail>
	</BugTracerReports>

	<WebServices >
		<WebService URL="http://www.test.com/test.cfc?wsdl" name="TestWS"/>
		<WebService URL="http://www.coldbox.com/testit.cfc?wsdl" name="AnotherTestWS"/>
	</WebServices>

	<Layouts>
		<DefaultLayout>Layout.Main.cfm</DefaultLayout>
	</Layouts>

	<i18N />

	<Datasources>
		<Datasource alias="mysite" name="mysite" dbtype="mysql"  username="root" password="pass" />
		<Datasource alias="blog_dsn" name="myblog" dbtype="oracle" username="root" password="pass" />
	</Datasources>
	
	<Cache>
		<ObjectDefaultTimeout>15</ObjectDefaultTimeout>
		<ObjectDefaultLastAccessTimeout>5</ObjectDefaultLastAccessTimeout>
		<ReapFrequency>3</ReapFrequency>
		<MaxObjects>100</MaxObjects>
		<FreeMemoryPercentageThreshold>0</FreeMemoryPercentageThreshold>
	</Cache>
	
	<Interceptors>
		<CustomInterceptionPoints>onLog</CustomInterceptionPoints>
		<Interceptor class="coldbox.samples.applications.ColdboxFlexTester.webroot.interceptors.executionTracer">
			<Property name="Simple">Luis</Property>
			<Property name="Complex">[1,2,3,4,5]</Property>
		</Interceptor>
	</Interceptors>

</Config>
