<?xml version="1.0" encoding="UTF-8"?>
<OmniScript xmlns="http://soap.sforce.com/2006/04/metadata">
    <elementTypeComponentMapping>{&quot;ElementTypeToHTMLTemplateList&quot;:[]}</elementTypeComponentMapping>
    <isActive>true</isActive>
    <isIntegrationProcedure>false</isIntegrationProcedure>
    <isMetadataCacheDisabled>false</isMetadataCacheDisabled>
    <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
    <isTestProcedure>false</isTestProcedure>
    <isWebCompEnabled>true</isWebCompEnabled>
    <language>English</language>
    <name>FSCUpdateEmailOrPhoneEnglish</name>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>CreateCase</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;remoteClass&quot; : &quot;UpdateEmailorPhoneHelperFunctions&quot;,
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
    &quot;caseSubject&quot; : &quot;%accounts:name% - Update Email or Phone Service Request&quot;,
    &quot;isCommunitySite&quot; : &quot;%isCommunitySite%&quot;,
    &quot;currentEmail&quot; : &quot;%CurrentEmail%&quot;,
    &quot;newEmail&quot; : &quot;%NewEmail%&quot;,
    &quot;currentPhoneNumber&quot; : &quot;%CurrentPhoneNumber%&quot;,
    &quot;newPhoneNumber&quot; : &quot;%NewPhoneNumber%&quot;,
    &quot;currentMobileNumber&quot; : &quot;%CurrentMobileNumber%&quot;,
    &quot;newMobileNumber&quot; : &quot;%NewMobileNumber%&quot;,
    &quot;svcCatalogItemDefApiName&quot; : &quot;UpdateEmailorPhone&quot;
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
  &quot;useContinuation&quot; : false,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;businessEvent&quot; : &quot;&quot;,
  &quot;sendOnlyExtraPayload&quot; : true
}</propertySetConfig>
        <sequenceNumber>13.0</sequenceNumber>
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
  &quot;show&quot; : null
}</propertySetConfig>
        <sequenceNumber>17.0</sequenceNumber>
        <type>OmniScript</type>
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
    &quot;active&quot; : true
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>1.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak1</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak1&quot;,
  &quot;padding&quot; : 0,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>2.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak6</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak6&quot;,
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
            <name>PhoneNumbersBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Phone&quot;
      }, {
        &quot;field&quot; : &quot;Mobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;h3&gt;&lt;strong&gt;Phone Numbers&lt;/strong&gt;&lt;/h3&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock1&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_AccountInfo</name>
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
            <name>TextBlock1</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock1&quot;,
  &quot;text&quot; : &quot;&lt;h3&gt;&lt;strong&gt;Email&lt;/strong&gt;&lt;/h3&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Email&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock11</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock11&quot;,
  &quot;text&quot; : &quot;&lt;hr style=\&quot;border-top: 1px solid lightgrey;\&quot; /&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Email&quot;
      } ]
    }
  },
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
            <name>TextBlock16</name>
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
        &quot;field&quot; : &quot;Mobile&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;Current Mobile&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #181818;\&quot;&gt;%ContactDetails:ContactMobileValue%&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock18</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;background-color: #ffffff; color: #444444;\&quot;&gt;New Mobile&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #181818;\&quot;&gt;%MobileCountryCode%-%NewMobileValue%&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Mobile&quot;
      } ]
    }
  },
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
            <name>TextBlock3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;Current Email&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #181818;\&quot;&gt;&lt;a style=\&quot;text-decoration: none; color: #181818;\&quot;&gt;%ContactDetails:ContactEmailValue%&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400;\&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Email&quot;
      } ]
    }
  },
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
            <name>TextBlock5</name>
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
        &quot;field&quot; : &quot;Email&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;New Email&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #181818;\&quot;&gt;&lt;a style=\&quot;text-decoration: none; color: #181818;\&quot;&gt;%NewEmailInput%&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock7</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;Current Phone&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #181818;\&quot;&gt;%ContactDetails:ContactPhoneValue%&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Phone&quot;
      } ]
    }
  },
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
            <name>TextBlock9</name>
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
        &quot;field&quot; : &quot;Phone&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;New Phone&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #181818;\&quot;&gt;%PhoneCountryCode%-%NewPhoneValue%&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>ReviewSummary</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Review Summary&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Submit&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;Are you sure?&quot;,
  &quot;saveLabel&quot; : &quot;&quot;,
  &quot;saveMessage&quot; : &quot;Are you sure you want to save it for later?&quot;,
  &quot;completeLabel&quot; : &quot;Complete&quot;,
  &quot;completeMessage&quot; : &quot;Are you sure you want to complete the script?&quot;,
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
        <sequenceNumber>11.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>contactEmailValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 10,
  &quot;label&quot; : &quot;TextBlock10&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;&lt;a style=\&quot;text-decoration: none; color: #444444;\&quot;&gt;%ContactDetails:ContactEmailValue%&lt;/a&gt;&lt;/strong&gt;&lt;/p&gt;&quot;,
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
            <name>contactMobileValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 10,
  &quot;label&quot; : &quot;TextBlock17&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%ContactDetails:ContactMobileValue%&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&quot;,
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
            <name>contactPhoneValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%ContactDetails:ContactPhoneValue%&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock10&quot;,
  &quot;controlWidth&quot; : 10
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ContactsSelected</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF(%Email%=true || %Phone%=true || %Mobile%=true, true, false)&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
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
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak2</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak2&quot;,
  &quot;padding&quot; : 20,
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
            <name>LineBreak3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak3&quot;,
  &quot;padding&quot; : 50,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>13.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak7</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 10,
  &quot;label&quot; : &quot;LineBreak2&quot;
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
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
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Phone</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;checkLabel&quot; : &quot;Phone:&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;controlWidth&quot; : 2
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectEmailOrPhone_AccountInfo</name>
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
            <name>TextBlock13</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;h4&gt;&lt;strong&gt;Phone&lt;/strong&gt;&lt;/h4&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock8&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock8</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock8&quot;,
  &quot;text&quot; : &quot;&lt;h4&gt;&lt;strong&gt;Email&lt;/strong&gt;&lt;/h4&gt;&quot;,
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
            <name>ValidateContactSelection</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Validate contact selection&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;IsContactSelected&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select either an email or a phone to update.&quot;,
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
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SelectEmailorPhone</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Select Email or Phone&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Next&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;Are you sure?&quot;,
  &quot;saveLabel&quot; : &quot;&quot;,
  &quot;saveMessage&quot; : &quot;Are you sure you want to save it for later?&quot;,
  &quot;completeLabel&quot; : &quot;Complete&quot;,
  &quot;completeMessage&quot; : &quot;Are you sure you want to complete the script?&quot;,
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
        <sequenceNumber>4.0</sequenceNumber>
        <type>Step</type>
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
    &quot;ConfirmationMessage&quot; : &quot;The contact details update request was submitted.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Success&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ConnectAPIResponse&quot;
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
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetContactDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;ContactDetails&quot; : {
      &quot;ContactEmailValue&quot; : &quot;=IF(%accounts:email%==null,&apos;N/A&apos;,%accounts:email%)&quot;,
      &quot;ContactPhoneValue&quot; : &quot;=IF(%accounts:phone%==null,&apos;N/A&apos;,%accounts:phone%)&quot;,
      &quot;ContactMobileValue&quot; : &quot;=IF(%accounts:mobile%==null,&apos;N/A&apos;,%accounts:mobile%)&quot;,
      &quot;FormattedPhone&quot; : &quot;=IF(%accounts:phone%==null,&apos;NA&apos;,CONCATENATE(&apos;(&apos;,SUBSTRING(%accounts:phone%,0,3),&apos;) &apos;,SUBSTRING(%accounts:phone%,3,6),&apos;-&apos;,SUBSTRING(%accounts:phone%,6,11)))&quot;,
      &quot;FormattedMobile&quot; : &quot;=IF(%accounts:mobile%==null,&apos;NA&apos;,CONCATENATE(&apos;(&apos;,SUBSTRING(%accounts:mobile%,0,3),&apos;) &apos;,SUBSTRING(%accounts:mobile%,3,6),&apos;-&apos;,SUBSTRING(%accounts:mobile%,6,11)))&quot;
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>3.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetContactSelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;ValidateContactSelection&quot; : &quot;Select either an email or a phone to update.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;IsContactSelected&quot;
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
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>14.0</sequenceNumber>
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
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;APIErrorMessage&quot; : &quot;We couldn’t submit this request. Contact your Salesforce admin for help.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Error&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ConnectAPIResponse&quot;
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
        <name>SetErrorforSameEmail</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;NewEmailInput&quot; : &quot;Current &amp; New Email cannot be same&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ValidateEmail&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>8.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetErrorforSameMobile</name>
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
        &quot;field&quot; : &quot;ValidateMobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;NewMobileValue&quot; : &quot;Current &amp; New Mobile cannot be same&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>10.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetErrorforSamePhone</name>
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
        &quot;field&quot; : &quot;ValidatePhone&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;NewPhoneValue&quot; : &quot;Current &amp; New Phone cannot be same&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>9.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetNewContactDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;NewEmail&quot; : &quot;=IF(%Email%=true,%NewEmailInput%,null)&quot;,
    &quot;NewPhoneNumber&quot; : &quot;=IF(%Phone%=true,CONCATENATE(%PhoneCountryCode%,%NewPhoneValue%),null)\n&quot;,
    &quot;CurrentPhoneNumber&quot; : &quot;=IF(%Phone%=true,%ContactDetails:ContactPhoneValue%,null) &quot;,
    &quot;CurrentMobileNumber&quot; : &quot;=IF(%Mobile%=true,%ContactDetails:ContactMobileValue%,null)&quot;,
    &quot;NewMobileNumber&quot; : &quot;=IF(%Mobile%=true,CONCATENATE(%MobileCountryCode%,%NewMobileValue%),null)\n&quot;,
    &quot;AccountSourceSystemId&quot; : &quot;=IF(%accounts:sourceSystemId%&lt;&gt;null,%accounts:sourceSystemId%,null)&quot;,
    &quot;CurrentEmail&quot; : &quot;=IF(%Email%=true,%ContactDetails:ContactEmailValue%,null)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>12.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetSelectedContactTypes</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;IsContactSelected&quot; : &quot;=IF(%Email%=true || %Phone%=true || %Mobile%=true, true, false)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>5.0</sequenceNumber>
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
  &quot;label&quot; : &quot;Set Account Context&quot;,
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
        <sequenceNumber>1.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>EmailErrorBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;ValidateEmail&quot;
      }, {
        &quot;field&quot; : &quot;NewEmailInput&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;NULL&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;Current &amp; new email cannot be same&quot;,
    &quot;active&quot; : true
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Email&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ExistingEmail</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;TextBlock12&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #444444;\&quot;&gt;Current Email:&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;font-weight: 400; color: #181818;\&quot;&gt;&lt;a style=\&quot;text-decoration: none; color: #181818;\&quot;&gt;%ContactDetails:ContactEmailValue%&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Email&quot;
      } ]
    }
  },
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
            <name>ExistingMobile</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;TextBlock12&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;Current Mobile Number:&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #181818;\&quot;&gt;%ContactDetails:ContactMobileValue%&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Mobile&quot;
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
            <name>ExistingPhone</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;Current Phone Number:&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #181818;\&quot;&gt;%ContactDetails:ContactPhoneValue%&lt;/span&gt;&lt;/p&gt;&quot;,
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
        &quot;field&quot; : &quot;Phone&quot;
      } ]
    }
  },
  &quot;label&quot; : &quot;TextBlock12&quot;
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Formula1</name>
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
  &quot;expression&quot; : &quot;IF((((%emailSelected%=true &amp;&amp; %NewEmailInput%&lt;&gt;null)|| (%emailSelected%=false &amp;&amp; %NewEmailInput%=null)) &amp;&amp; ((%phoneSelected%=true &amp;&amp; %NewPhoneValue%&lt;&gt;null )|| (%phoneSelected%=false &amp;&amp; %NewPhoneValue%=null)) &amp;&amp; ((%mobileSelected%=true &amp;&amp; %NewMobileValue%&lt;&gt;null)|| (%mobileSelected%=false &amp;&amp; %NewMobileValue%=null))),true, false)&quot;,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak4</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak4&quot;,
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
            <name>LineBreak5</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak5&quot;,
  &quot;padding&quot; : 70,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>23.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>MobileCountryCode</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Mobile&quot;
      } ]
    }
  },
  &quot;controllingField&quot; : {
    &quot;source&quot; : &quot;&quot;,
    &quot;type&quot; : &quot;&quot;,
    &quot;element&quot; : &quot;&quot;
  },
  &quot;optionSource&quot; : {
    &quot;source&quot; : &quot;&quot;,
    &quot;type&quot; : &quot;&quot;
  },
  &quot;options&quot; : [ {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+93&quot;,
    &quot;name&quot; : &quot;+93&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+355&quot;,
    &quot;name&quot; : &quot;+355&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+213&quot;,
    &quot;name&quot; : &quot;+213&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1684&quot;,
    &quot;name&quot; : &quot;+1684&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+376&quot;,
    &quot;name&quot; : &quot;+376&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+244&quot;,
    &quot;name&quot; : &quot;+244&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1264&quot;,
    &quot;name&quot; : &quot;+1264&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+672&quot;,
    &quot;name&quot; : &quot;+672&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1268&quot;,
    &quot;name&quot; : &quot;+1268&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+54&quot;,
    &quot;name&quot; : &quot;+54&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+374&quot;,
    &quot;name&quot; : &quot;+374&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+297&quot;,
    &quot;name&quot; : &quot;+297&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+61&quot;,
    &quot;name&quot; : &quot;+61&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+43&quot;,
    &quot;name&quot; : &quot;+43&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+994&quot;,
    &quot;name&quot; : &quot;+994&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1242&quot;,
    &quot;name&quot; : &quot;+1242&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+973&quot;,
    &quot;name&quot; : &quot;+973&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+880&quot;,
    &quot;name&quot; : &quot;+880&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1246&quot;,
    &quot;name&quot; : &quot;+1246&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+375&quot;,
    &quot;name&quot; : &quot;+375&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+32&quot;,
    &quot;name&quot; : &quot;+32&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+501&quot;,
    &quot;name&quot; : &quot;+501&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+229&quot;,
    &quot;name&quot; : &quot;+229&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1441&quot;,
    &quot;name&quot; : &quot;+1441&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+975&quot;,
    &quot;name&quot; : &quot;+975&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+591&quot;,
    &quot;name&quot; : &quot;+591&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+387&quot;,
    &quot;name&quot; : &quot;+387&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+267&quot;,
    &quot;name&quot; : &quot;+267&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+55&quot;,
    &quot;name&quot; : &quot;+55&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+246&quot;,
    &quot;name&quot; : &quot;+246&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+673&quot;,
    &quot;name&quot; : &quot;+673&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+359&quot;,
    &quot;name&quot; : &quot;+359&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+226&quot;,
    &quot;name&quot; : &quot;+226&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+257&quot;,
    &quot;name&quot; : &quot;+257&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+855&quot;,
    &quot;name&quot; : &quot;+855&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+237&quot;,
    &quot;name&quot; : &quot;+237&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1&quot;,
    &quot;name&quot; : &quot;+1&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+238&quot;,
    &quot;name&quot; : &quot;+238&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+ 345&quot;,
    &quot;name&quot; : &quot;+345&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+236&quot;,
    &quot;name&quot; : &quot;+236&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+235&quot;,
    &quot;name&quot; : &quot;+235&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+56&quot;,
    &quot;name&quot; : &quot;+56&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+86&quot;,
    &quot;name&quot; : &quot;+86&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+61&quot;,
    &quot;name&quot; : &quot;+61&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+57&quot;,
    &quot;name&quot; : &quot;+57&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+269&quot;,
    &quot;name&quot; : &quot;+269&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+242&quot;,
    &quot;name&quot; : &quot;+242&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+243&quot;,
    &quot;name&quot; : &quot;+243&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+682&quot;,
    &quot;name&quot; : &quot;+682&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+506&quot;,
    &quot;name&quot; : &quot;+506&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+225&quot;,
    &quot;name&quot; : &quot;+225&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+385&quot;,
    &quot;name&quot; : &quot;+385&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+53&quot;,
    &quot;name&quot; : &quot;+53&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+357&quot;,
    &quot;name&quot; : &quot;+357&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+420&quot;,
    &quot;name&quot; : &quot;+420&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+45&quot;,
    &quot;name&quot; : &quot;+45&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+253&quot;,
    &quot;name&quot; : &quot;+253&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1767&quot;,
    &quot;name&quot; : &quot;+1767&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1849&quot;,
    &quot;name&quot; : &quot;+1849&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+593&quot;,
    &quot;name&quot; : &quot;+593&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+20&quot;,
    &quot;name&quot; : &quot;+20&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+503&quot;,
    &quot;name&quot; : &quot;+503&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+240&quot;,
    &quot;name&quot; : &quot;+240&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+291&quot;,
    &quot;name&quot; : &quot;+291&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+372&quot;,
    &quot;name&quot; : &quot;+372&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+251&quot;,
    &quot;name&quot; : &quot;+251&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+500&quot;,
    &quot;name&quot; : &quot;+500&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+298&quot;,
    &quot;name&quot; : &quot;+298&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+679&quot;,
    &quot;name&quot; : &quot;+679&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+358&quot;,
    &quot;name&quot; : &quot;+358&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+33&quot;,
    &quot;name&quot; : &quot;+33&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+594&quot;,
    &quot;name&quot; : &quot;+594&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+689&quot;,
    &quot;name&quot; : &quot;+689&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+241&quot;,
    &quot;name&quot; : &quot;+241&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+220&quot;,
    &quot;name&quot; : &quot;+220&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+995&quot;,
    &quot;name&quot; : &quot;+995&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+49&quot;,
    &quot;name&quot; : &quot;+49&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+233&quot;,
    &quot;name&quot; : &quot;+233&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+350&quot;,
    &quot;name&quot; : &quot;+350&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+30&quot;,
    &quot;name&quot; : &quot;+30&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+299&quot;,
    &quot;name&quot; : &quot;+299&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1473&quot;,
    &quot;name&quot; : &quot;+1473&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+590&quot;,
    &quot;name&quot; : &quot;+590&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1671&quot;,
    &quot;name&quot; : &quot;+1671&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+502&quot;,
    &quot;name&quot; : &quot;+502&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+224&quot;,
    &quot;name&quot; : &quot;+224&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+245&quot;,
    &quot;name&quot; : &quot;+245&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+595&quot;,
    &quot;name&quot; : &quot;+595&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+509&quot;,
    &quot;name&quot; : &quot;+509&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+379&quot;,
    &quot;name&quot; : &quot;+379&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+504&quot;,
    &quot;name&quot; : &quot;+504&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+852&quot;,
    &quot;name&quot; : &quot;+852&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+36&quot;,
    &quot;name&quot; : &quot;+36&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+354&quot;,
    &quot;name&quot; : &quot;+354&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+91&quot;,
    &quot;name&quot; : &quot;+91&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+62&quot;,
    &quot;name&quot; : &quot;+62&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+98&quot;,
    &quot;name&quot; : &quot;+98&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+964&quot;,
    &quot;name&quot; : &quot;+964&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+353&quot;,
    &quot;name&quot; : &quot;+353&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+44&quot;,
    &quot;name&quot; : &quot;+44&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+972&quot;,
    &quot;name&quot; : &quot;+972&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+39&quot;,
    &quot;name&quot; : &quot;+39&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1876&quot;,
    &quot;name&quot; : &quot;+1876&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+81&quot;,
    &quot;name&quot; : &quot;+81&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+962&quot;,
    &quot;name&quot; : &quot;+962&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+77&quot;,
    &quot;name&quot; : &quot;+77&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+254&quot;,
    &quot;name&quot; : &quot;+254&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+686&quot;,
    &quot;name&quot; : &quot;+686&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+850&quot;,
    &quot;name&quot; : &quot;+850&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+82&quot;,
    &quot;name&quot; : &quot;+82&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+965&quot;,
    &quot;name&quot; : &quot;+965&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+996&quot;,
    &quot;name&quot; : &quot;+996&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+856&quot;,
    &quot;name&quot; : &quot;+856&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+371&quot;,
    &quot;name&quot; : &quot;+371&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+961&quot;,
    &quot;name&quot; : &quot;+961&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+266&quot;,
    &quot;name&quot; : &quot;+266&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+231&quot;,
    &quot;name&quot; : &quot;+231&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+218&quot;,
    &quot;name&quot; : &quot;+218&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+423&quot;,
    &quot;name&quot; : &quot;+423&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+370&quot;,
    &quot;name&quot; : &quot;+370&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+352&quot;,
    &quot;name&quot; : &quot;+352&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+853&quot;,
    &quot;name&quot; : &quot;+853&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+389&quot;,
    &quot;name&quot; : &quot;+389&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+261&quot;,
    &quot;name&quot; : &quot;+261&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+265&quot;,
    &quot;name&quot; : &quot;+265&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+60&quot;,
    &quot;name&quot; : &quot;+60&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+960&quot;,
    &quot;name&quot; : &quot;+960&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+223&quot;,
    &quot;name&quot; : &quot;+223&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+356&quot;,
    &quot;name&quot; : &quot;+356&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+692&quot;,
    &quot;name&quot; : &quot;+692&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+596&quot;,
    &quot;name&quot; : &quot;+596&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+222&quot;,
    &quot;name&quot; : &quot;+222&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+230&quot;,
    &quot;name&quot; : &quot;+230&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+262&quot;,
    &quot;name&quot; : &quot;+262&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+52&quot;,
    &quot;name&quot; : &quot;+52&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+691&quot;,
    &quot;name&quot; : &quot;+691&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+373&quot;,
    &quot;name&quot; : &quot;+373&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+377&quot;,
    &quot;name&quot; : &quot;+377&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+976&quot;,
    &quot;name&quot; : &quot;+976&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+382&quot;,
    &quot;name&quot; : &quot;+382&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1664&quot;,
    &quot;name&quot; : &quot;+1664&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+212&quot;,
    &quot;name&quot; : &quot;+212&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+258&quot;,
    &quot;name&quot; : &quot;+258&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+95&quot;,
    &quot;name&quot; : &quot;+95&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+264&quot;,
    &quot;name&quot; : &quot;+264&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+674&quot;,
    &quot;name&quot; : &quot;+674&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+977&quot;,
    &quot;name&quot; : &quot;+977&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+31&quot;,
    &quot;name&quot; : &quot;+31&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+599&quot;,
    &quot;name&quot; : &quot;+599&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+687&quot;,
    &quot;name&quot; : &quot;+687&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+64&quot;,
    &quot;name&quot; : &quot;+64&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+505&quot;,
    &quot;name&quot; : &quot;+505&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+227&quot;,
    &quot;name&quot; : &quot;+227&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+234&quot;,
    &quot;name&quot; : &quot;+234&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+683&quot;,
    &quot;name&quot; : &quot;+683&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+672&quot;,
    &quot;name&quot; : &quot;+672&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1670&quot;,
    &quot;name&quot; : &quot;+1670&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+47&quot;,
    &quot;name&quot; : &quot;+47&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+968&quot;,
    &quot;name&quot; : &quot;+968&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+92&quot;,
    &quot;name&quot; : &quot;+92&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+680&quot;,
    &quot;name&quot; : &quot;+680&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+970&quot;,
    &quot;name&quot; : &quot;+970&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+507&quot;,
    &quot;name&quot; : &quot;+507&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+675&quot;,
    &quot;name&quot; : &quot;+675&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+595&quot;,
    &quot;name&quot; : &quot;+595&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+51&quot;,
    &quot;name&quot; : &quot;+51&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+63&quot;,
    &quot;name&quot; : &quot;+63&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+872&quot;,
    &quot;name&quot; : &quot;+872&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+48&quot;,
    &quot;name&quot; : &quot;+48&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+351&quot;,
    &quot;name&quot; : &quot;+351&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1939&quot;,
    &quot;name&quot; : &quot;+1939&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+974&quot;,
    &quot;name&quot; : &quot;+974&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+40&quot;,
    &quot;name&quot; : &quot;+40&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+7&quot;,
    &quot;name&quot; : &quot;+7&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+250&quot;,
    &quot;name&quot; : &quot;+250&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+262&quot;,
    &quot;name&quot; : &quot;+262&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+590&quot;,
    &quot;name&quot; : &quot;+590&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+290&quot;,
    &quot;name&quot; : &quot;+290&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1869&quot;,
    &quot;name&quot; : &quot;+1869&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1758&quot;,
    &quot;name&quot; : &quot;+1758&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+590&quot;,
    &quot;name&quot; : &quot;+590&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+508&quot;,
    &quot;name&quot; : &quot;+508&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1784&quot;,
    &quot;name&quot; : &quot;+1784&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+685&quot;,
    &quot;name&quot; : &quot;+685&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+378&quot;,
    &quot;name&quot; : &quot;+378&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+239&quot;,
    &quot;name&quot; : &quot;+239&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+966&quot;,
    &quot;name&quot; : &quot;+966&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+221&quot;,
    &quot;name&quot; : &quot;+221&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+381&quot;,
    &quot;name&quot; : &quot;+381&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+248&quot;,
    &quot;name&quot; : &quot;+248&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+232&quot;,
    &quot;name&quot; : &quot;+232&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+65&quot;,
    &quot;name&quot; : &quot;+65&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+421&quot;,
    &quot;name&quot; : &quot;+421&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+386&quot;,
    &quot;name&quot; : &quot;+386&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+677&quot;,
    &quot;name&quot; : &quot;+677&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+252&quot;,
    &quot;name&quot; : &quot;+252&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+27&quot;,
    &quot;name&quot; : &quot;+27&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+211&quot;,
    &quot;name&quot; : &quot;+211&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+500&quot;,
    &quot;name&quot; : &quot;+500&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+34&quot;,
    &quot;name&quot; : &quot;+34&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+94&quot;,
    &quot;name&quot; : &quot;+94&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+249&quot;,
    &quot;name&quot; : &quot;+249&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+597&quot;,
    &quot;name&quot; : &quot;+597&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+47&quot;,
    &quot;name&quot; : &quot;+47&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+268&quot;,
    &quot;name&quot; : &quot;+268&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+46&quot;,
    &quot;name&quot; : &quot;+46&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+41&quot;,
    &quot;name&quot; : &quot;+41&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+963&quot;,
    &quot;name&quot; : &quot;+963&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+886&quot;,
    &quot;name&quot; : &quot;+886&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+992&quot;,
    &quot;name&quot; : &quot;+992&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+255&quot;,
    &quot;name&quot; : &quot;+255&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+66&quot;,
    &quot;name&quot; : &quot;+66&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+670&quot;,
    &quot;name&quot; : &quot;+670&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+228&quot;,
    &quot;name&quot; : &quot;+228&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+690&quot;,
    &quot;name&quot; : &quot;+690&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+676&quot;,
    &quot;name&quot; : &quot;+676&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1868&quot;,
    &quot;name&quot; : &quot;+1868&quot;
  }, {
    &quot;name&quot; : &quot;+358&quot;,
    &quot;value&quot; : &quot;+358&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+216&quot;,
    &quot;name&quot; : &quot;+216&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+90&quot;,
    &quot;name&quot; : &quot;+90&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+993&quot;,
    &quot;name&quot; : &quot;+993&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1649&quot;,
    &quot;name&quot; : &quot;+1649&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+688&quot;,
    &quot;name&quot; : &quot;+688&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+256&quot;,
    &quot;name&quot; : &quot;+256&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+380&quot;,
    &quot;name&quot; : &quot;+380&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+971&quot;,
    &quot;name&quot; : &quot;+971&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+598&quot;,
    &quot;name&quot; : &quot;+598&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+998&quot;,
    &quot;name&quot; : &quot;+998&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+678&quot;,
    &quot;name&quot; : &quot;+678&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+58&quot;,
    &quot;name&quot; : &quot;+58&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+84&quot;,
    &quot;name&quot; : &quot;+84&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1284&quot;,
    &quot;name&quot; : &quot;+1284&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+1340&quot;,
    &quot;name&quot; : &quot;+1340&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+681&quot;,
    &quot;name&quot; : &quot;+681&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+967&quot;,
    &quot;name&quot; : &quot;+967&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+260&quot;,
    &quot;name&quot; : &quot;+260&quot;
  }, {
    &quot;autoAdv&quot; : null,
    &quot;value&quot; : &quot;+263&quot;,
    &quot;name&quot; : &quot;+263&quot;
  } ],
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;required&quot; : true,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;Country Code&quot;,
  &quot;controlWidth&quot; : 2
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Select</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>MobileErrorBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;ValidateMobile&quot;
      }, {
        &quot;data&quot; : &quot;NULL&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NewMobileValue&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;Current &amp; new mobile number cannot be same&quot;,
    &quot;active&quot; : true
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Mobile&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewEmailInput</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;New Email&quot;,
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
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Email&quot;
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
            <sequenceNumber>3.0</sequenceNumber>
            <type>Email</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewMobileValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;autocomplete&quot; : null,
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;debounceValue&quot; : 0,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Mobile&quot;
      } ]
    }
  },
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;maxLength&quot; : 15,
  &quot;minLength&quot; : 4,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;9999[99999999999]&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;required&quot; : true,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;New Mobile Number&quot;,
  &quot;controlWidth&quot; : 3
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Telephone</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewPhoneValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;New Phone Number&quot;,
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
        &quot;field&quot; : &quot;Phone&quot;
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
            <sequenceNumber>9.0</sequenceNumber>
            <type>Telephone</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>PhoneCountryCode</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Country Code&quot;,
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
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;+93&quot;,
    &quot;value&quot; : &quot;+93&quot;,
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
    &quot;name&quot; : &quot;+358&quot;,
    &quot;value&quot; : &quot;+358&quot;,
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
        &quot;field&quot; : &quot;Phone&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Select</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>PhoneErrorBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Phone&quot;
      } ]
    }
  },
  &quot;hideLabel&quot; : true,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;Current &amp; new phone number cannot be same&quot;,
    &quot;active&quot; : true
  } ],
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;ValidatePhone&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;false&quot;
      }, {
        &quot;field&quot; : &quot;NewPhoneValue&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;NULL&quot;
      } ]
    }
  },
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 5
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock12</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;TextBlock12&quot;,
  &quot;text&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Email&quot;
      } ]
    }
  },
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
            <name>TextBlock15</name>
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
        &quot;field&quot; : &quot;Phone&quot;
      }, {
        &quot;field&quot; : &quot;Mobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;hr style=\&quot;border-top: 1px solid lightgrey;\&quot; /&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock12&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock2</name>
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
        &quot;field&quot; : &quot;Email&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;OR&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;Mobile&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;true&quot;
          }, {
            &quot;field&quot; : &quot;Phone&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;true&quot;
          } ]
        }
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;hr style=\&quot;border-top: 1px solid lightgrey;\&quot; /&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock12&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>6.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock4</name>
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
        &quot;field&quot; : &quot;Phone&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&quot;,
  &quot;label&quot; : &quot;TextBlock12&quot;,
  &quot;controlWidth&quot; : 5
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock6</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;TextBlock12&quot;,
  &quot;text&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Mobile&quot;
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
            <name>UpdateEmail/Phone_AccountInfo</name>
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
            <name>ValidateEmail</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 1,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF(%ContactDetails:ContactEmailValue% == %NewEmailInput%, true, false)&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>22.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidateMobile</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 1,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF(%ContactDetails:ContactMobileValue% == CONCATENATE(%MobileCountryCode%,%NewMobileValue%),true,false)\n&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>21.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidatePhone</name>
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
  &quot;expression&quot; : &quot;IF(%ContactDetails:ContactPhoneValue% == CONCATENATE(%PhoneCountryCode%,%NewPhoneValue%),true,false)\n&quot;,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 1
}</propertySetConfig>
            <sequenceNumber>20.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>valuesPopulated</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;true&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>UpdateEmail/Phone</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Update Email or Phone&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Next&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;Are you sure?&quot;,
  &quot;saveLabel&quot; : &quot;&quot;,
  &quot;saveMessage&quot; : &quot;Are you sure you want to save it for later?&quot;,
  &quot;completeLabel&quot; : &quot;Complete&quot;,
  &quot;completeMessage&quot; : &quot;Are you sure you want to complete the script?&quot;,
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
        <sequenceNumber>7.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessType>OmniScript</omniProcessType>
    <propertySetConfig>{&quot;persistentComponent&quot;:[{&quot;render&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;sendJSONPath&quot;:&quot;&quot;,&quot;sendJSONNode&quot;:&quot;&quot;,&quot;responseJSONPath&quot;:&quot;&quot;,&quot;responseJSONNode&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcCart&quot;,&quot;itemsKey&quot;:&quot;cartItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;vlcProductConfig.html&quot;,&quot;modalController&quot;:&quot;ModalProductCtrl&quot;,&quot;modalSize&quot;:&quot;lg&quot;}},{&quot;render&quot;:false,&quot;dispOutsideOmni&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcKnowledge&quot;,&quot;itemsKey&quot;:&quot;knowledgeItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;&quot;,&quot;modalController&quot;:&quot;&quot;,&quot;modalSize&quot;:&quot;lg&quot;}}],&quot;allowSaveForLater&quot;:false,&quot;saveNameTemplate&quot;:null,&quot;saveExpireInDays&quot;:null,&quot;saveForLaterRedirectPageName&quot;:&quot;sflRedirect&quot;,&quot;saveForLaterRedirectTemplateUrl&quot;:&quot;vlcSaveForLaterAcknowledge.html&quot;,&quot;saveContentEncoded&quot;:false,&quot;saveObjectId&quot;:&quot;%ContextId%&quot;,&quot;saveURLPatterns&quot;:{},&quot;autoSaveOnStepNext&quot;:false,&quot;elementTypeToHTMLTemplateMapping&quot;:{},&quot;seedDataJSON&quot;:{},&quot;trackingCustomData&quot;:{},&quot;enableKnowledge&quot;:false,&quot;bLK&quot;:false,&quot;lkObjName&quot;:null,&quot;knowledgeArticleTypeQueryFieldsMap&quot;:{},&quot;timeTracking&quot;:false,&quot;hideStepChart&quot;:false,&quot;mergeSavedData&quot;:false,&quot;visualforcePagesAvailableInPreview&quot;:{},&quot;cancelType&quot;:&quot;SObject&quot;,&quot;allowCancel&quot;:true,&quot;cancelSource&quot;:&quot;%ContextId%&quot;,&quot;cancelRedirectPageName&quot;:&quot;OmniScriptCancelled&quot;,&quot;cancelRedirectTemplateUrl&quot;:&quot;vlcCancelled.html&quot;,&quot;consoleTabLabel&quot;:&quot;New&quot;,&quot;wpm&quot;:false,&quot;ssm&quot;:false,&quot;message&quot;:{},&quot;pubsub&quot;:false,&quot;autoFocus&quot;:false,&quot;currencyCode&quot;:&quot;&quot;,&quot;showInputWidth&quot;:false,&quot;rtpSeed&quot;:false,&quot;consoleTabTitle&quot;:&quot;Update Email or Phone&quot;,&quot;consoleTabIcon&quot;:&quot;custom:custom18&quot;,&quot;errorMessage&quot;:{&quot;custom&quot;:[]},&quot;stylesheet&quot;:{&quot;newport&quot;:&quot;&quot;,&quot;lightning&quot;:&quot;UpdateEmailorPhoneCSS&quot;,&quot;newportRtl&quot;:&quot;&quot;,&quot;lightningRtl&quot;:&quot;&quot;},&quot;stepChartPlacement&quot;:&quot;right&quot;,&quot;disableUnloadWarn&quot;:true,&quot;scrollBehavior&quot;:&quot;auto&quot;,&quot;currentLanguage&quot;:&quot;en_US&quot;,&quot;scrollToTopWhenNavigatingBetweenStepsOnExperienceCloudSites&quot;:false}</propertySetConfig>
    <subType>UpdateEmailorPhone</subType>
    <type>FSC</type>
    <uniqueName>FSC_UpdateEmailorPhone_English_2</uniqueName>
    <versionNumber>2.0</versionNumber>
    <webComponentKey>09006e69-dc42-e402-41e7-f0af8fab8f2b</webComponentKey>
</OmniScript>
