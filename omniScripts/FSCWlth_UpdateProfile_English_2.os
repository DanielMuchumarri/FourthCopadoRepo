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
    <name>FSCWlthUpdateProfileEnglish</name>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>ConvertUploadedDocuments</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;ConvertUploadedDocuments&quot;,
  &quot;remoteClass&quot; : &quot;fscserviceprocess.AddressUpdateHelperFunctions&quot;,
  &quot;remoteMethod&quot; : &quot;convertUploadedDocuments&quot;,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;DocumentsUploadBlock&quot;,
  &quot;sendJSONNode&quot; : &quot;arguments&quot;,
  &quot;responseJSONPath&quot; : &quot;result&quot;,
  &quot;responseJSONNode&quot; : &quot;CompleteDocumentInfo&quot;,
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Name&quot;
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
        <sequenceNumber>17.0</sequenceNumber>
        <type>Remote Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>CreateCase</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;remoteClass&quot; : &quot;FSCWlthUpdateProfileHelperFunctions&quot;,
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
    &quot;svcCatalogItemDefApiName&quot; : &quot;FSCWlth_UpdateProfile&quot;,
    &quot;caseSubject&quot; : &quot;%accounts:name% - Update Profile Service Request&quot;,
    &quot;isCommunitySite&quot; : &quot;%isCommunitySite%&quot;,
    &quot;selectedEmail&quot; : &quot;%Summary:SelectedEmail%&quot;,
    &quot;selectedPhone&quot; : &quot;%Summary:SelectedPhone%&quot;,
    &quot;selectedMobile&quot; : &quot;%Summary:SelectedMobile%&quot;,
    &quot;selectedName&quot; : &quot;%Summary:SelectedName%&quot;,
    &quot;selectedAddress&quot; : &quot;%Summary:SelectedAddress%&quot;,
    &quot;currentEmail&quot; : &quot;%Summary:CurrentEmail%&quot;,
    &quot;newEmail&quot; : &quot;%Summary:NewEmail%&quot;,
    &quot;currentPhoneNumber&quot; : &quot;%Summary:CurrentPhone%&quot;,
    &quot;newPhoneNumber&quot; : &quot;%Summary:NewPhone%&quot;,
    &quot;currentMobileNumber&quot; : &quot;%Summary:CurrentMobile%&quot;,
    &quot;newMobileNumber&quot; : &quot;%Summary:NewMobile%&quot;,
    &quot;currentFirstName&quot; : &quot;%accounts:firstName%&quot;,
    &quot;newFirstName&quot; : &quot;%Summary:NewFirstName%&quot;,
    &quot;newLastName&quot; : &quot;%Summary:NewLastName%&quot;,
    &quot;addressLine1&quot; : &quot;%Summary:AddressLine1%&quot;,
    &quot;addressLine2&quot; : &quot;%Summary:AddressLine2%&quot;,
    &quot;city&quot; : &quot;%Summary:City%&quot;,
    &quot;state&quot; : &quot;%Summary:State%&quot;,
    &quot;country&quot; : &quot;%Summary:Country%&quot;,
    &quot;zipCode&quot; : &quot;%Summary:PostalCode%&quot;,
    &quot;updateCustomerAccount&quot; : &quot;%Summary:UpdateCustomerAccount%&quot;,
    &quot;updateFinancialAccount&quot; : &quot;%Summary:UpdateFinancialAccount%&quot;,
    &quot;selectedAddresses&quot; : &quot;%Summary:SelectedAddresses%&quot;,
    &quot;documentInfo&quot; : &quot;%Summary:UploadedFileNames%&quot;,
    &quot;currentLastName&quot; : &quot;%accounts:lastName%&quot;,
    &quot;selectedMaritalStatus&quot; : &quot;%Summary:SelectedMaritalStatus%&quot;,
    &quot;selectedEmployerName&quot; : &quot;%Summary:SelectedEmployerName%&quot;,
    &quot;selectedOccupation&quot; : &quot;%Summary:SelectedOccupation%&quot;,
    &quot;currentMaritalStatus&quot; : &quot;%Summary:CurrentMaritalStatus%&quot;,
    &quot;currentEmployerName&quot; : &quot;%Summary:CurrentEmployerName%&quot;,
    &quot;currentOccupation&quot; : &quot;%Summary:CurrentOccupation%&quot;,
    &quot;newMaritalStatus&quot; : &quot;%Summary:NewMaritalStatus%&quot;,
    &quot;newOccupation&quot; : &quot;%Summary:NewOccupation%&quot;,
    &quot;newEmployerName&quot; : &quot;%Summary:NewEmployerName%&quot;
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
        <sequenceNumber>25.0</sequenceNumber>
        <type>Remote Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>FSCWlth_ServiceProcessGetAccountDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;bundle&quot; : &quot;FSCWlthServiceProcessGetAccountDetails&quot;,
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
        <embeddedOmniScriptKey>FSCWlth|ConfirmationScreen|English</embeddedOmniScriptKey>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>FSCWlthConfirmationScreenEnglish</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;Type&quot; : &quot;FSCWlth&quot;,
  &quot;Sub Type&quot; : &quot;ConfirmationScreen&quot;,
  &quot;Language&quot; : &quot;English&quot;,
  &quot;show&quot; : null
}</propertySetConfig>
        <sequenceNumber>29.0</sequenceNumber>
        <type>OmniScript</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetDocumentTypes</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;FSCWlthServiceProcess_GetDocumentTypes&quot;,
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
  &quot;responseJSONNode&quot; : &quot;RetrievedDocumentTypes&quot;,
  &quot;extraPayload&quot; : {
    &quot;ProcessName&quot; : &quot;FSCWlth_UpdateProfile&quot;
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
        <name>GetFinancialAccountAddresses</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;GetFinancialAccountAddresses&quot;,
  &quot;integrationProcedureKey&quot; : &quot;FSCWlthUpdateProfile_GetFinancialAccountAddresses&quot;,
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
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Address&quot;
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
        <sequenceNumber>18.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>MergeSelectedAddresses</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;FSCWlthUpdateProfile_MergeSelectedAddresses&quot;,
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
    &quot;CustomerAddresses&quot; : &quot;%UpdateAddresses:ShowCustomerAddressestoUpdate:OutputData:selectedaddresses%&quot;,
    &quot;FinancialAccountAddresses&quot; : &quot;%UpdateAddresses:ShowFinancialAddresses:OutputData:selectedaddresses%&quot;
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
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Address&quot;
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
        <sequenceNumber>22.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>MultipleDocumentsValidationCheck</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;MultipleDocumentsValidationCheck&quot;,
  &quot;remoteClass&quot; : &quot;fscserviceprocess.AddressUpdateHelperFunctions&quot;,
  &quot;remoteMethod&quot; : &quot;ifUploadContainsMultipleFiles&quot;,
  &quot;remoteOptions&quot; : {
    &quot;preTransformBundle&quot; : &quot;&quot;,
    &quot;postTransformBundle&quot; : &quot;&quot;
  },
  &quot;remoteTimeout&quot; : 30000,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;DocumentsUploadBlock&quot;,
  &quot;sendJSONNode&quot; : &quot;arguments&quot;,
  &quot;responseJSONPath&quot; : &quot;result&quot;,
  &quot;responseJSONNode&quot; : &quot;IfMultipleDocumentsPresentInUpload&quot;,
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Name&quot;
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
        <sequenceNumber>15.0</sequenceNumber>
        <type>Remote Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>OmniScript_Analytics</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
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
  &quot;inProgressMessage&quot; : &quot;&quot;,
  &quot;postMessage&quot; : &quot;&quot;,
  &quot;failureNextLabel&quot; : &quot;&quot;,
  &quot;failureAbortLabel&quot; : &quot;Abort&quot;,
  &quot;failureGoBackLabel&quot; : &quot;&quot;,
  &quot;failureAbortMessage&quot; : &quot;&quot;,
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
  &quot;businessEvent&quot; : &quot;&quot;,
  &quot;lwcComponentOverride&quot; : &quot;&quot;
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
    &quot;active&quot; : false
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
            <sequenceNumber>1.0</sequenceNumber>
            <type>Validation</type>
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
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedEmployerName&quot;
      }, {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedOccupation&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>18.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak11</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak11&quot;,
  &quot;padding&quot; : 20,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedName&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>34.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak12</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak10&quot;,
  &quot;padding&quot; : 20,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedAddress&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>24.0</sequenceNumber>
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
  &quot;padding&quot; : 10,
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
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>2.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak4</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedName&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;Summary:SelectedMaritalStatus&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;padding&quot; : 20,
  &quot;label&quot; : &quot;LineBreak10&quot;
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
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
  &quot;padding&quot; : 20,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedPhone&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;Summary:SelectedMobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;Summary:SelectedEmail&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
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
            <sequenceNumber>37.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummaryShowAccountDetails</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;customAttributes&quot; : [ {
    &quot;source&quot; : &quot;true&quot;,
    &quot;name&quot; : &quot;parent-data&quot;
  }, {
    &quot;source&quot; : &quot;%accounts%&quot;,
    &quot;name&quot; : &quot;records&quot;
  } ],
  &quot;bStandalone&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthServiceProcessShowAccountDetails&quot;,
  &quot;hide&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;isCommunitySite&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
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
            <name>ShowSelectedAddresses</name>
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
        &quot;field&quot; : &quot;Summary:SelectedAddress&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthUpdateProfileShowSelectedAddresses&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%Summary:SelectedAddresses%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>33.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ShowUploadedDocuments</name>
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
        &quot;field&quot; : &quot;Summary:SelectedName&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthUpdateProfileShowUploadedDocuments&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%Summary:UploadedFileNames%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>36.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock11</name>
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
        &quot;field&quot; : &quot;Summary:SelectedName&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;New Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewName%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock12</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;New Address Line1&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:AddressLine1%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : null,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;Summary:AddressLine1&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>26.0</sequenceNumber>
            <type>Text Block</type>
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedAddress&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;List of addresses to be updated with new address&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>32.0</sequenceNumber>
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedAddress&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 16px; padding-top: 4px; padding-bottom: 4px;\&quot;&gt;&lt;strong&gt;Address&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>25.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock16</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Email&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;&lt;a style=\&quot;text-decoration: none; color: #444444;\&quot;&gt;%Summary:CurrentEmail%&lt;/a&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedEmail&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock17</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedEmail&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;New Email&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;&lt;a style=\&quot;text-decoration: none; color: #444444;\&quot;&gt;%Summary:NewEmail%&lt;/a&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>13.0</sequenceNumber>
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
        &quot;field&quot; : &quot;Summary:AddressLine2&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : null
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;New Address Line2&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:AddressLine2%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>27.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock19</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 16px; padding-top: 4px; padding-bottom: 4px;\&quot;&gt;&lt;strong&gt;Contact Information&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedPhone&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;Summary:SelectedMobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;Summary:SelectedEmail&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
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
            <name>TextBlock20</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Phone Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CurrentPhone%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedPhone&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock21</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedPhone&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;New Phone Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewFormattedPhone%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock22</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Mobile Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CurrentMobile%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedMobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
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
            <name>TextBlock23</name>
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
        &quot;field&quot; : &quot;Summary:SelectedEmployerName&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Employer&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CurrentEmployerName%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>20.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock24</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;New City&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:City%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : null,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;Summary:City&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>28.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock26</name>
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
        &quot;field&quot; : &quot;Summary:SelectedName&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 16px; padding-top: 4px; padding-bottom: 4px;\&quot;&gt;&lt;strong&gt;Documents Uploaded&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>35.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock28</name>
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
        &quot;field&quot; : &quot;Summary:State&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : null
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;New State&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:State%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>29.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock29</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;New Postal Code&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:PostalCode%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : null,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;Summary:PostalCode&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>30.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock31</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Marital Status&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CurrentMaritalStatus%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedMaritalStatus&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
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
            <name>TextBlock32</name>
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
        &quot;field&quot; : &quot;Summary:Country&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : null
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;New Country&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:Country%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>31.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock33</name>
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
        &quot;field&quot; : &quot;Summary:SelectedMaritalStatus&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;New Marital Status&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewMaritalStatus%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock35</name>
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
        &quot;field&quot; : &quot;Summary:SelectedEmployerName&quot;
      }, {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedOccupation&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 16px; padding-top: 4px; padding-bottom: 4px;\&quot;&gt;&lt;strong&gt;Employment Information&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock36</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedMobile&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Mobile Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewFormattedMobile%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock37</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;New Employer&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewEmployerName%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedEmployerName&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
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
            <name>TextBlock38</name>
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
        &quot;field&quot; : &quot;Summary:SelectedOccupation&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Occupation&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CurrentOccupation%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>22.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock39</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;New Occupation&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewOccupation%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:SelectedOccupation&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
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
            <name>TextBlock4</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 16px; padding-top: 4px; padding-bottom: 4px;\&quot;&gt;&lt;strong&gt;Personal Information&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedName&quot;
      }, {
        &quot;field&quot; : &quot;Summary:SelectedMaritalStatus&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock5</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px;\&quot;&gt;Current Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CurrentName%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:SelectedName&quot;
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
            <name>UpdateProfileSummary</name>
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
  &quot;lwcName&quot; : &quot;cfFSCWlthUpdateProfileShowSummary&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%Summary%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>ReviewSummary</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;businessEvent&quot; : &quot;&quot;,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;pubsub&quot; : false,
  &quot;message&quot; : { },
  &quot;ssm&quot; : false,
  &quot;wpm&quot; : false,
  &quot;errorMessage&quot; : {
    &quot;default&quot; : null,
    &quot;custom&quot; : [ ]
  },
  &quot;allowSaveForLater&quot; : false,
  &quot;chartLabel&quot; : null,
  &quot;instructionKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
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
  &quot;knowledgeOptions&quot; : {
    &quot;typeFilter&quot; : &quot;&quot;,
    &quot;remoteTimeout&quot; : 30000,
    &quot;dataCategoryCriteria&quot; : &quot;&quot;,
    &quot;keyword&quot; : &quot;&quot;,
    &quot;publishStatus&quot; : &quot;Online&quot;,
    &quot;language&quot; : &quot;English&quot;
  },
  &quot;remoteOptions&quot; : { },
  &quot;remoteTimeout&quot; : 30000,
  &quot;remoteMethod&quot; : &quot;&quot;,
  &quot;remoteClass&quot; : &quot;&quot;,
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;instruction&quot; : &quot;&quot;,
  &quot;completeMessage&quot; : &quot;Are you sure you want to complete the script?&quot;,
  &quot;completeLabel&quot; : &quot;Complete&quot;,
  &quot;saveMessage&quot; : &quot;Are you sure you want to save it for later?&quot;,
  &quot;saveLabel&quot; : &quot;Save for later&quot;,
  &quot;cancelMessage&quot; : &quot;Are you sure?&quot;,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Submit&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;validationRequired&quot; : true,
  &quot;label&quot; : &quot;Review Summary&quot;
}</propertySetConfig>
        <sequenceNumber>24.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Address</name>
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
  &quot;checkLabel&quot; : &quot;Update address&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>35.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ContactEmailValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444; font-size: 12px; padding-bottom: 4px; padding-top: 2px;\&quot;&gt;Current Email Address&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;a style=\&quot;text-decoration: none; color: #444444;\&quot;&gt;%accounts:email%&lt;/a&gt;&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ContactEmployerName</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444; font-size: 12px; padding-bottom: 4px; padding-top: 2px;\&quot;&gt;Current Employer Name&lt;/p&gt;\n&lt;p style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%accounts:currentEmployer%&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>29.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ContactMaritalStatus</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock27&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444; font-size: 12px; padding-bottom: 4px; padding-top: 2px;\&quot;&gt;Current Marital Status&lt;/p&gt;\n&lt;p style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%accounts:maritalStatus%&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
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
            <name>ContactMobileValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444; font-size: 12px; padding-bottom: 4px; padding-top: 2px;\&quot;&gt;Current Mobile&lt;/p&gt;\n&lt;p style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%accounts:mobile%&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>24.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ContactNameValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444; font-size: 12px; padding-bottom: 4px; padding-top: 2px;\&quot;&gt;Current Name&lt;/p&gt;\n&lt;p style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%accounts:name%&lt;/strong&gt;&lt;/p&gt;&quot;,
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
            <name>ContactOccupation</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444; font-size: 12px; padding-bottom: 4px; padding-top: 2px;\&quot;&gt;Current Occupation&lt;/p&gt;\n&lt;p style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%accounts:occupation%&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>32.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ContactPhoneValue</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444; font-size: 12px; padding-bottom: 4px; padding-top: 2px;\&quot;&gt;Current Phone&lt;/p&gt;\n&lt;p style=\&quot;color: #444444;\&quot;&gt;&lt;strong&gt;%accounts:phone%&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>20.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>DocumentType</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;Document Type&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;googleTransformation&quot; : {
    &quot;street&quot; : &quot;&quot;,
    &quot;locality&quot; : &quot;&quot;,
    &quot;administrative_area_level_1&quot; : &quot;&quot;,
    &quot;administrative_area_level_2&quot; : &quot;&quot;,
    &quot;country&quot; : &quot;&quot;,
    &quot;postal_code&quot; : &quot;&quot;
  },
  &quot;required&quot; : true,
  &quot;readOnly&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;minLength&quot; : 0,
  &quot;maxLength&quot; : 255,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;typeAheadKey&quot; : &quot;&quot;,
  &quot;dataProcessorFunction&quot; : &quot;&quot;,
  &quot;callFrequency&quot; : 300,
  &quot;editMode&quot; : false,
  &quot;newItemLabel&quot; : &quot;&quot;,
  &quot;hideEditButton&quot; : true,
  &quot;enableGoogleMapsAutocomplete&quot; : false,
  &quot;enableLookup&quot; : true,
  &quot;disableDataFilter&quot; : false,
  &quot;googleMapsAPIKey&quot; : &quot;&quot;,
  &quot;hideMap&quot; : true,
  &quot;googleAddressCountry&quot; : &quot;all&quot;,
  &quot;useDataJson&quot; : true,
  &quot;dataJsonPath&quot; : &quot;RetrievedDocumentTypes&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Type Ahead Block</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>Files</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;File&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;uploadContDoc&quot; : true,
  &quot;contentParentId&quot; : [ ],
  &quot;extraPayload&quot; : { },
  &quot;remoteClass&quot; : &quot;&quot;,
  &quot;remoteMethod&quot; : &quot;&quot;,
  &quot;remoteOptions&quot; : { },
  &quot;errorMessage&quot; : {
    &quot;custom&quot; : [ ],
    &quot;default&quot; : null
  },
  &quot;required&quot; : true
}</propertySetConfig>
                <sequenceNumber>1.0</sequenceNumber>
                <type>File</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>DocumentsUploadBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 11,
  &quot;label&quot; : &quot;&quot;,
  &quot;collapse&quot; : false,
  &quot;repeat&quot; : true,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Name&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>EditProfileShowAccountDetails</name>
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
  &quot;lwcName&quot; : &quot;cfFSCWlthServiceProcessShowAccountDetails&quot;,
  &quot;bStandalone&quot; : false,
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
            <name>Email</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 7,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Email Address&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>EmployerName</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 7,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Employer Name&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>28.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>EmploymentInformationHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;margin-top: 28px;\&quot;&gt;&lt;strong&gt;Employment Information&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>27.0</sequenceNumber>
            <type>Text Block</type>
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
            <name>LineBreak3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 50,
  &quot;label&quot; : &quot;LineBreak2&quot;
}</propertySetConfig>
            <sequenceNumber>36.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>MaritalStatus</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;checkLabel&quot; : &quot;Marital Status&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;controlWidth&quot; : 8
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Mobile</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;checkLabel&quot; : &quot;Mobile&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;controlWidth&quot; : 7
}</propertySetConfig>
            <sequenceNumber>23.0</sequenceNumber>
            <type>Checkbox</type>
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
    &quot;name&quot; : &quot;+1&quot;,
    &quot;value&quot; : &quot;+1&quot;,
    &quot;autoAdv&quot; : null
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
    &quot;value&quot; : &quot;+358&quot;,
    &quot;name&quot; : &quot;+358&quot;
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
  &quot;defaultValue&quot; : &quot;+1&quot;,
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
            <sequenceNumber>25.0</sequenceNumber>
            <type>Select</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Name</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 9,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Name&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>UploadOnlyOneDocumentForEachDocumentType</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;UploadOnlyOneDocumentForEachDocumentType&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Yes&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;IfMultipleDocumentsPresentInUpload&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;You can upload only one document for each document type.&quot;,
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
                <level>2.0</level>
                <name>VerifyIdentityHeader</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #706e6b; font-weight: bold; font-size: 13px; padding-top: 10px;\&quot;&gt;Verify Identity&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock29&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NameBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 11,
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
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Name&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NameCannotBeSameValidation</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ValidateName&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;The current and new name can not be same&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Success&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : true
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ValidateName&quot;
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
            <name>NewEmailInput</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;New Email Address&quot;,
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
  &quot;placeholder&quot; : &quot;Enter new email address...&quot;,
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
            <sequenceNumber>18.0</sequenceNumber>
            <type>Email</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewEmployerName</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;New Employer Name&quot;,
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
  &quot;mask&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;minLength&quot; : 0,
  &quot;maxLength&quot; : 255,
  &quot;placeholder&quot; : &quot;Enter new employer name…&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;EmployerName&quot;
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
            <sequenceNumber>30.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewFirstNameInput</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;First Name&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : &quot;%CurrentFirstName%&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;minLength&quot; : 0,
  &quot;maxLength&quot; : 255,
  &quot;placeholder&quot; : &quot;Enter new first name...&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Name&quot;
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
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewLastNameInput</name>
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
        &quot;field&quot; : &quot;Name&quot;
      } ]
    }
  },
  &quot;placeholder&quot; : &quot;Enter new last name...&quot;,
  &quot;maxLength&quot; : 255,
  &quot;minLength&quot; : 0,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : &quot;%CurrentLastName%&quot;,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;required&quot; : true,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;Last Name&quot;,
  &quot;controlWidth&quot; : 3
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewMaritalStatus</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;New Marital Status&quot;,
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
    &quot;name&quot; : &quot;Married&quot;,
    &quot;value&quot; : &quot;Married&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Domestic Partner&quot;,
    &quot;value&quot; : &quot;Domestic Partner&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Single&quot;,
    &quot;value&quot; : &quot;Single&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Widowed&quot;,
    &quot;value&quot; : &quot;Widowed&quot;,
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
        &quot;field&quot; : &quot;MaritalStatus&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Select</type>
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
  &quot;minLength&quot; : 7,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;9999999[99999999]&quot;,
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
            <sequenceNumber>26.0</sequenceNumber>
            <type>Telephone</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewOccupation</name>
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
        &quot;field&quot; : &quot;Occupation&quot;
      } ]
    }
  },
  &quot;placeholder&quot; : &quot;Enter new occupation…&quot;,
  &quot;maxLength&quot; : 255,
  &quot;minLength&quot; : 0,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;&quot;,
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
  &quot;label&quot; : &quot;New Occupation&quot;,
  &quot;controlWidth&quot; : 5
}</propertySetConfig>
            <sequenceNumber>33.0</sequenceNumber>
            <type>Text</type>
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
  &quot;mask&quot; : &quot;9999999[99999999]&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;minLength&quot; : 7,
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
            <sequenceNumber>22.0</sequenceNumber>
            <type>Telephone</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Occupation</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;checkLabel&quot; : &quot;Occupation&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;controlWidth&quot; : 7
}</propertySetConfig>
            <sequenceNumber>31.0</sequenceNumber>
            <type>Checkbox</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>PersonalInformationHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock1&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;Personal Information&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
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
            <name>Phone</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 7,
  &quot;label&quot; : &quot;Checkbox1&quot;,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : false,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;checkLabel&quot; : &quot;Phone&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Checkbox</type>
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
  &quot;defaultValue&quot; : &quot;+1&quot;,
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
            <sequenceNumber>21.0</sequenceNumber>
            <type>Select</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>PhoneHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;margin-top: 28px;\&quot;&gt;&lt;strong&gt;Contact Information&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock6</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock6&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;margin-top: 28px;\&quot;&gt;&lt;strong&gt;Address Information&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>34.0</sequenceNumber>
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
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AtleastOneOptionSelected&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select at least one option.&quot;,
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
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>ShowValidDocumentTypes</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthUpdateProfileShowValidDocumentTypes&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ ]
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Custom Lightning Web Component</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidDocumentTypesBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 11,
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
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Name&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SelectDetailsToUpdate</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Edit Profile&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Next&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;Are you sure?&quot;,
  &quot;saveLabel&quot; : &quot;Save for later&quot;,
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
        <sequenceNumber>5.0</sequenceNumber>
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
    &quot;ConfirmationMessage&quot; : &quot;The Profile Update request was submitted.&quot;
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
        <sequenceNumber>28.0</sequenceNumber>
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
    &quot;ValidateContactSelection&quot; : &quot;Select at least one option.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AtleastOneOptionSelected&quot;
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
        <name>SetCreateCaseConfirmation</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
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
        <sequenceNumber>26.0</sequenceNumber>
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
        <sequenceNumber>27.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetDefaultNameValues</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetDefaultNameValues&quot;,
  &quot;elementValueMap&quot; : {
    &quot;CurrentFirstName&quot; : &quot;=IF(%accounts:firstName% == &apos;N/A&apos;,&apos;&apos;,%accounts:firstName%)&quot;,
    &quot;CurrentLastName&quot; : &quot;=IF(%accounts:lastName% == &apos;N/A&apos;,&apos;&apos;,%accounts:lastName%)&quot;
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
        <name>SetErrorforSameEmail</name>
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
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Email&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;ValidateEmail&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;NewEmailInput&quot; : &quot;The current and new email address can’t be the same.&quot;
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
        <name>SetErrorforSameEmployer</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;NewEmployerName&quot; : &quot;The current and new employer name can’t be the same.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:EmployerName&quot;
      }, {
        &quot;field&quot; : &quot;ValidateEmployerName&quot;,
        &quot;condition&quot; : &quot;=&quot;,
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
        <sequenceNumber>13.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetErrorforSameMaritalStatus</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;NewMaritalStatus&quot; : &quot;The current and new marital status can’t be the same.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:MaritalStatus&quot;
      }, {
        &quot;field&quot; : &quot;ValidateMaritalStatus&quot;,
        &quot;condition&quot; : &quot;=&quot;,
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
        <sequenceNumber>9.0</sequenceNumber>
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
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Mobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;ValidateMobile&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;NewMobileValue&quot; : &quot;The current and new mobile can’t be the same.&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>12.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetErrorforSameName</name>
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
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Name&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;ValidateName&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;NameCannotBeSameValidation&quot; : &quot;The current and new name can’t be the same.&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>8.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetErrorforSameOccupation</name>
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
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Occupation&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;ValidateOccupation&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;NewOccupation&quot; : &quot;The current and new occupation can’t be the same.&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>14.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetErrorforSamePhone</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;NewPhoneValue&quot; : &quot;The current and new phone can’t be the same.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Phone&quot;
      }, {
        &quot;field&quot; : &quot;ValidatePhone&quot;,
        &quot;condition&quot; : &quot;=&quot;,
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
        <sequenceNumber>11.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetNoAddressSelected</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;AddressNotSelectedToUpdate&quot; : &quot;=IF(AND((%UpdateAddresses:ShowCustomerAddressestoUpdate:OutputData:selectedaddresses% == NULL || %UpdateAddresses:ShowCustomerAddressestoUpdate:OutputData:selectedaddresses% == \&quot;\&quot;),(%UpdateAddresses:ShowFinancialAddresses:OutputData:selectedaddresses% == NULL || %UpdateAddresses:ShowFinancialAddresses:OutputData:selectedaddresses% == \&quot;\&quot;)), true, false)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Address&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>20.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetNoAddressSelectedError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;NoAddressSelectedValidation&quot; : &quot;Select at least one address to update.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AddressNotSelectedToUpdate&quot;
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
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetOneDocumentError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;UploadOnlyOneDocumentForEachDocumentType&quot; : &quot;You can upload only one document for each document type.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Yes&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;IfMultipleDocumentsPresentInUpload&quot;
      }, {
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Name&quot;,
        &quot;condition&quot; : &quot;=&quot;,
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
        <name>SetServiceProcessAccountContext</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;FSCWlthSelfService_SetServiceProcessAccountContext&quot;,
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
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetUpdateProfileSummary</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;Summary&quot; : {
      &quot;CurrentName&quot; : &quot;%accounts:name%&quot;,
      &quot;CurrentEmail&quot; : &quot;%accounts:email%&quot;,
      &quot;CurrentPhone&quot; : &quot;%accounts:phone%&quot;,
      &quot;CurrentMobile&quot; : &quot;%accounts:mobile%&quot;,
      &quot;CurrentMaritalStatus&quot; : &quot;%accounts:maritalStatus%&quot;,
      &quot;CurrentEmployerName&quot; : &quot;%accounts:currentEmployer%&quot;,
      &quot;CurrentOccupation&quot; : &quot;%accounts:occupation%&quot;,
      &quot;SelectedName&quot; : &quot;%SelectDetailsToUpdate:Name%&quot;,
      &quot;SelectedAddress&quot; : &quot;%SelectDetailsToUpdate:Address%&quot;,
      &quot;SelectedEmail&quot; : &quot;%SelectDetailsToUpdate:Email%&quot;,
      &quot;SelectedPhone&quot; : &quot;%SelectDetailsToUpdate:Phone%&quot;,
      &quot;SelectedMobile&quot; : &quot;%SelectDetailsToUpdate:Mobile%&quot;,
      &quot;SelectedEmployerName&quot; : &quot;%SelectDetailsToUpdate:EmployerName%&quot;,
      &quot;SelectedOccupation&quot; : &quot;%SelectDetailsToUpdate:Occupation%&quot;,
      &quot;SelectedMaritalStatus&quot; : &quot;%SelectDetailsToUpdate:MaritalStatus%&quot;,
      &quot;NewName&quot; : &quot;=CONCATENATE(%SelectDetailsToUpdate:NewFirstNameInput%,&apos; &apos;,%SelectDetailsToUpdate:NewLastNameInput%)&quot;,
      &quot;NewMaritalStatus&quot; : &quot;%SelectDetailsToUpdate:NewMaritalStatus%&quot;,
      &quot;NewEmail&quot; : &quot;%SelectDetailsToUpdate:NewEmailInput%&quot;,
      &quot;NewPhone&quot; : &quot;=CONCATENATE(%SelectDetailsToUpdate:PhoneCountryCode%,%SelectDetailsToUpdate:NewPhoneValue%)&quot;,
      &quot;NewFormattedPhone&quot; : &quot;=CONCATENATE(%SelectDetailsToUpdate:PhoneCountryCode%,&apos;-&apos;,%SelectDetailsToUpdate:NewPhoneValue%)&quot;,
      &quot;NewMobile&quot; : &quot;=CONCATENATE(%SelectDetailsToUpdate:MobileCountryCode%,%SelectDetailsToUpdate:NewMobileValue%)&quot;,
      &quot;NewFormattedMobile&quot; : &quot;=CONCATENATE(%SelectDetailsToUpdate:MobileCountryCode%,&apos;-&apos;,%SelectDetailsToUpdate:NewMobileValue%)&quot;,
      &quot;NewEmployerName&quot; : &quot;%SelectDetailsToUpdate:NewEmployerName%&quot;,
      &quot;NewOccupation&quot; : &quot;%SelectDetailsToUpdate:NewOccupation%&quot;,
      &quot;NewAddress&quot; : &quot;=CONCATENATE(%UpdateAddresses:NewAddressLine1Input%,IF((%UpdateAddresses:NewAddressLine2Input% != &apos;&apos; &amp;&amp; %UpdateAddresses:NewAddressLine2Input% != null),CONCATENATE(&apos;, &apos;,%UpdateAddresses:NewAddressLine2Input%,&apos;&apos;)),CONCATENATE(&apos;, &apos;,%UpdateAddresses:NewCityInput%),CONCATENATE(&apos;, &apos;,%UpdateAddresses:NewStateInput%),CONCATENATE(&apos;, &apos;,%UpdateAddresses:NewPostalCodeInput%),CONCATENATE(&apos;, &apos;,%UpdateAddresses:NewCountryInput%))&quot;,
      &quot;SelectedAddresses&quot; : &quot;=ARRAY(%MergedAccountAddresses%)&quot;,
      &quot;UploadedFileNames&quot; : &quot;%CompleteDocumentInfo%&quot;,
      &quot;NewFirstName&quot; : &quot;%SelectDetailsToUpdate:NewFirstNameInput%&quot;,
      &quot;NewLastName&quot; : &quot;%SelectDetailsToUpdate:NewLastNameInput%&quot;,
      &quot;UpdateCustomerAccount&quot; : &quot;=IF(%Name%=true || %Email%=true || %Phone%=true || %Mobile%=true || %MaritalStatus%=true || %EmployerName%=true || %Occupation%=true || (%Address%=true &amp;&amp; COUNT(%ShowCustomerAddressestoUpdate:OutputData:selectedaddresses%)&gt;=1), &apos;Yes&apos;, &apos;No&apos;)&quot;,
      &quot;UpdateFinancialAccount&quot; : &quot;=IF(COUNT(%ShowFinancialAddresses:OutputData:selectedaddresses%)&gt;=1, &apos;Yes&apos;, &apos;No&apos;)&quot;,
      &quot;AddressLine1&quot; : &quot;%UpdateAddresses:NewAddressLine1Input%&quot;,
      &quot;AddressLine2&quot; : &quot;%UpdateAddresses:NewAddressLine2Input%&quot;,
      &quot;City&quot; : &quot;%UpdateAddresses:NewCityInput%&quot;,
      &quot;State&quot; : &quot;%UpdateAddresses:NewStateInput%&quot;,
      &quot;Country&quot; : &quot;%UpdateAddresses:NewCountryInput%&quot;,
      &quot;PostalCode&quot; : &quot;%UpdateAddresses:NewPostalCodeInput%&quot;
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
        <sequenceNumber>23.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>EnterNewAddressHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock8&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;Enter New Address&lt;/strong&gt;&lt;/p&gt;&quot;,
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
            <name>LineBreak5</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak5&quot;,
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
            <name>LineBreak6</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak6&quot;,
  &quot;padding&quot; : 8,
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
            <name>LineBreak7</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak7&quot;,
  &quot;padding&quot; : 50,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewAddressLine1Input</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Address Line 1&quot;,
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
  &quot;mask&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;minLength&quot; : 0,
  &quot;maxLength&quot; : 255,
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewAddressLine2Input</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;autocomplete&quot; : null,
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;debounceValue&quot; : 0,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;maxLength&quot; : 255,
  &quot;minLength&quot; : 0,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;required&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;Address Line 2&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewCityInput</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;City&quot;,
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
  &quot;mask&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;minLength&quot; : 0,
  &quot;maxLength&quot; : 255,
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewCountryInput</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Country&quot;,
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
  &quot;options&quot; : [ ],
  &quot;optionSource&quot; : {
    &quot;type&quot; : &quot;SObject&quot;,
    &quot;source&quot; : &quot;Contact.FinServ__CountryOfBirth__c&quot;
  },
  &quot;controllingField&quot; : {
    &quot;element&quot; : &quot;&quot;,
    &quot;type&quot; : &quot;&quot;,
    &quot;source&quot; : &quot;&quot;
  },
  &quot;show&quot; : null,
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
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewPostalCodeInput</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Postal Code&quot;,
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
  &quot;mask&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;minLength&quot; : 0,
  &quot;maxLength&quot; : 255,
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NewStateInput</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;autocomplete&quot; : null,
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;debounceValue&quot; : 0,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;placeholder&quot; : &quot;&quot;,
  &quot;maxLength&quot; : 255,
  &quot;minLength&quot; : 0,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
  &quot;mask&quot; : &quot;&quot;,
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
  &quot;label&quot; : &quot;State&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>6.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NoAddressSelectedValidation</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AddressNotSelectedToUpdate&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select at least one address to update.&quot;,
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
            <sequenceNumber>10.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ShowCustomerAddressestoUpdate</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthUpdateProfileShowCustomerAddressestoUpdate&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%AccountAddresses%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>13.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ShowFinancialAddresses</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : null,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;FinancialAddresses&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthUpdateProfileShowFinancialAccountsAddresses&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%FinancialAddresses%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
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
  &quot;text&quot; : &quot;&lt;p&gt;Address Types&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock10</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock10&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;Select addresses to update with the new address&lt;/strong&gt;&lt;/p&gt;&quot;,
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
            <name>TextBlock3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;Financial Accounts&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : null,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;FinancialAddresses&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock9</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock9&quot;,
  &quot;text&quot; : &quot;&lt;hr style=\&quot;margin-top: 20px; margin-bottom: 20px;\&quot; /&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>UpdateAddressShowAccountDetails</name>
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
  &quot;lwcName&quot; : &quot;cfFSCWlthServiceProcessShowAccountDetails&quot;,
  &quot;bStandalone&quot; : false,
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
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>UpdateAddresses</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Update Address&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Next&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;Are you sure?&quot;,
  &quot;saveLabel&quot; : &quot;Save for later&quot;,
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
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectDetailsToUpdate:Address&quot;
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
        <sequenceNumber>19.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>ValidateOptionsSelected</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;ValidateName&quot; : &quot;=IF(%accounts:name% == CONCATENATE(%SelectDetailsToUpdate:NewFirstNameInput%,&apos; &apos;,%SelectDetailsToUpdate:NewLastNameInput%), true, false)&quot;,
    &quot;ValidateMaritalStatus&quot; : &quot;=IF(%accounts:maritalStatus% == %SelectDetailsToUpdate:NewMaritalStatus%, true, false)&quot;,
    &quot;ValidateEmail&quot; : &quot;=IF(%accounts:email% == %SelectDetailsToUpdate:NewEmailInput%, true, false)&quot;,
    &quot;ValidatePhone&quot; : &quot;=IF(%accounts:phone% == CONCATENATE(%SelectDetailsToUpdate:PhoneCountryCode%,%SelectDetailsToUpdate:NewPhoneValue%),true,false)&quot;,
    &quot;ValidateMobile&quot; : &quot;=IF(%accounts:mobile% == CONCATENATE(%SelectDetailsToUpdate:MobileCountryCode%,%SelectDetailsToUpdate:NewMobileValue%),true,false)&quot;,
    &quot;ValidateEmployerName&quot; : &quot;=IF(%accounts:currentEmployer% == %SelectDetailsToUpdate:NewEmployerName%,true,false)&quot;,
    &quot;ValidateOccupation&quot; : &quot;=IF(%accounts:occupation% == %SelectDetailsToUpdate:NewOccupation%,true,false)&quot;,
    &quot;AtleastOneOptionSelected&quot; : &quot;=IF(%Name%=true || %Address%=true || %Email%=true || %Phone%=true || %Mobile%=true || %MaritalStatus%=true || %EmployerName%=true || %Occupation%=true, true, false)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>6.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessType>OmniScript</omniProcessType>
    <propertySetConfig>{&quot;persistentComponent&quot;:[{&quot;render&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;sendJSONPath&quot;:&quot;&quot;,&quot;sendJSONNode&quot;:&quot;&quot;,&quot;responseJSONPath&quot;:&quot;&quot;,&quot;responseJSONNode&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcCart&quot;,&quot;itemsKey&quot;:&quot;cartItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;vlcProductConfig.html&quot;,&quot;modalController&quot;:&quot;ModalProductCtrl&quot;,&quot;modalSize&quot;:&quot;lg&quot;}},{&quot;render&quot;:false,&quot;dispOutsideOmni&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcKnowledge&quot;,&quot;itemsKey&quot;:&quot;knowledgeItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;&quot;,&quot;modalController&quot;:&quot;&quot;,&quot;modalSize&quot;:&quot;lg&quot;}}],&quot;allowSaveForLater&quot;:false,&quot;saveNameTemplate&quot;:null,&quot;saveExpireInDays&quot;:null,&quot;saveForLaterRedirectPageName&quot;:&quot;sflRedirect&quot;,&quot;saveForLaterRedirectTemplateUrl&quot;:&quot;vlcSaveForLaterAcknowledge.html&quot;,&quot;saveContentEncoded&quot;:false,&quot;saveObjectId&quot;:&quot;%ContextId%&quot;,&quot;saveURLPatterns&quot;:{},&quot;autoSaveOnStepNext&quot;:false,&quot;elementTypeToHTMLTemplateMapping&quot;:{},&quot;seedDataJSON&quot;:{},&quot;trackingCustomData&quot;:{},&quot;enableKnowledge&quot;:false,&quot;bLK&quot;:false,&quot;lkObjName&quot;:null,&quot;knowledgeArticleTypeQueryFieldsMap&quot;:{},&quot;timeTracking&quot;:false,&quot;hideStepChart&quot;:false,&quot;mergeSavedData&quot;:false,&quot;visualforcePagesAvailableInPreview&quot;:{},&quot;cancelType&quot;:&quot;SObject&quot;,&quot;allowCancel&quot;:true,&quot;cancelSource&quot;:&quot;%ContextId%&quot;,&quot;cancelRedirectPageName&quot;:&quot;OmniScriptCancelled&quot;,&quot;cancelRedirectTemplateUrl&quot;:&quot;vlcCancelled.html&quot;,&quot;consoleTabLabel&quot;:&quot;New&quot;,&quot;wpm&quot;:false,&quot;ssm&quot;:false,&quot;message&quot;:{},&quot;pubsub&quot;:false,&quot;autoFocus&quot;:false,&quot;currencyCode&quot;:&quot;&quot;,&quot;showInputWidth&quot;:false,&quot;rtpSeed&quot;:false,&quot;consoleTabTitle&quot;:&quot;Update Profile&quot;,&quot;consoleTabIcon&quot;:&quot;custom:custom18&quot;,&quot;errorMessage&quot;:{&quot;custom&quot;:[]},&quot;stylesheet&quot;:{&quot;newport&quot;:&quot;&quot;,&quot;lightning&quot;:&quot;FSCWlthUpdateProfileCSS&quot;,&quot;newportRtl&quot;:&quot;&quot;,&quot;lightningRtl&quot;:&quot;&quot;},&quot;stepChartPlacement&quot;:&quot;right&quot;,&quot;disableUnloadWarn&quot;:true,&quot;scrollBehavior&quot;:&quot;auto&quot;,&quot;currentLanguage&quot;:&quot;en_US&quot;}</propertySetConfig>
    <subType>UpdateProfile</subType>
    <type>FSCWlth</type>
    <uniqueName>FSCWlth_UpdateProfile_English_2</uniqueName>
    <versionNumber>2.0</versionNumber>
    <webComponentKey>da23cf99-fe33-5dcf-b8d7-ed410351a365</webComponentKey>
</OmniScript>
