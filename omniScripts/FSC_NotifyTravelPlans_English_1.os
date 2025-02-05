<?xml version="1.0" encoding="UTF-8"?>
<OmniScript xmlns="http://soap.sforce.com/2006/04/metadata">
    <description>Service process to send out a travel notification request</description>
    <elementTypeComponentMapping>{&quot;ElementTypeToHTMLTemplateList&quot;:[]}</elementTypeComponentMapping>
    <isActive>false</isActive>
    <isIntegrationProcedure>false</isIntegrationProcedure>
    <isMetadataCacheDisabled>false</isMetadataCacheDisabled>
    <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
    <isTestProcedure>false</isTestProcedure>
    <isWebCompEnabled>true</isWebCompEnabled>
    <language>English</language>
    <name>FSCNotifyTravelPlansEnglish</name>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>CreateCase</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;remoteClass&quot; : &quot;NotifyTravelPlansHelperFunctions&quot;,
  &quot;remoteMethod&quot; : &quot;callCreateCaseApi&quot;,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;extraPayload&quot; : {
    &quot;accountId&quot; : &quot;%ContextId%&quot;,
    &quot;svcCatalogItemDefApiName&quot; : &quot;NotifyTravelPlans&quot;,
    &quot;isCommunitySite&quot; : &quot;%isCommunitySite%&quot;,
    &quot;dateOfDeparture&quot; : &quot;%TravelDetail:DepartureDate%&quot;,
    &quot;dateOfReturn&quot; : &quot;%TravelDetail:ReturnDate%&quot;,
    &quot;email&quot; : &quot;%CommunicationPreferences:Email%&quot;,
    &quot;phone&quot; : &quot;%CommunicationPreferences:Phone:PhoneNumber%&quot;,
    &quot;mobile&quot; : &quot;%CommunicationPreferences:Mobile:PhoneNumber%&quot;,
    &quot;alternatePhoneCountryCode&quot; : &quot;%CommunicationPreferences:AlternatePhone:CountryCode%&quot;,
    &quot;alternatePhoneNumber&quot; : &quot;%CommunicationPreferences:AlternatePhone:PhoneNumber%&quot;,
    &quot;domesticDestination&quot; : &quot;%StatesToStringFormula%&quot;,
    &quot;internationalDestination&quot; : &quot;%CountriesToStringFormula%&quot;,
    &quot;selectedCards&quot; : &quot;%SelectedCardData%&quot;,
    &quot;caseSubject&quot; : &quot;%accounts:name% - Notify Travel Plans Service Request&quot;
  },
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;Abort&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;Are you sure?&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;Next&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;Previous&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;useContinuation&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;,
  &quot;sendOnlyExtraPayload&quot; : true
}</propertySetConfig>
        <sequenceNumber>20.0</sequenceNumber>
        <type>Remote Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>FSC_ServiceProcessGetAccountDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;bundle&quot; : &quot;FSCServiceProcessGetAccountDetails&quot;,
  &quot;ignoreCache&quot; : false,
  &quot;dataRaptor Input Parameters&quot; : [ {
    &quot;element&quot; : &quot;ContextId&quot;,
    &quot;inputParam&quot; : &quot;AccountId&quot;
  } ],
  &quot;remoteTimeout&quot; : 30000,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>2.0</sequenceNumber>
        <type>DataRaptor Extract Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <embeddedOmniScriptKey>FSC|ConfirmationScreen|English</embeddedOmniScriptKey>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>FSCConfirmationScreenEnglish</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;Type&quot; : &quot;FSC&quot;,
  &quot;Sub Type&quot; : &quot;ConfirmationScreen&quot;,
  &quot;Language&quot; : &quot;English&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  }
}</propertySetConfig>
        <sequenceNumber>24.0</sequenceNumber>
        <type>OmniScript</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetCardDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;NotifyTravelPlans_GetCardDetails&quot;,
  &quot;useContinuation&quot; : false,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;,
    &quot;useFuture&quot; : false,
    &quot;chainable&quot; : false
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;extraPayload&quot; : {
    &quot;AccountId&quot; : &quot;%ContextId%&quot;
  },
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;,
  &quot;sendOnlyExtraPayload&quot; : true
}</propertySetConfig>
        <sequenceNumber>3.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetCountryList</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;remoteClass&quot; : &quot;NotifyTravelPlansHelperFunctions&quot;,
  &quot;remoteMethod&quot; : &quot;getCountryPicklistValues&quot;,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;extraPayload&quot; : { },
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;useContinuation&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>9.0</sequenceNumber>
        <type>Remote Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetSelectedCards</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;NotifyTravelPlans_GetSelectedCards&quot;,
  &quot;useContinuation&quot; : false,
  &quot;remoteOptions&quot; : {
    &quot;useFuture&quot; : false,
    &quot;chainable&quot; : false,
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;,
    &quot;&quot; : null
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;extraPayload&quot; : {
    &quot;SelectedDebitCards&quot; : &quot;%SelectedDebitCards%&quot;,
    &quot;SelectedCreditCards&quot; : &quot;%SelectedCreditCards%&quot;
  },
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;,
  &quot;sendOnlyExtraPayload&quot; : true
}</propertySetConfig>
        <sequenceNumber>8.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetStateList</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;StatePicklistValues&quot; : [ {
      &quot;label&quot; : &quot;Alabama&quot;,
      &quot;value&quot; : &quot;Alabama&quot;
    }, {
      &quot;label&quot; : &quot;Alaska&quot;,
      &quot;value&quot; : &quot;Alaska&quot;
    }, {
      &quot;label&quot; : &quot;American Samoa&quot;,
      &quot;value&quot; : &quot;American Samoa&quot;
    }, {
      &quot;label&quot; : &quot;Arizona&quot;,
      &quot;value&quot; : &quot;Arizona&quot;
    }, {
      &quot;label&quot; : &quot;Arkansas&quot;,
      &quot;value&quot; : &quot;Arkansas&quot;
    }, {
      &quot;label&quot; : &quot;California&quot;,
      &quot;value&quot; : &quot;California&quot;
    }, {
      &quot;label&quot; : &quot;Colorado&quot;,
      &quot;value&quot; : &quot;Colorado&quot;
    }, {
      &quot;label&quot; : &quot;Connecticut&quot;,
      &quot;value&quot; : &quot;Connecticut&quot;
    }, {
      &quot;label&quot; : &quot;Delaware&quot;,
      &quot;value&quot; : &quot;Delaware&quot;
    }, {
      &quot;label&quot; : &quot;District Of Columbia&quot;,
      &quot;value&quot; : &quot;District Of Columbia&quot;
    }, {
      &quot;label&quot; : &quot;Federated States Of Micronesia&quot;,
      &quot;value&quot; : &quot;Federated States Of Micronesia&quot;
    }, {
      &quot;label&quot; : &quot;Florida&quot;,
      &quot;value&quot; : &quot;Florida&quot;
    }, {
      &quot;label&quot; : &quot;Georgia&quot;,
      &quot;value&quot; : &quot;Georgia&quot;
    }, {
      &quot;label&quot; : &quot;Guam&quot;,
      &quot;value&quot; : &quot;Guam&quot;
    }, {
      &quot;label&quot; : &quot;Hawaii&quot;,
      &quot;value&quot; : &quot;Hawaii&quot;
    }, {
      &quot;label&quot; : &quot;Idaho&quot;,
      &quot;value&quot; : &quot;Idaho&quot;
    }, {
      &quot;label&quot; : &quot;Illinois&quot;,
      &quot;value&quot; : &quot;Illinois&quot;
    }, {
      &quot;label&quot; : &quot;Indiana&quot;,
      &quot;value&quot; : &quot;Indiana&quot;
    }, {
      &quot;label&quot; : &quot;Iowa&quot;,
      &quot;value&quot; : &quot;Iowa&quot;
    }, {
      &quot;label&quot; : &quot;Kansas&quot;,
      &quot;value&quot; : &quot;Kansas&quot;
    }, {
      &quot;label&quot; : &quot;Kentucky&quot;,
      &quot;value&quot; : &quot;Kentucky&quot;
    }, {
      &quot;label&quot; : &quot;Louisiana&quot;,
      &quot;value&quot; : &quot;Louisiana&quot;
    }, {
      &quot;label&quot; : &quot;Maine&quot;,
      &quot;value&quot; : &quot;Maine&quot;
    }, {
      &quot;label&quot; : &quot;Marshall Islands&quot;,
      &quot;value&quot; : &quot;Marshall Islands&quot;
    }, {
      &quot;label&quot; : &quot;Maryland&quot;,
      &quot;value&quot; : &quot;Maryland&quot;
    }, {
      &quot;label&quot; : &quot;Massachusetts&quot;,
      &quot;value&quot; : &quot;Massachusetts&quot;
    }, {
      &quot;label&quot; : &quot;Michigan&quot;,
      &quot;value&quot; : &quot;Michigan&quot;
    }, {
      &quot;label&quot; : &quot;Minnesota&quot;,
      &quot;value&quot; : &quot;Minnesota&quot;
    }, {
      &quot;label&quot; : &quot;Mississippi&quot;,
      &quot;value&quot; : &quot;Mississippi&quot;
    }, {
      &quot;label&quot; : &quot;Missouri&quot;,
      &quot;value&quot; : &quot;Missouri&quot;
    }, {
      &quot;label&quot; : &quot;Montana&quot;,
      &quot;value&quot; : &quot;Montana&quot;
    }, {
      &quot;label&quot; : &quot;Nebraska&quot;,
      &quot;value&quot; : &quot;Nebraska&quot;
    }, {
      &quot;label&quot; : &quot;Nevada&quot;,
      &quot;value&quot; : &quot;Nevada&quot;
    }, {
      &quot;label&quot; : &quot;New Hampshire&quot;,
      &quot;value&quot; : &quot;New Hampshire&quot;
    }, {
      &quot;label&quot; : &quot;New Jersey&quot;,
      &quot;value&quot; : &quot;New Jersey&quot;
    }, {
      &quot;label&quot; : &quot;New Mexico&quot;,
      &quot;value&quot; : &quot;New Mexico&quot;
    }, {
      &quot;label&quot; : &quot;New York&quot;,
      &quot;value&quot; : &quot;New York&quot;
    }, {
      &quot;label&quot; : &quot;North Carolina&quot;,
      &quot;value&quot; : &quot;North Carolina&quot;
    }, {
      &quot;label&quot; : &quot;North Dakota&quot;,
      &quot;value&quot; : &quot;North Dakota&quot;
    }, {
      &quot;label&quot; : &quot;Northern Mariana Islands&quot;,
      &quot;value&quot; : &quot;Northern Mariana Islands&quot;
    }, {
      &quot;label&quot; : &quot;Ohio&quot;,
      &quot;value&quot; : &quot;Ohio&quot;
    }, {
      &quot;label&quot; : &quot;Oklahoma&quot;,
      &quot;value&quot; : &quot;Oklahoma&quot;
    }, {
      &quot;label&quot; : &quot;Oregon&quot;,
      &quot;value&quot; : &quot;Oregon&quot;
    }, {
      &quot;label&quot; : &quot;Palau&quot;,
      &quot;value&quot; : &quot;Palau&quot;
    }, {
      &quot;label&quot; : &quot;Pennsylvania&quot;,
      &quot;value&quot; : &quot;Pennsylvania&quot;
    }, {
      &quot;label&quot; : &quot;Puerto Rico&quot;,
      &quot;value&quot; : &quot;Puerto Rico&quot;
    }, {
      &quot;label&quot; : &quot;Rhode Island&quot;,
      &quot;value&quot; : &quot;Rhode Island&quot;
    }, {
      &quot;label&quot; : &quot;South Carolina&quot;,
      &quot;value&quot; : &quot;South Carolina&quot;
    }, {
      &quot;label&quot; : &quot;South Dakota&quot;,
      &quot;value&quot; : &quot;South Dakota&quot;
    }, {
      &quot;label&quot; : &quot;Tennessee&quot;,
      &quot;value&quot; : &quot;Tennessee&quot;
    }, {
      &quot;label&quot; : &quot;Texas&quot;,
      &quot;value&quot; : &quot;Texas&quot;
    }, {
      &quot;label&quot; : &quot;Utah&quot;,
      &quot;value&quot; : &quot;Utah&quot;
    }, {
      &quot;label&quot; : &quot;Vermont&quot;,
      &quot;value&quot; : &quot;Vermont&quot;
    }, {
      &quot;label&quot; : &quot;Virgin Islands&quot;,
      &quot;value&quot; : &quot;Virgin Islands&quot;
    }, {
      &quot;label&quot; : &quot;Virginia&quot;,
      &quot;value&quot; : &quot;Virginia&quot;
    }, {
      &quot;label&quot; : &quot;Washington&quot;,
      &quot;value&quot; : &quot;Washington&quot;
    }, {
      &quot;label&quot; : &quot;West Virginia&quot;,
      &quot;value&quot; : &quot;West Virginia&quot;
    }, {
      &quot;label&quot; : &quot;Wisconsin&quot;,
      &quot;value&quot; : &quot;Wisconsin&quot;
    }, {
      &quot;label&quot; : &quot;Wyoming&quot;,
      &quot;value&quot; : &quot;Wyoming&quot;
    } ]
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>10.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>OmniScript_Analytics</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;OmniScript_Analytics&quot;,
  &quot;integrationProcedureKey&quot; : &quot;OmniScript_Analytics&quot;,
  &quot;useContinuation&quot; : false,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;,
    &quot;useFuture&quot; : false,
    &quot;chainable&quot; : false
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;extraPayload&quot; : { },
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;Abort&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;Are you sure?&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;Next&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;Previous&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>0.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>DebitCards</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCNotifyTravelPlansShowDebitCards&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%CardData:DebitCards%&quot;
  } ]
}</propertySetConfig>
                <sequenceNumber>1.0</sequenceNumber>
                <type>Custom Lightning Web Component</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TextBlock3</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;text&quot; : &quot;&lt;h4&gt;Active Debit Cards&lt;/h4&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Block2</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;collapse&quot; : false,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      }, {
        &quot;field&quot; : &quot;HasDebitCards&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CreditCards</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%CardData:CreditCards%&quot;
  } ],
  &quot;bStandalone&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCNotifyTravelPlansShowCreditCards&quot;,
  &quot;hide&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
                <sequenceNumber>1.0</sequenceNumber>
                <type>Custom Lightning Web Component</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TextBlock4</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;h4&gt;Active Credit Cards&lt;/h4&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Block3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;collapse&quot; : false,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      }, {
        &quot;field&quot; : &quot;HasCreditCards&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>6.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CheckPreselectedCreditCard</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;%CardData:CreditCards:Selected% &amp;&amp; (%SelectCards:Block3:CreditCards% == NULL || (%SelectCards:Block3:CreditCards% != NULL &amp;&amp; %SelectCards:Block3:CreditCards:selectedcards:selectedcreditcards|1:Id% != NULL))&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CheckPreselectedDebitCard</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;hideGroupSep&quot; : false,
  &quot;dataType&quot; : null,
  &quot;mask&quot; : null,
  &quot;show&quot; : null,
  &quot;hide&quot; : true,
  &quot;expression&quot; : &quot;%CardData:DebitCards:Selected% &amp;&amp; (%SelectCards:Block2:DebitCards% == NULL || (%SelectCards:Block2:DebitCards% == NULL &amp;&amp; %SelectCards:Block2:DebitCards:selecteddebitcards:selecteddebitcards|1:Id% != NULL))&quot;,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 3
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>isCardSelected</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;%SelectCards:Block2:Debitcards:selecteddebitcards:selecteddebitcards|1:Id% != NULL || %SelectCards:Block3:Creditcards:selectedcards:selectedcreditcards|1:Id% != NULL || %CardData:DebitCards:Selected% || %CardData:CreditCards:Selected%&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : &quot;Boolean&quot;,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak1</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak1&quot;,
  &quot;padding&quot; : 10,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>1.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak11</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 10,
  &quot;label&quot; : &quot;LineBreak1&quot;
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak5</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak5&quot;,
  &quot;padding&quot; : 0,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak6</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 0,
  &quot;label&quot; : &quot;LineBreak5&quot;
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak7</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak7&quot;,
  &quot;padding&quot; : 50,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NoActiveCards</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCNotifyTravelPlansShowNoActiveCards&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ ]
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectCards_AccountInfo</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;isCommunitySite&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCServiceProcessShowAccountDetails&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%accounts%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>0.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidateCardSelection</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckCardSelection&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select at least one card.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>2.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SelectCards</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Select Card(s)&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;&quot;,
  &quot;previousWidth&quot; : &quot;0&quot;,
  &quot;nextLabel&quot; : &quot;Next&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;&quot;,
  &quot;saveLabel&quot; : &quot;Save for later&quot;,
  &quot;saveMessage&quot; : &quot;Are you sure you want to save it for later?&quot;,
  &quot;completeLabel&quot; : &quot;&quot;,
  &quot;completeMessage&quot; : &quot;&quot;,
  &quot;instruction&quot; : &quot;&quot;,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;remoteClass&quot; : &quot;&quot;,
  &quot;remoteMethod&quot; : &quot;&quot;,
  &quot;remoteTimeout&quot; : 30000,
  &quot;remoteOptions&quot; : { },
  &quot;knowledgeOptions&quot; : {
    &quot;language&quot; : &quot;English&quot;,
    &quot;publishStatus&quot; : &quot;Online&quot;,
    &quot;keyword&quot; : &quot;&quot;,
    &quot;dataCategoryCriteria&quot; : &quot;&quot;,
    &quot;remoteTimeout&quot; : 30000,
    &quot;typeFilter&quot; : &quot;&quot;
  },
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : null,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ConnectAPIResponse&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;instructionKey&quot; : &quot;&quot;,
  &quot;chartLabel&quot; : null,
  &quot;allowSaveForLater&quot; : false,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>5.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCardDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;NoCards&quot; : &quot;%CardData:IsCardEmpty%&quot;,
    &quot;HasCreditCards&quot; : &quot;=IF(COUNT(%CardData:CreditCards%) &gt; 0,true,false)&quot;,
    &quot;HasDebitCards&quot; : &quot;=\nIF(COUNT(%CardData:DebitCards%) &gt; 0,true,false)&quot;,
    &quot;MobileDetails&quot; : &quot;=IF(%accounts:mobile%==null,&apos;N/A&apos;,%accounts:mobile%)&quot;,
    &quot;PhoneDetails&quot; : &quot;=IF(%accounts:phone%==null,&apos;N/A&apos;,%accounts:phone%)&quot;,
    &quot;EmailDetails&quot; : &quot;=IF(%accounts:email%==null,&apos;N/A&apos;,%accounts:email%)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>4.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCardSelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;ValidateCardSelection&quot; : &quot;Select at least one card.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;CheckCardSelection&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;false&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>7.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCaseConfirmationDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;CaseURL&quot; : &quot;=IF(%isCommunitySite% = true, IF(%CommunityBasePath% = &apos;/s&apos;, &apos;s/detail/&apos; + %apiResponse:caseId%, SPLIT(%CommunityBasePath%, &apos;/&apos;, 2)[1] + &apos;/s/detail/&apos; + %apiResponse:caseId%), %apiResponse:caseId%)&quot;,
    &quot;ConfirmationMessageSummary&quot; : &quot;We’ve emailed the case details to you. Your case reference ID is&quot;,
    &quot;CaseNumber&quot; : &quot;%apiResponse:caseNumber%&quot;,
    &quot;Records&quot; : &quot;%accounts%&quot;,
    &quot;ConfirmationMessage&quot; : &quot;The travel plan notification was submitted.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>23.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCommunicationSelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;ValidateCommunicationSelection&quot; : &quot;Select at least one preferred communication method.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckCommunicationSelection&quot;
      }, {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>16.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCountrySelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;pubsub&quot; : false,
  &quot;message&quot; : { },
  &quot;ssm&quot; : false,
  &quot;wpm&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;CheckCountrySelection&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;NotOk&quot;
      }, {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;SelectAtLeastOneCountry&quot; : &quot;Select at least one Country.&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>17.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCreateCaseConfirmation</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetCreateCaseConfirmation&quot;,
  &quot;elementValueMap&quot; : {
    &quot;ConnectAPIResponse&quot; : &quot;=IF(%apiResponse%=NULL, &apos;Error&apos;, &apos;Success&apos;)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>21.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCreateCaseConfirmationError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetCreateCaseConfirmationError&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;APIErrorMessage&quot; : &quot;We couldn’t submit this request. Contact your Salesforce admin for help.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;connectAPIResponse&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Error&quot;
      }, {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>22.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetSelectedCardDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;SelectedDebitCards&quot; : &quot;=IF(%SelectCards:Block2:DebitCards:selecteddebitcards:selecteddebitcards|1:Id% != NULL,%SelectCards:Block2:DebitCards:selecteddebitcards:selecteddebitcards%,IF(%CardData:DebitCards:Selected%,%CardData:DebitCards%,NULL))&quot;,
    &quot;SelectedCreditCards&quot; : &quot;=IF(%SelectCards:Block3:CreditCards:selectedcards:selectedcreditcards|1:Id% != NULL,%SelectCards:Block3:CreditCards:selectedcards:selectedcreditcards%,IF(%CardData:CreditCards:Selected%,%CardData:CreditCards%,NULL))&quot;,
    &quot;CheckCardSelection&quot; : &quot;=%SelectCards:Block2:DebitCards:selecteddebitcards:selecteddebitcards|1:Id% != NULL || %SelectCards:Block3:CreditCards:selectedcards:selectedcreditcards|1:Id% != NULL || %CheckPreselectedCreditCard% || %CheckPreselectedDebitCard%&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>6.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetServiceProcessAccountContext</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;SelfService_SetServiceProcessAccountContext&quot;,
  &quot;useContinuation&quot; : false,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;,
    &quot;useFuture&quot; : false,
    &quot;chainable&quot; : false
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;extraPayload&quot; : { },
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>1.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetState/CountrySelectionValue</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;pubsub&quot; : false,
  &quot;message&quot; : { },
  &quot;ssm&quot; : false,
  &quot;wpm&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementValueMap&quot; : {
    &quot;CheckStateSelection&quot; : &quot;=IF(%Domestic% = true &amp;&amp; %SelectedStatesDetails% = null,&apos;NotOk&apos;,&apos;Ok&apos;)&quot;,
    &quot;CheckCountrySelection&quot; : &quot;=IF(%International% = true &amp;&amp; %SelectedCountriesDetails% = null,&apos;NotOk&apos;,&apos;Ok&apos;)&quot;
  },
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>12.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetStateSelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;SelectAtLeastOneState&quot; : &quot;Select at least one State.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;NotOk&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckStateSelection&quot;
      }, {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>14.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetTravel/CommunicationSelectionValue</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;CheckTravelSelection&quot; : &quot;=IF((%International% == true || %Domestic% == true),true,false)&quot;,
    &quot;CheckCommunicationSelection&quot; : &quot;=IF((%Email% == true || %Phone% == true || %Mobile% == true || %AlternatePhone% == true),true,false)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>13.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetTravelSelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;ValidateTravelSelection&quot; : &quot;Select at least one travel destination.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckTravelSelection&quot;
      }, {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>15.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetTravelSummary</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;TravelDetail&quot; : {
      &quot;DepartureDate&quot; : &quot;%DateofDeparture%&quot;,
      &quot;ReturnDate&quot; : &quot;%DateofReturn%&quot;,
      &quot;DomesticSelected&quot; : &quot;%Domestic%&quot;,
      &quot;InternationalSelected&quot; : &quot;%International%&quot;,
      &quot;UsDestinations&quot; : &quot;=IF(%Domestic%=true,%SelectedStatesDetails%,null)&quot;,
      &quot;InternationalDestinations&quot; : &quot;=IF(%International%=true,%SelectedCountriesDetails%,null)&quot;
    },
    &quot;CommunicationPreferences&quot; : {
      &quot;EmailSelected&quot; : &quot;%Email%&quot;,
      &quot;Email&quot; : &quot;=IF(%Email%=true,%EmailDetails%,null)&quot;,
      &quot;PhoneSelected&quot; : &quot;%Phone%&quot;,
      &quot;Phone&quot; : {
        &quot;PhoneNumber&quot; : &quot;=IF(%Phone%=true,%PhoneDetails%,null)&quot;
      },
      &quot;MobileSelected&quot; : &quot;%Mobile%&quot;,
      &quot;Mobile&quot; : {
        &quot;PhoneNumber&quot; : &quot;=IF(%Mobile%=true,%MobileDetails%,null)&quot;
      },
      &quot;AlternatePhoneSelected&quot; : &quot;%AlternatePhone%&quot;,
      &quot;AlternatePhone&quot; : {
        &quot;CountryCode&quot; : &quot;%CountryCode%&quot;,
        &quot;PhoneNumber&quot; : &quot;%PhoneNumber%&quot;
      }
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>18.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>APIErrorMessage</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Error&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ConnectAPIResponse&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;We couldn’t submit this request. Contact your Salesforce admin for help.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>2.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak14</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 15,
  &quot;label&quot; : &quot;LineBreak11&quot;
}</propertySetConfig>
            <sequenceNumber>1.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak3&quot;,
  &quot;padding&quot; : 4,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak4</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak4&quot;,
  &quot;padding&quot; : 12,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak8</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak8&quot;,
  &quot;padding&quot; : 50,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>20.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreakBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak11&quot;,
  &quot;padding&quot; : 15,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectedCards</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Selected Cards&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCNotifyTravelPlansShowSelectedCards&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%SelectedCardData%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectedCountries</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;Countries&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;a style=\&quot;font-weight: 400; text-decoration: none; color: #181818;\&quot;&gt;%CountriesToStringFormula%&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;CountriesToStringFormula&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>13.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectedStates</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;StatesToStringFormula&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;States&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;a style=\&quot;font-weight: 400; text-decoration: none; color: #181818;\&quot;&gt;%StatesToStringFormula%&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Summary_AccountInfo</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;isCommunitySite&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCServiceProcessShowAccountDetails&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%accounts%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>0.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock10</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;&amp;nbsp; Departure Date&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #181818;\&quot;&gt;&amp;nbsp; %TravelDetail:DepartureDate%&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock13</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;text&quot; : &quot;&lt;h3&gt;&lt;strong&gt;Destinations&lt;/strong&gt;&lt;/h3&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock14</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;h3&gt;&lt;strong&gt;Preferred Communication Methods&lt;/strong&gt;&lt;/h3&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock17</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;&amp;nbsp; Email&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;a style=\&quot;font-weight: 400; text-decoration: none; color: #181818;\&quot;&gt;&amp;nbsp; %CommunicationPreferences:Email%&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CommunicationPreferences:EmailSelected&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock18</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CommunicationPreferences:PhoneSelected&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;&amp;nbsp; Phone&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #181818;\&quot;&gt;&amp;nbsp; %CommunicationPreferences:Phone:PhoneNumber%&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp; &amp;nbsp;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock20</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;&amp;nbsp; Mobile&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #181818;\&quot;&gt;&amp;nbsp; %CommunicationPreferences:Mobile:PhoneNumber%&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp; &amp;nbsp;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CommunicationPreferences:MobileSelected&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>18.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock22</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CommunicationPreferences:AlternatePhoneSelected&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;&amp;nbsp; Alternate Phone&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #181818;\&quot;&gt;&amp;nbsp; %CommunicationPreferences:AlternatePhone:CountryCode%-%CommunicationPreferences:AlternatePhone:PhoneNumber%&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock23</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : null,
  &quot;label&quot; : &quot;TextBlock23&quot;,
  &quot;text&quot; : &quot;&lt;hr /&gt;\n&lt;p&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>6.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock7</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;text&quot; : &quot;&lt;h3&gt;&lt;strong&gt;Cards Selected&lt;/strong&gt;&lt;/h3&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock8</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : true,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;h3&gt;&lt;strong&gt;Travel Dates&lt;/strong&gt;&lt;/h3&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock9</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock7&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;&amp;nbsp; Return Date&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #181818;\&quot;&gt;&amp;nbsp; %TravelDetail:ReturnDate%&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>Summary</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Review Summary&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Submit&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;&quot;,
  &quot;saveLabel&quot; : &quot;&quot;,
  &quot;saveMessage&quot; : &quot;Are you sure you want to save it for later?&quot;,
  &quot;completeLabel&quot; : &quot;&quot;,
  &quot;completeMessage&quot; : &quot;&quot;,
  &quot;instruction&quot; : &quot;&quot;,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;remoteClass&quot; : &quot;&quot;,
  &quot;remoteMethod&quot; : &quot;&quot;,
  &quot;remoteTimeout&quot; : 30000,
  &quot;remoteOptions&quot; : { },
  &quot;knowledgeOptions&quot; : {
    &quot;language&quot; : &quot;English&quot;,
    &quot;publishStatus&quot; : &quot;Online&quot;,
    &quot;keyword&quot; : &quot;&quot;,
    &quot;dataCategoryCriteria&quot; : &quot;&quot;,
    &quot;remoteTimeout&quot; : 30000,
    &quot;typeFilter&quot; : &quot;&quot;
  },
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoCards&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;ConnectAPIResponse&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : null
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;instructionKey&quot; : &quot;&quot;,
  &quot;chartLabel&quot; : null,
  &quot;allowSaveForLater&quot; : true,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>19.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>accountEmailValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 9,
  &quot;label&quot; : &quot;TextBlock6&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;text-align: justify;\&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;a style=\&quot;text-decoration: none; color: #000000;\&quot;&gt;%accounts:email%&lt;/a&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;EmailDetails&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;N/A&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>21.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>AccountMobileValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 9,
  &quot;label&quot; : &quot;TextBlock6&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;text-align: justify;\&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;\n&lt;div&gt;\n&lt;div&gt;%accounts:mobile%&lt;/div&gt;\n&lt;/div&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;N/A&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;MobileDetails&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>25.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>accountPhoneValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 9,
  &quot;label&quot; : &quot;TextBlock6&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;text-align: justify;\&quot;&gt;&lt;span style=\&quot;color: #ffffff;\&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;div&gt;\n&lt;div&gt;%accounts:phone%&lt;/div&gt;\n&lt;/div&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;N/A&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;PhoneDetails&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>23.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>AlternatePhone</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 11,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Alternate Phone&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>26.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>communicationBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;text-align: justify;\&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;\n&lt;h3&gt;&lt;span style=\&quot;background-color: #ffffff; color: #000000;\&quot;&gt;&lt;strong&gt;Preferred Communication Methods&lt;/strong&gt;&amp;nbsp;&lt;strong&gt;&lt;span style=\&quot;color: #e03e2d;\&quot;&gt;*&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;\n&lt;p&gt;&lt;em&gt;(Select at least one option)&lt;/em&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CountriesToStringFormula</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;hideGroupSep&quot; : false,
  &quot;dataType&quot; : null,
  &quot;mask&quot; : null,
  &quot;show&quot; : null,
  &quot;hide&quot; : true,
  &quot;expression&quot; : &quot;STRING(%SelectedCountriesDetails%)&quot;,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;Countries To String Formula&quot;,
  &quot;controlWidth&quot; : null
}</propertySetConfig>
            <sequenceNumber>31.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CountryCode</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;Country Code&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 3,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;max-count&quot; : &quot;3&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;+93&quot;,
    &quot;value&quot; : &quot;+93&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+358&quot;,
    &quot;value&quot; : &quot;+358&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+355&quot;,
    &quot;value&quot; : &quot;+355&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+213&quot;,
    &quot;value&quot; : &quot;+213&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1684&quot;,
    &quot;value&quot; : &quot;+1684&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+376&quot;,
    &quot;value&quot; : &quot;+376&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+244&quot;,
    &quot;value&quot; : &quot;+244&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1264&quot;,
    &quot;value&quot; : &quot;+1264&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+672&quot;,
    &quot;value&quot; : &quot;+672&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1268&quot;,
    &quot;value&quot; : &quot;+1268&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+54&quot;,
    &quot;value&quot; : &quot;+54&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+374&quot;,
    &quot;value&quot; : &quot;+374&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+297&quot;,
    &quot;value&quot; : &quot;+297&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+61&quot;,
    &quot;value&quot; : &quot;+61&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+43&quot;,
    &quot;value&quot; : &quot;+43&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+994&quot;,
    &quot;value&quot; : &quot;+994&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1242&quot;,
    &quot;value&quot; : &quot;+1242&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+973&quot;,
    &quot;value&quot; : &quot;+973&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+880&quot;,
    &quot;value&quot; : &quot;+880&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1246&quot;,
    &quot;value&quot; : &quot;+1246&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+375&quot;,
    &quot;value&quot; : &quot;+375&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+32&quot;,
    &quot;value&quot; : &quot;+32&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+501&quot;,
    &quot;value&quot; : &quot;+501&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+229&quot;,
    &quot;value&quot; : &quot;+229&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1441&quot;,
    &quot;value&quot; : &quot;+1441&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+975&quot;,
    &quot;value&quot; : &quot;+975&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+591&quot;,
    &quot;value&quot; : &quot;+591&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+387&quot;,
    &quot;value&quot; : &quot;+387&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+267&quot;,
    &quot;value&quot; : &quot;+267&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+55&quot;,
    &quot;value&quot; : &quot;+55&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+246&quot;,
    &quot;value&quot; : &quot;+246&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+673&quot;,
    &quot;value&quot; : &quot;+673&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+359&quot;,
    &quot;value&quot; : &quot;+359&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+226&quot;,
    &quot;value&quot; : &quot;+226&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+257&quot;,
    &quot;value&quot; : &quot;+257&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+855&quot;,
    &quot;value&quot; : &quot;+855&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+237&quot;,
    &quot;value&quot; : &quot;+237&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1&quot;,
    &quot;value&quot; : &quot;+1&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+238&quot;,
    &quot;value&quot; : &quot;+238&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+345&quot;,
    &quot;value&quot; : &quot;+ 345&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+236&quot;,
    &quot;value&quot; : &quot;+236&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+235&quot;,
    &quot;value&quot; : &quot;+235&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+56&quot;,
    &quot;value&quot; : &quot;+56&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+86&quot;,
    &quot;value&quot; : &quot;+86&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+61&quot;,
    &quot;value&quot; : &quot;+61&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+57&quot;,
    &quot;value&quot; : &quot;+57&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+269&quot;,
    &quot;value&quot; : &quot;+269&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+242&quot;,
    &quot;value&quot; : &quot;+242&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+243&quot;,
    &quot;value&quot; : &quot;+243&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+682&quot;,
    &quot;value&quot; : &quot;+682&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+506&quot;,
    &quot;value&quot; : &quot;+506&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+225&quot;,
    &quot;value&quot; : &quot;+225&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+385&quot;,
    &quot;value&quot; : &quot;+385&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+53&quot;,
    &quot;value&quot; : &quot;+53&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+357&quot;,
    &quot;value&quot; : &quot;+357&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+420&quot;,
    &quot;value&quot; : &quot;+420&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+45&quot;,
    &quot;value&quot; : &quot;+45&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+253&quot;,
    &quot;value&quot; : &quot;+253&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1767&quot;,
    &quot;value&quot; : &quot;+1767&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1849&quot;,
    &quot;value&quot; : &quot;+1849&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+593&quot;,
    &quot;value&quot; : &quot;+593&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+20&quot;,
    &quot;value&quot; : &quot;+20&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+503&quot;,
    &quot;value&quot; : &quot;+503&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+240&quot;,
    &quot;value&quot; : &quot;+240&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+291&quot;,
    &quot;value&quot; : &quot;+291&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+372&quot;,
    &quot;value&quot; : &quot;+372&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+251&quot;,
    &quot;value&quot; : &quot;+251&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+500&quot;,
    &quot;value&quot; : &quot;+500&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+298&quot;,
    &quot;value&quot; : &quot;+298&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+679&quot;,
    &quot;value&quot; : &quot;+679&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+358&quot;,
    &quot;value&quot; : &quot;+358&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+33&quot;,
    &quot;value&quot; : &quot;+33&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+594&quot;,
    &quot;value&quot; : &quot;+594&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+689&quot;,
    &quot;value&quot; : &quot;+689&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+241&quot;,
    &quot;value&quot; : &quot;+241&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+220&quot;,
    &quot;value&quot; : &quot;+220&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+995&quot;,
    &quot;value&quot; : &quot;+995&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+49&quot;,
    &quot;value&quot; : &quot;+49&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+233&quot;,
    &quot;value&quot; : &quot;+233&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+350&quot;,
    &quot;value&quot; : &quot;+350&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+30&quot;,
    &quot;value&quot; : &quot;+30&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+299&quot;,
    &quot;value&quot; : &quot;+299&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1473&quot;,
    &quot;value&quot; : &quot;+1473&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+590&quot;,
    &quot;value&quot; : &quot;+590&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1671&quot;,
    &quot;value&quot; : &quot;+1671&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+502&quot;,
    &quot;value&quot; : &quot;+502&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+224&quot;,
    &quot;value&quot; : &quot;+224&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+245&quot;,
    &quot;value&quot; : &quot;+245&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+595&quot;,
    &quot;value&quot; : &quot;+595&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+509&quot;,
    &quot;value&quot; : &quot;+509&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+379&quot;,
    &quot;value&quot; : &quot;+379&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+504&quot;,
    &quot;value&quot; : &quot;+504&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+852&quot;,
    &quot;value&quot; : &quot;+852&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+36&quot;,
    &quot;value&quot; : &quot;+36&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+354&quot;,
    &quot;value&quot; : &quot;+354&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+91&quot;,
    &quot;value&quot; : &quot;+91&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+62&quot;,
    &quot;value&quot; : &quot;+62&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+98&quot;,
    &quot;value&quot; : &quot;+98&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+964&quot;,
    &quot;value&quot; : &quot;+964&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+353&quot;,
    &quot;value&quot; : &quot;+353&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+44&quot;,
    &quot;value&quot; : &quot;+44&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+972&quot;,
    &quot;value&quot; : &quot;+972&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+39&quot;,
    &quot;value&quot; : &quot;+39&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1876&quot;,
    &quot;value&quot; : &quot;+1876&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+81&quot;,
    &quot;value&quot; : &quot;+81&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+962&quot;,
    &quot;value&quot; : &quot;+962&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+77&quot;,
    &quot;value&quot; : &quot;+77&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+254&quot;,
    &quot;value&quot; : &quot;+254&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+686&quot;,
    &quot;value&quot; : &quot;+686&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+850&quot;,
    &quot;value&quot; : &quot;+850&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+82&quot;,
    &quot;value&quot; : &quot;+82&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+965&quot;,
    &quot;value&quot; : &quot;+965&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+996&quot;,
    &quot;value&quot; : &quot;+996&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+856&quot;,
    &quot;value&quot; : &quot;+856&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+371&quot;,
    &quot;value&quot; : &quot;+371&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+961&quot;,
    &quot;value&quot; : &quot;+961&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+266&quot;,
    &quot;value&quot; : &quot;+266&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+231&quot;,
    &quot;value&quot; : &quot;+231&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+218&quot;,
    &quot;value&quot; : &quot;+218&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+423&quot;,
    &quot;value&quot; : &quot;+423&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+370&quot;,
    &quot;value&quot; : &quot;+370&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+352&quot;,
    &quot;value&quot; : &quot;+352&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+853&quot;,
    &quot;value&quot; : &quot;+853&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+389&quot;,
    &quot;value&quot; : &quot;+389&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+261&quot;,
    &quot;value&quot; : &quot;+261&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+265&quot;,
    &quot;value&quot; : &quot;+265&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+60&quot;,
    &quot;value&quot; : &quot;+60&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+960&quot;,
    &quot;value&quot; : &quot;+960&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+223&quot;,
    &quot;value&quot; : &quot;+223&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+356&quot;,
    &quot;value&quot; : &quot;+356&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+692&quot;,
    &quot;value&quot; : &quot;+692&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+596&quot;,
    &quot;value&quot; : &quot;+596&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+222&quot;,
    &quot;value&quot; : &quot;+222&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+230&quot;,
    &quot;value&quot; : &quot;+230&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+262&quot;,
    &quot;value&quot; : &quot;+262&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+52&quot;,
    &quot;value&quot; : &quot;+52&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+691&quot;,
    &quot;value&quot; : &quot;+691&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+373&quot;,
    &quot;value&quot; : &quot;+373&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+377&quot;,
    &quot;value&quot; : &quot;+377&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+976&quot;,
    &quot;value&quot; : &quot;+976&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+382&quot;,
    &quot;value&quot; : &quot;+382&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1664&quot;,
    &quot;value&quot; : &quot;+1664&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+212&quot;,
    &quot;value&quot; : &quot;+212&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+258&quot;,
    &quot;value&quot; : &quot;+258&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+95&quot;,
    &quot;value&quot; : &quot;+95&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+264&quot;,
    &quot;value&quot; : &quot;+264&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+674&quot;,
    &quot;value&quot; : &quot;+674&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+977&quot;,
    &quot;value&quot; : &quot;+977&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+31&quot;,
    &quot;value&quot; : &quot;+31&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+599&quot;,
    &quot;value&quot; : &quot;+599&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+687&quot;,
    &quot;value&quot; : &quot;+687&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+64&quot;,
    &quot;value&quot; : &quot;+64&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+505&quot;,
    &quot;value&quot; : &quot;+505&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+227&quot;,
    &quot;value&quot; : &quot;+227&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+234&quot;,
    &quot;value&quot; : &quot;+234&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+683&quot;,
    &quot;value&quot; : &quot;+683&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+672&quot;,
    &quot;value&quot; : &quot;+672&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1670&quot;,
    &quot;value&quot; : &quot;+1670&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+47&quot;,
    &quot;value&quot; : &quot;+47&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+968&quot;,
    &quot;value&quot; : &quot;+968&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+92&quot;,
    &quot;value&quot; : &quot;+92&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+680&quot;,
    &quot;value&quot; : &quot;+680&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+970&quot;,
    &quot;value&quot; : &quot;+970&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+507&quot;,
    &quot;value&quot; : &quot;+507&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+675&quot;,
    &quot;value&quot; : &quot;+675&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+595&quot;,
    &quot;value&quot; : &quot;+595&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+51&quot;,
    &quot;value&quot; : &quot;+51&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+63&quot;,
    &quot;value&quot; : &quot;+63&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+872&quot;,
    &quot;value&quot; : &quot;+872&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+48&quot;,
    &quot;value&quot; : &quot;+48&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+351&quot;,
    &quot;value&quot; : &quot;+351&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1939&quot;,
    &quot;value&quot; : &quot;+1939&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+974&quot;,
    &quot;value&quot; : &quot;+974&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+40&quot;,
    &quot;value&quot; : &quot;+40&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+7&quot;,
    &quot;value&quot; : &quot;+7&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+250&quot;,
    &quot;value&quot; : &quot;+250&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+262&quot;,
    &quot;value&quot; : &quot;+262&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+590&quot;,
    &quot;value&quot; : &quot;+590&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+290&quot;,
    &quot;value&quot; : &quot;+290&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1869&quot;,
    &quot;value&quot; : &quot;+1869&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1758&quot;,
    &quot;value&quot; : &quot;+1758&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+590&quot;,
    &quot;value&quot; : &quot;+590&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+508&quot;,
    &quot;value&quot; : &quot;+508&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1784&quot;,
    &quot;value&quot; : &quot;+1784&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+685&quot;,
    &quot;value&quot; : &quot;+685&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+378&quot;,
    &quot;value&quot; : &quot;+378&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+239&quot;,
    &quot;value&quot; : &quot;+239&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+966&quot;,
    &quot;value&quot; : &quot;+966&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+221&quot;,
    &quot;value&quot; : &quot;+221&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+381&quot;,
    &quot;value&quot; : &quot;+381&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+248&quot;,
    &quot;value&quot; : &quot;+248&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+232&quot;,
    &quot;value&quot; : &quot;+232&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+65&quot;,
    &quot;value&quot; : &quot;+65&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+421&quot;,
    &quot;value&quot; : &quot;+421&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+386&quot;,
    &quot;value&quot; : &quot;+386&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+677&quot;,
    &quot;value&quot; : &quot;+677&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+252&quot;,
    &quot;value&quot; : &quot;+252&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+27&quot;,
    &quot;value&quot; : &quot;+27&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+211&quot;,
    &quot;value&quot; : &quot;+211&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+500&quot;,
    &quot;value&quot; : &quot;+500&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+34&quot;,
    &quot;value&quot; : &quot;+34&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+94&quot;,
    &quot;value&quot; : &quot;+94&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+249&quot;,
    &quot;value&quot; : &quot;+249&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+597&quot;,
    &quot;value&quot; : &quot;+597&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+47&quot;,
    &quot;value&quot; : &quot;+47&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+268&quot;,
    &quot;value&quot; : &quot;+268&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+46&quot;,
    &quot;value&quot; : &quot;+46&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+41&quot;,
    &quot;value&quot; : &quot;+41&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+963&quot;,
    &quot;value&quot; : &quot;+963&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+886&quot;,
    &quot;value&quot; : &quot;+886&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+992&quot;,
    &quot;value&quot; : &quot;+992&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+255&quot;,
    &quot;value&quot; : &quot;+255&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+66&quot;,
    &quot;value&quot; : &quot;+66&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+670&quot;,
    &quot;value&quot; : &quot;+670&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+228&quot;,
    &quot;value&quot; : &quot;+228&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+690&quot;,
    &quot;value&quot; : &quot;+690&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+676&quot;,
    &quot;value&quot; : &quot;+676&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1868&quot;,
    &quot;value&quot; : &quot;+1868&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+216&quot;,
    &quot;value&quot; : &quot;+216&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+90&quot;,
    &quot;value&quot; : &quot;+90&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+993&quot;,
    &quot;value&quot; : &quot;+993&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1649&quot;,
    &quot;value&quot; : &quot;+1649&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+688&quot;,
    &quot;value&quot; : &quot;+688&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+256&quot;,
    &quot;value&quot; : &quot;+256&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+380&quot;,
    &quot;value&quot; : &quot;+380&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+971&quot;,
    &quot;value&quot; : &quot;+971&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+598&quot;,
    &quot;value&quot; : &quot;+598&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+998&quot;,
    &quot;value&quot; : &quot;+998&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+678&quot;,
    &quot;value&quot; : &quot;+678&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+58&quot;,
    &quot;value&quot; : &quot;+58&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+84&quot;,
    &quot;value&quot; : &quot;+84&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1284&quot;,
    &quot;value&quot; : &quot;+1284&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+1340&quot;,
    &quot;value&quot; : &quot;+1340&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+681&quot;,
    &quot;value&quot; : &quot;+681&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+967&quot;,
    &quot;value&quot; : &quot;+967&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+260&quot;,
    &quot;value&quot; : &quot;+260&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;+263&quot;,
    &quot;value&quot; : &quot;+263&quot;,
    &quot;autoAdv&quot; : null
  } ],
  &quot;optionSource&quot; : {
    &quot;type&quot; : &quot;&quot;,
    &quot;source&quot; : &quot;&quot;
  },
  &quot;controllingField&quot; : {
    &quot;element&quot; : &quot;&quot;,
    &quot;type&quot; : &quot;&quot;,
    &quot;source&quot; : &quot;&quot;
  },
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AlternatePhone&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>27.0</sequenceNumber>
            <type>Select</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>DateofDeparture</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Departure&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;dateType&quot; : &quot;string&quot;,
  &quot;modelDateFormat&quot; : &quot;MM/DD/YYYY&quot;,
  &quot;dateFormat&quot; : &quot;MM/DD/YYYY&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;minDate&quot; : &quot;TODAY&quot;,
  &quot;maxDate&quot; : &quot;&quot;,
  &quot;placeholder&quot; : &quot;Select…&quot;
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Date</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>DateofReturn</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Return&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;dateType&quot; : &quot;string&quot;,
  &quot;modelDateFormat&quot; : &quot;MM/DD/YYYY&quot;,
  &quot;dateFormat&quot; : &quot;MM/DD/YYYY&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;minDate&quot; : &quot;TODAY&quot;,
  &quot;maxDate&quot; : &quot;&quot;,
  &quot;placeholder&quot; : &quot;Select…&quot;
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
            <type>Date</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Domestic</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;checkLabel&quot; : &quot;Domestic&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Duration</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Duration (days)&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot; DATEDIFF( %DateofDeparture%,%DateofReturn%)&quot;,
  &quot;hide&quot; : false,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : &quot;Number&quot;,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM/dd/yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>6.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Email</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Email:&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;EmailDetails&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;N/A&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>20.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>IntegrationProcedureAction1</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;Alternate Phone&quot;,
  &quot;integrationProcedureKey&quot; : &quot;&quot;,
  &quot;useContinuation&quot; : false,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;,
    &quot;useFuture&quot; : false,
    &quot;chainable&quot; : false
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;extraPayload&quot; : { },
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;failureAbortLabel&quot; : &quot;Abort&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortMessage&quot; : &quot;Are you sure?&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectNextLabel&quot; : &quot;Next&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;Previous&quot;,
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;enableDefaultAbort&quot; : false,
  &quot;enableActionMessage&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>29.0</sequenceNumber>
            <type>Integration Procedure Action</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>International</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;International&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak10</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak10&quot;,
  &quot;padding&quot; : 20,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AlternatePhone&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>33.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak12</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 10,
  &quot;label&quot; : &quot;LineBreak2&quot;
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak13</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak2&quot;,
  &quot;padding&quot; : 12,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak2</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak2&quot;,
  &quot;padding&quot; : 15,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>1.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak9</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak9&quot;,
  &quot;padding&quot; : 50,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>32.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Mobile</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Mobile:&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;N/A&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;MobileDetails&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>24.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Phone</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Phone:&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;N/A&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;PhoneDetails&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>22.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>PhoneNumber</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;Phone Number&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : 1,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;9999[99999999999]&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;minLength&quot; : 4,
  &quot;maxLength&quot; : 15,
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AlternatePhone&quot;
      }, {
        &quot;field&quot; : &quot;CountryCode&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;null&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
            <sequenceNumber>28.0</sequenceNumber>
            <type>Telephone</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectAtLeastOneCountry</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;hideLabel&quot; : true,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select at least one Country.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : true
  } ],
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;NotOk&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckCountrySelection&quot;
      }, {
        &quot;field&quot; : &quot;International&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;label&quot; : &quot;SelectAtLeastOneCountry&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectAtLeastOneState</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;NotOk&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckStateSelection&quot;
      }, {
        &quot;field&quot; : &quot;Domestic&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select at least one State.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : false,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectCountries</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;list-type&quot;,
    &quot;source&quot; : &quot;Countries&quot;
  }, {
    &quot;name&quot; : &quot;list-data&quot;,
    &quot;source&quot; : &quot;%countryPicklistValues%&quot;
  }, {
    &quot;name&quot; : &quot;retain-selections&quot;,
    &quot;source&quot; : &quot;%SelectedCountriesDetails%&quot;
  }, {
    &quot;name&quot; : &quot;json-node-name&quot;,
    &quot;source&quot; : &quot;SelectedCountriesDetails&quot;
  } ],
  &quot;bStandalone&quot; : true,
  &quot;lwcName&quot; : &quot;multiSelectCombobox&quot;,
  &quot;hide&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;International&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;label&quot; : &quot;Countries&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectStates</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Travel Destinations&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Domestic&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;multiSelectCombobox&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;list-type&quot;,
    &quot;source&quot; : &quot;States&quot;
  }, {
    &quot;name&quot; : &quot;list-data&quot;,
    &quot;source&quot; : &quot;%StatePicklistValues%&quot;
  }, {
    &quot;name&quot; : &quot;retain-selections&quot;,
    &quot;source&quot; : &quot;%SelectedStatesDetails%&quot;
  }, {
    &quot;name&quot; : &quot;json-node-name&quot;,
    &quot;source&quot; : &quot;SelectedStatesDetails&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>13.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>StatesToStringFormula</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : null,
  &quot;label&quot; : &quot;States To String Formula&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;STRING(%SelectedStatesDetails%)&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>30.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock27</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;text-align: justify;\&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;\n&lt;h3&gt;&lt;strong&gt;Travel Destinations &lt;span style=\&quot;background-color: #e03e2d; color: #e03e2d;\&quot;&gt;&lt;span style=\&quot;background-color: #ffffff;\&quot;&gt;*&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #000000;\&quot;&gt;&lt;span style=\&quot;background-color: #e03e2d;\&quot;&gt;&lt;span style=\&quot;background-color: #ffffff;\&quot;&gt;&lt;em&gt;(Select at least one option)&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock5</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;h3&gt;&lt;strong&gt;Travel Dates&lt;/strong&gt;&lt;/h3&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>2.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TravelDetails_AccountInfo</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;customAttributes&quot; : [ {
    &quot;source&quot; : &quot;true&quot;,
    &quot;name&quot; : &quot;parent-data&quot;
  }, {
    &quot;source&quot; : &quot;%accounts%&quot;,
    &quot;name&quot; : &quot;records&quot;
  } ],
  &quot;bStandalone&quot; : true,
  &quot;lwcName&quot; : &quot;cfFSCServiceProcessShowAccountDetails&quot;,
  &quot;hide&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;isCommunitySite&quot;
      } ]
    }
  },
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>0.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidateCommunicationSelection</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckCommunicationSelection&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select at least one preferred communication method.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>18.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidateDateOfReturn</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Validate Date of Return&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ValidateTravelDates&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : null,
    &quot;active&quot; : false
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;Select a return date that&apos;s on or after the departure date.&quot;,
    &quot;active&quot; : true
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidateTravelDates</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : null,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF(DATE(%DateofReturn%) &lt; DATE(%DateofDeparture%) &amp;&amp; %DateofDeparture% &lt;&gt;null, false, true)&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidateTravelSelection</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckTravelSelection&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select at least one travel destination. &quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : true
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>TravelDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Add Travel Details&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Next&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;&quot;,
  &quot;saveLabel&quot; : &quot;Save for later&quot;,
  &quot;saveMessage&quot; : &quot;Are you sure you want to save it for later?&quot;,
  &quot;completeLabel&quot; : &quot;&quot;,
  &quot;completeMessage&quot; : &quot;&quot;,
  &quot;instruction&quot; : &quot;&quot;,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;remoteClass&quot; : &quot;&quot;,
  &quot;remoteMethod&quot; : &quot;&quot;,
  &quot;remoteTimeout&quot; : 30000,
  &quot;remoteOptions&quot; : { },
  &quot;knowledgeOptions&quot; : {
    &quot;language&quot; : &quot;English&quot;,
    &quot;publishStatus&quot; : &quot;Online&quot;,
    &quot;keyword&quot; : &quot;&quot;,
    &quot;dataCategoryCriteria&quot; : &quot;&quot;,
    &quot;remoteTimeout&quot; : 30000,
    &quot;typeFilter&quot; : &quot;&quot;
  },
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoCards&quot;
      }, {
        &quot;field&quot; : &quot;ConnectAPIResponse&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : null
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;instructionKey&quot; : &quot;&quot;,
  &quot;chartLabel&quot; : null,
  &quot;allowSaveForLater&quot; : false,
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>11.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessType>OmniScript</omniProcessType>
    <propertySetConfig>{&quot;persistentComponent&quot;:[{&quot;render&quot;:false,&quot;label&quot;:null,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;sendJSONPath&quot;:&quot;&quot;,&quot;sendJSONNode&quot;:&quot;&quot;,&quot;responseJSONPath&quot;:&quot;&quot;,&quot;responseJSONNode&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcCart&quot;,&quot;itemsKey&quot;:&quot;cartItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;vlcProductConfig.html&quot;,&quot;modalController&quot;:&quot;ModalProductCtrl&quot;,&quot;modalSize&quot;:&quot;lg&quot;}},{&quot;render&quot;:false,&quot;dispOutsideOmni&quot;:false,&quot;label&quot;:null,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcKnowledge&quot;,&quot;itemsKey&quot;:&quot;knowledgeItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;&quot;,&quot;modalController&quot;:&quot;&quot;,&quot;modalSize&quot;:&quot;lg&quot;}}],&quot;allowSaveForLater&quot;:false,&quot;saveNameTemplate&quot;:null,&quot;saveExpireInDays&quot;:null,&quot;saveForLaterRedirectPageName&quot;:&quot;sflRedirect&quot;,&quot;saveForLaterRedirectTemplateUrl&quot;:&quot;vlcSaveForLaterAcknowledge.html&quot;,&quot;saveContentEncoded&quot;:false,&quot;saveObjectId&quot;:&quot;%ContextId%&quot;,&quot;saveURLPatterns&quot;:{},&quot;autoSaveOnStepNext&quot;:false,&quot;elementTypeToHTMLTemplateMapping&quot;:{},&quot;seedDataJSON&quot;:{&quot;&quot;:null},&quot;trackingCustomData&quot;:{},&quot;enableKnowledge&quot;:false,&quot;bLK&quot;:false,&quot;lkObjName&quot;:null,&quot;knowledgeArticleTypeQueryFieldsMap&quot;:{},&quot;timeTracking&quot;:false,&quot;hideStepChart&quot;:false,&quot;mergeSavedData&quot;:false,&quot;visualforcePagesAvailableInPreview&quot;:{},&quot;cancelType&quot;:&quot;SObject&quot;,&quot;allowCancel&quot;:true,&quot;cancelSource&quot;:&quot;%ContextId%&quot;,&quot;cancelRedirectPageName&quot;:&quot;OmniScriptCancelled&quot;,&quot;cancelRedirectTemplateUrl&quot;:&quot;vlcCancelled.html&quot;,&quot;consoleTabLabel&quot;:&quot;New&quot;,&quot;wpm&quot;:false,&quot;ssm&quot;:false,&quot;message&quot;:{},&quot;pubsub&quot;:false,&quot;autoFocus&quot;:false,&quot;currencyCode&quot;:&quot;&quot;,&quot;showInputWidth&quot;:false,&quot;rtpSeed&quot;:true,&quot;consoleTabTitle&quot;:&quot;Notify Travel Plans&quot;,&quot;consoleTabIcon&quot;:&quot;custom:custom18&quot;,&quot;errorMessage&quot;:{&quot;custom&quot;:[],&quot;default&quot;:&quot;&quot;},&quot;stylesheet&quot;:{&quot;newport&quot;:&quot;&quot;,&quot;lightning&quot;:&quot;NotifyTravelPlansCSS&quot;,&quot;newportRtl&quot;:&quot;&quot;,&quot;lightningRtl&quot;:&quot;&quot;},&quot;stepChartPlacement&quot;:&quot;right&quot;,&quot;disableUnloadWarn&quot;:true,&quot;scrollBehavior&quot;:&quot;auto&quot;,&quot;currentLanguage&quot;:&quot;en_US&quot;}</propertySetConfig>
    <subType>NotifyTravelPlans</subType>
    <type>FSC</type>
    <uniqueName>FSC_NotifyTravelPlans_English_1</uniqueName>
    <versionNumber>1.0</versionNumber>
    <webComponentKey>f60c301e-0bdb-e9b4-500e-5f72b78e7860</webComponentKey>
</OmniScript>
