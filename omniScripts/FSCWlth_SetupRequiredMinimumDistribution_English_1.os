<?xml version="1.0" encoding="UTF-8"?>
<OmniScript xmlns="http://soap.sforce.com/2006/04/metadata">
    <elementTypeComponentMapping>{&quot;ElementTypeToHTMLTemplateList&quot;:[]}</elementTypeComponentMapping>
    <isActive>false</isActive>
    <isIntegrationProcedure>false</isIntegrationProcedure>
    <isMetadataCacheDisabled>false</isMetadataCacheDisabled>
    <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
    <isTestProcedure>false</isTestProcedure>
    <isWebCompEnabled>true</isWebCompEnabled>
    <language>English</language>
    <name>FSCWlthSetupRequiredMinimumDistributionEnglish</name>
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
  &quot;sendJSONPath&quot; : &quot;DocumentsUpload&quot;,
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
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectPaymentOption:PaymentOption&quot;
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
        <sequenceNumber>21.0</sequenceNumber>
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
  &quot;remoteClass&quot; : &quot;FSCWlthRequiredMinimumDistributionHelper&quot;,
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
    &quot;svcCatalogItemDefApiName&quot; : &quot;FSCWlth_SetupRequiredMinimumDistribution&quot;,
    &quot;caseSubject&quot; : &quot;%accounts:name% - Setup Required Minimum Distribution Service Request&quot;,
    &quot;isCommunitySite&quot; : &quot;%isCommunitySite%&quot;,
    &quot;financialAccName&quot; : &quot;%SelectedAccountName%&quot;,
    &quot;financialAccId&quot; : &quot;%SelectedAccountId%&quot;,
    &quot;financialAccNumber&quot; : &quot;%SelectedAccountNumber%&quot;,
    &quot;paymentSchedule&quot; : &quot;%Summary:PaymentSchedule%&quot;,
    &quot;automatedRMDOption&quot; : &quot;%Summary:AutomatedPaymentOption%&quot;,
    &quot;automatedRMDDate&quot; : &quot;%Summary:AutomatedPaymentsDate%&quot;,
    &quot;taxYear&quot; : &quot;%Summary:TaxYear%&quot;,
    &quot;amountOption&quot; : &quot;%SelectPaymentSchedule:OnetimeRMDAmount%&quot;,
    &quot;amount&quot; : &quot;%SelectPaymentSchedule:AmountBlock:Amount%&quot;,
    &quot;currencyCode&quot; : &quot;%SelectPaymentSchedule:AmountBlock:CurrencyCode%&quot;,
    &quot;paymentOption&quot; : &quot;%Summary:PaymentOption%&quot;,
    &quot;taxWithholdOption&quot; : &quot;%Summary:TaxWithholdingOption%&quot;,
    &quot;fedral&quot; : &quot;%Summary:TaxWithholdingShareFederal%&quot;,
    &quot;state&quot; : &quot;%Summary:TaxWithholdingShareState%&quot;,
    &quot;ownersState&quot; : &quot;%Summary:TaxWithholdingState%&quot;,
    &quot;payeeName&quot; : &quot;%Summary:CheckDetails:CheckPayeeName%&quot;,
    &quot;bankAccountNumber&quot; : &quot;%Summary:BankAccountNumber%&quot;,
    &quot;bankRoutingNumber&quot; : &quot;%Summary:BankRoutingNumber%&quot;,
    &quot;bankAccountType&quot; : &quot;%Summary:BankAccountType%&quot;,
    &quot;bankAccHolderName&quot; : &quot;%Summary:BankAccountOwner%&quot;,
    &quot;bankName&quot; : &quot;%Summary:BankName%&quot;,
    &quot;bankAddress&quot; : &quot;%Summary:BankAddress%&quot;,
    &quot;bankZipcode&quot; : &quot;%Summary:BankZipcode%&quot;,
    &quot;documentInfo&quot; : &quot;%Summary:NewEFTFileDetails%&quot;,
    &quot;bankCity&quot; : &quot;%Summary:BankCity%&quot;,
    &quot;bankState&quot; : &quot;%Summary:BankState%&quot;,
    &quot;bankCountry&quot; : &quot;%Summary:BankCountry%&quot;
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
        &quot;field&quot; : &quot;NoAccountsFound&quot;
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
        <sequenceNumber>24.0</sequenceNumber>
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
  &quot;label&quot; : &quot;Get Account Details&quot;,
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
        <sequenceNumber>1.0</sequenceNumber>
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      } ]
    }
  }
}</propertySetConfig>
        <sequenceNumber>28.0</sequenceNumber>
        <type>OmniScript</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetBankAccountDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;sendOnlyExtraPayload&quot; : true,
  &quot;businessEvent&quot; : &quot;&quot;,
  &quot;businessCategory&quot; : &quot;&quot;,
  &quot;enableActionMessage&quot; : false,
  &quot;enableDefaultAbort&quot; : false,
  &quot;errorMessage&quot; : {
    &quot;default&quot; : null,
    &quot;custom&quot; : [ ]
  },
  &quot;svgIcon&quot; : &quot;&quot;,
  &quot;svgSprite&quot; : &quot;&quot;,
  &quot;pubsub&quot; : false,
  &quot;message&quot; : { },
  &quot;ssm&quot; : false,
  &quot;wpm&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoAccountsFound&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;redirectPreviousWidth&quot; : 3,
  &quot;redirectPreviousLabel&quot; : &quot;Previous&quot;,
  &quot;redirectNextWidth&quot; : 3,
  &quot;redirectNextLabel&quot; : &quot;Next&quot;,
  &quot;redirectTemplateUrl&quot; : &quot;vlcAcknowledge.html&quot;,
  &quot;redirectPageName&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;failureAbortMessage&quot; : &quot;Are you sure?&quot;,
  &quot;failureGoBackLabel&quot; : &quot;Go Back&quot;,
  &quot;failureAbortLabel&quot; : &quot;Abort&quot;,
  &quot;failureNextLabel&quot; : &quot;Continue&quot;,
  &quot;postMessage&quot; : &quot;Done&quot;,
  &quot;inProgressMessage&quot; : &quot;In Progress&quot;,
  &quot;extraPayload&quot; : {
    &quot;recordId&quot; : &quot;%SelectedAccountId%&quot;,
    &quot;sourceSystemId&quot; : &quot;%SelectedAccountSourceSystemId%&quot;
  },
  &quot;responseJSONNode&quot; : &quot;&quot;,
  &quot;responseJSONPath&quot; : &quot;&quot;,
  &quot;sendJSONNode&quot; : &quot;&quot;,
  &quot;sendJSONPath&quot; : &quot;&quot;,
  &quot;postTransformBundle&quot; : &quot;&quot;,
  &quot;preTransformBundle&quot; : &quot;&quot;,
  &quot;remoteTimeout&quot; : 30000,
  &quot;remoteOptions&quot; : {
    &quot;chainable&quot; : false,
    &quot;useFuture&quot; : false,
    &quot;postTransformBundle&quot; : &quot;&quot;,
    &quot;preTransformBundle&quot; : &quot;&quot;
  },
  &quot;useContinuation&quot; : true,
  &quot;integrationProcedureKey&quot; : &quot;FSCWlth_RequiredMinimumDistributionGetBankAccountDetails&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>12.0</sequenceNumber>
        <type>Integration Procedure Action</type>
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
    &quot;ProcessName&quot; : &quot;FSCWlth_SetupRequiredMinimumDistribution&quot;
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
        &quot;field&quot; : &quot;NoAccountsFound&quot;
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
        <sequenceNumber>11.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetFinancialAccounts</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Get Financial Accounts&quot;,
  &quot;integrationProcedureKey&quot; : &quot;FSCWlthSetupRequiredMinimumDistribution_GetFinancialAccounts&quot;,
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
        <sequenceNumber>2.0</sequenceNumber>
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
  &quot;sendJSONPath&quot; : &quot;DocumentsUpload&quot;,
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
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectPaymentOption:PaymentOption&quot;
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
        <sequenceNumber>19.0</sequenceNumber>
        <type>Remote Action</type>
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
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak11</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak11&quot;,
  &quot;padding&quot; : 5,
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
            <name>LineBreak12</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 5,
  &quot;label&quot; : &quot;LineBreak11&quot;
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak13</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak11&quot;,
  &quot;padding&quot; : 5,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>28.0</sequenceNumber>
            <type>Line Break</type>
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
  &quot;padding&quot; : 5,
  &quot;label&quot; : &quot;LineBreak11&quot;
}</propertySetConfig>
            <sequenceNumber>34.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak15</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak11&quot;,
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
            <name>ReviewSummary_ShowAccountDetails</name>
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
            <name>ReviewSummaryDisplaySummaryScript</name>
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
  &quot;lwcName&quot; : &quot;cfFSCWlthSetupRequiredMinimumDistributionSummaryScript&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%Summary%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
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
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthServiceProcessShowUploadedDocuments&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%Summary:NewEFTFileDetails%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>36.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SummarySelectedAccountHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock11&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444: font-size:12px;\&quot;&gt;Selected Account : &lt;span style=\&quot;font-weight: bold;\&quot;&gt;%SelectedAccount%&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>1.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SummaryShowPaymentOptionHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock11&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444: font-size:12px;\&quot;&gt;&lt;span style=\&quot;font-weight: bold;\&quot;&gt;Payment Method&lt;/span&gt;&lt;/p&gt;&quot;,
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
            <name>SummaryShowPaymentScheduleHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444: font-size:12px;\&quot;&gt;&lt;span style=\&quot;font-weight: bold;\&quot;&gt;Payment Schedule&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock11&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SummaryShowTaxWithholdingHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444: font-size:12px;\&quot;&gt;&lt;span style=\&quot;font-weight: bold;\&quot;&gt;Tax Withholding Details&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock11&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>29.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SummaryShowUploadedDocumentHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock11&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;color: #444444: font-size:12px;\&quot;&gt;&lt;span style=\&quot;font-weight: bold;\&quot;&gt;Uploaded Documents&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>35.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock13</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Selected Schedule&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:PaymentSchedule%&lt;/p&gt;&quot;,
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
            <name>TextBlock14</name>
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
        &quot;data&quot; : &quot;Automated RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentSchedule&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Payment Frequency&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:AutomatedPaymentOption%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock15</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Start Date&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:AutomatedPaymentsDate%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:PaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Automated RMD&quot;
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
            <name>TextBlock17</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Tax Year&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:TaxYear%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:PaymentSchedule&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Automated RMD&quot;
      } ]
    }
  },
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
            <name>TextBlock18</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Automated RMD&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;Summary:PaymentSchedule&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;RMD Amount&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:Amount%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock20</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Selected Option&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:PaymentOption%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>13.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock21</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Account Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:ExistingEFTAccountDetails:AccountNumber%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Existing EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
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
            <name>TextBlock22</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Existing EFT Account&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Routing Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:ExistingEFTAccountDetails:RoutingNumber%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock23</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Payee Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:ExistingEFTAccountDetails:AccountOwner%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Existing EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
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
            <name>TextBlock24</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Existing EFT Account&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Bank Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:ExistingEFTAccountDetails:BankFirmName%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock25</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Ownership Type&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:ExistingEFTAccountDetails:AccountType%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Existing EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
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
            <name>TextBlock26</name>
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
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;New EFT Account&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Payee Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewEFTDetails:TemporaryEFTAccountHolderName%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock27</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Account Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewEFTDetails:TemporaryEFTAccountNumber%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>20.0</sequenceNumber>
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
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;New EFT Account&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Routing Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewEFTDetails:TemporaryEFTRoutingNumber%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>21.0</sequenceNumber>
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
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Account Type&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewEFTDetails:TemporaryEFTAccountType%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>22.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock30</name>
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
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;New EFT Account&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Bank Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewEFTDetails:TemporaryEFTBankName%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>23.0</sequenceNumber>
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
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Bank Address&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:NewEFTFullAddress%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>24.0</sequenceNumber>
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
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Check&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Payee Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CheckDetails:CheckPayeeName%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>25.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock33</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Bank Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CheckDetails:CheckBankName%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Check&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;
      } ],
      &quot;operator&quot; : &quot;AND&quot;
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
            <name>TextBlock34</name>
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
        &quot;field&quot; : &quot;Summary:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Check&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Bank Address&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:CheckFullAddress%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>27.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock37</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Selected Withholding Option&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:TaxWithholdingOption%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>30.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock38</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;State of Residence&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:TaxWithholdingState%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:TaxWithholdingOption&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>31.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock39</name>
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
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:TaxWithholdingOption&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Federal Share&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:TaxWithholdingShareFederal%%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>32.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock40</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock13&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;State Share&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%Summary:TaxWithholdingShareState%%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;Summary:TaxWithholdingOption&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>33.0</sequenceNumber>
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
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
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
        <sequenceNumber>23.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak1</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak1&quot;,
  &quot;padding&quot; : 12,
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
            <name>LineBreak2</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak2&quot;,
  &quot;padding&quot; : 100,
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
            <name>SelectAnAccount_ShowAccountDetails</name>
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
            <name>ShowFinancialAccounts</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthSetupRequiredMinDistributionShowFinancialAccounts&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%FAs%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ShowRetirementAccountHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock1&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;padding-left: 7px;\&quot;&gt;&lt;strong&gt;Retirement Accounts&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
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
            <name>ValidateFinancialAccountSelection</name>
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
        &quot;field&quot; : &quot;IsAccountSelected&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select an account&quot;,
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
        <name>SelectAnAccount</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Select an Account&quot;,
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
        <sequenceNumber>4.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CheckBankAddress</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Bank Address&quot;,
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
  &quot;placeholder&quot; : &quot;Enter address...&quot;,
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
                <level>2.0</level>
                <name>CheckBankCity</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Bank City&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : false,
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
  &quot;placeholder&quot; : &quot;Enter city...&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
                <sequenceNumber>4.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CheckBankCountry</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Bank Country&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : false,
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
                <sequenceNumber>6.0</sequenceNumber>
                <type>Select</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CheckBankName</name>
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
  &quot;placeholder&quot; : &quot;Enter name...&quot;,
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
  &quot;label&quot; : &quot;Bank Name&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>2.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CheckBankPostalCode</name>
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
  &quot;placeholder&quot; : &quot;Enter postal code...&quot;,
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
  &quot;label&quot; : &quot;Bank Postal Code&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>7.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CheckBankState</name>
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
  &quot;placeholder&quot; : &quot;Enter state...&quot;,
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
  &quot;label&quot; : &quot;Bank State&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>5.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CheckPayeeName</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Payee&quot;,
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
  &quot;placeholder&quot; : &quot;Enter payee name...&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
                <sequenceNumber>1.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>SelectPaymentOptionShowDisclaimerForCheckOption</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthServiceProcessShowDisclaimer&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-attribute&quot;,
    &quot;source&quot; : &quot;%HelpTextForCheck%&quot;
  } ]
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Custom Lightning Web Component</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CheckBlock</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Check&quot;
      } ]
    }
  },
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;collapse&quot; : false,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>DocumentType</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
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
  &quot;callFrequency&quot; : &quot;300&quot;,
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
            <name>DocumentsUpload</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;collapse&quot; : false,
  &quot;repeat&quot; : true,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;PaymentOption&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>ExistingEFTAccountName</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock9&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Account Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%BankAccountDetails:AccountNumber%&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>ExistingEFTAccountOwner</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Payee Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%BankAccountDetails:AccountOwner%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock9&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>2.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>ExistingEFTAccountType</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Ownership Type&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%BankAccountDetails:AccountType%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock9&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>4.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>ExistingEFTBankFirmName</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock9&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Bank Name&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%BankAccountDetails:BankFirmName%&lt;/p&gt;&quot;,
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
                <level>2.0</level>
                <name>ExistingEFTRoutingNumber</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; color: #444444; padding-bottom: 4px; padding-top: 7px;\&quot;&gt;Routing Number&lt;/p&gt;\n&lt;p style=\&quot;font-size: 13px; color: #444444; padding-bottom: 7px;\&quot;&gt;%BankAccountDetails:RoutingNumber%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock9&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>1.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ExistingEFTBlock</name>
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
        &quot;data&quot; : &quot;Existing EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;PaymentOption&quot;
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
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>FederalPercentage</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Federal Share (%)&quot;,
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
  &quot;placeholder&quot; : &quot;Enter a value…&quot;,
  &quot;mask&quot; : null,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TaxWithholdingOption&quot;
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
            <sequenceNumber>14.0</sequenceNumber>
            <type>Number</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>FederalStateConsolidatedPercentageValidation</name>
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
        &quot;field&quot; : &quot;FederalStatePercentageExceededIndicator&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;The sum of federal and state percent must not exceed 100%.&quot;,
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
            <sequenceNumber>12.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>FederalStateNegativePercentageValidation</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;hideLabel&quot; : true,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Federal/State percent must be greater than or equal to 0.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;FederalStateNegativePercentageIndicator&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>13.0</sequenceNumber>
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
  &quot;padding&quot; : 100,
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
            <name>LineBreak16</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TaxWithholdingOption&quot;
      } ]
    }
  },
  &quot;padding&quot; : 80,
  &quot;label&quot; : &quot;LineBreak10&quot;
}</propertySetConfig>
            <sequenceNumber>18.0</sequenceNumber>
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
            <name>LineBreak8</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 5,
  &quot;label&quot; : &quot;LineBreak7&quot;
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak9</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak7&quot;,
  &quot;padding&quot; : 20,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Existing EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;PaymentOption&quot;
      }, {
        &quot;field&quot; : &quot;PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Check&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>6.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>OwnersState</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 4,
  &quot;label&quot; : &quot;State of Residence&quot;,
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
    &quot;name&quot; : &quot;Alabama&quot;,
    &quot;value&quot; : &quot;Alabama&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Alaska&quot;,
    &quot;value&quot; : &quot;Alaska&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Arizona&quot;,
    &quot;value&quot; : &quot;Arizona&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Arkansas&quot;,
    &quot;value&quot; : &quot;Arkansas&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;California&quot;,
    &quot;value&quot; : &quot;California&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Colorado&quot;,
    &quot;value&quot; : &quot;Colorado&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Connecticut&quot;,
    &quot;value&quot; : &quot;Connecticut&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Delaware&quot;,
    &quot;value&quot; : &quot;Delaware&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Florida&quot;,
    &quot;value&quot; : &quot;Florida&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Georgia&quot;,
    &quot;value&quot; : &quot;Georgia&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Hawaii&quot;,
    &quot;value&quot; : &quot;Hawaii&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Idaho&quot;,
    &quot;value&quot; : &quot;Idaho&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Illinois&quot;,
    &quot;value&quot; : &quot;Illinois&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Indiana&quot;,
    &quot;value&quot; : &quot;Indiana&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Iowa&quot;,
    &quot;value&quot; : &quot;Iowa&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Kansas&quot;,
    &quot;value&quot; : &quot;Kansas&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Kentucky&quot;,
    &quot;value&quot; : &quot;Kentucky&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Louisiana&quot;,
    &quot;value&quot; : &quot;Louisiana&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Maine&quot;,
    &quot;value&quot; : &quot;Maine&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Maryland&quot;,
    &quot;value&quot; : &quot;Maryland&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Massachusetts&quot;,
    &quot;value&quot; : &quot;Massachusetts&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Michigan&quot;,
    &quot;value&quot; : &quot;Michigan&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Minnesota&quot;,
    &quot;value&quot; : &quot;Minnesota&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Mississippi&quot;,
    &quot;value&quot; : &quot;Mississippi&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Missouri&quot;,
    &quot;value&quot; : &quot;Missouri&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Montana&quot;,
    &quot;value&quot; : &quot;Montana&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Nebraska&quot;,
    &quot;value&quot; : &quot;Nebraska&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Nevada&quot;,
    &quot;value&quot; : &quot;Nevada&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;New Hampshire&quot;,
    &quot;value&quot; : &quot;New Hampshire&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;New Jersey&quot;,
    &quot;value&quot; : &quot;New Jersey&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;New Mexico&quot;,
    &quot;value&quot; : &quot;New Mexico&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;New York&quot;,
    &quot;value&quot; : &quot;New York&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;North Carolina&quot;,
    &quot;value&quot; : &quot;North Carolina&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;North Dakota&quot;,
    &quot;value&quot; : &quot;North Dakota&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Ohio&quot;,
    &quot;value&quot; : &quot;Ohio&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Oklahoma&quot;,
    &quot;value&quot; : &quot;Oklahoma&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Oregon&quot;,
    &quot;value&quot; : &quot;Oregon&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Pennsylvania&quot;,
    &quot;value&quot; : &quot;Pennsylvania&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Rhode Island&quot;,
    &quot;value&quot; : &quot;Rhode Island&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;South Carolina&quot;,
    &quot;value&quot; : &quot;South Carolina&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;South Dakota&quot;,
    &quot;value&quot; : &quot;South Dakota&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Tennessee&quot;,
    &quot;value&quot; : &quot;Tennessee&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Texas&quot;,
    &quot;value&quot; : &quot;Texas&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Utah&quot;,
    &quot;value&quot; : &quot;Utah&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Vermont&quot;,
    &quot;value&quot; : &quot;Vermont&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Virginia&quot;,
    &quot;value&quot; : &quot;Virginia&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Washington&quot;,
    &quot;value&quot; : &quot;Washington&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;West Virginia&quot;,
    &quot;value&quot; : &quot;West Virginia&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Wisconsin&quot;,
    &quot;value&quot; : &quot;Wisconsin&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Wyoming&quot;,
    &quot;value&quot; : &quot;Wyoming&quot;,
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
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TaxWithholdingOption&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
            <type>Select</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>PaymentOption</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Payment Method&quot;,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : true,
  &quot;defaultValue&quot; : &quot;Existing EFT Account&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;Existing EFT Account&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Linked EFT Account&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;New EFT Account&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Temporary EFT Account&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Check&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Check&quot;,
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
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;optionWidth&quot; : 100,
  &quot;optionHeight&quot; : 100,
  &quot;imageCountInRow&quot; : 3,
  &quot;enableCaption&quot; : true,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>2.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectPaymentOption_ShowAccountDetails</name>
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
            <name>StatePercentage</name>
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
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TaxWithholdingOption&quot;
      } ]
    }
  },
  &quot;mask&quot; : &quot;0[00]&quot;,
  &quot;placeholder&quot; : &quot;Enter a value…&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
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
  &quot;label&quot; : &quot;State Share (%)&quot;,
  &quot;controlWidth&quot; : 2
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Number</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TaxWithholdingOption</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Withholding Option:&quot;,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : false,
  &quot;defaultValue&quot; : &quot;Elect not to have federal or state&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;Elect not to have federal or state&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;I elect not to have federal income tax, and if applicable, state income tax, withheld from the distribution amount.&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Elect to have federal and state&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;I elect to have federal income tax, and if applicable, state income tax, withheld from the distribution amount.&quot;,
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
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;optionWidth&quot; : 100,
  &quot;optionHeight&quot; : 100,
  &quot;imageCountInRow&quot; : 3,
  &quot;enableCaption&quot; : true,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>OnlyOneDocumentAllowedForUpload</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
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
    &quot;text&quot; : &quot;You can upload only one document.&quot;,
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
                <sequenceNumber>12.0</sequenceNumber>
                <type>Validation</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTAccountHolderName</name>
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
  &quot;placeholder&quot; : &quot;Enter payee name...&quot;,
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
  &quot;label&quot; : &quot;Payee Name&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTAccountNumber</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Account Number&quot;,
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
  &quot;placeholder&quot; : &quot;Enter account number...&quot;,
  &quot;mask&quot; : null,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
                <sequenceNumber>2.0</sequenceNumber>
                <type>Number</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTAccountType</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Account Type&quot;,
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
    &quot;name&quot; : &quot;Savings&quot;,
    &quot;value&quot; : &quot;Savings&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Checking&quot;,
    &quot;value&quot; : &quot;Checking&quot;,
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
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
                <sequenceNumber>1.0</sequenceNumber>
                <type>Select</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTBankAddress</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Bank Address&quot;,
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
  &quot;placeholder&quot; : &quot;Enter address...&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
                <sequenceNumber>6.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTBankCity</name>
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
  &quot;placeholder&quot; : &quot;Enter city...&quot;,
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
  &quot;label&quot; : &quot;Bank City&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>7.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTBankCountry</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;controllingField&quot; : {
    &quot;source&quot; : &quot;&quot;,
    &quot;type&quot; : &quot;&quot;,
    &quot;element&quot; : &quot;&quot;
  },
  &quot;optionSource&quot; : {
    &quot;source&quot; : &quot;Contact.FinServ__CountryOfBirth__c&quot;,
    &quot;type&quot; : &quot;SObject&quot;
  },
  &quot;options&quot; : [ ],
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
  &quot;label&quot; : &quot;Bank Country&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>9.0</sequenceNumber>
                <type>Select</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTBankName</name>
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
  &quot;placeholder&quot; : &quot;Enter name...&quot;,
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
  &quot;label&quot; : &quot;Bank Name&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>5.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTBankPostalCode</name>
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
  &quot;placeholder&quot; : &quot;Enter postal code...&quot;,
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
  &quot;label&quot; : &quot;Bank Postal Code&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>10.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTBankState</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Bank State&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : false,
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
  &quot;placeholder&quot; : &quot;Enter state...&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
                <sequenceNumber>8.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTReEnterAccountNumber</name>
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
  &quot;mask&quot; : null,
  &quot;placeholder&quot; : &quot;Re-enter account number...&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
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
  &quot;label&quot; : &quot;Re-enter Account Number&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>3.0</sequenceNumber>
                <type>Number</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TemporaryEFTRoutingNumber</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Routing Number&quot;,
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
  &quot;placeholder&quot; : &quot;Enter routing Number...&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
                <sequenceNumber>4.0</sequenceNumber>
                <type>Text</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>TextBlock10</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;hr style=\&quot;margin-top: 15px; margin-bottom: 15px;\&quot; /&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock9&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
                <sequenceNumber>11.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>UplaodDocumentHeader</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock1&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-size: 12px; margin-top: 5px;\&quot;&gt;&lt;strong&gt;Upload Required Documents&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
                <sequenceNumber>13.0</sequenceNumber>
                <type>Text Block</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TemporaryEFTBlock</name>
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
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;PaymentOption&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Block</type>
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
  &quot;text&quot; : &quot;&lt;hr style=\&quot;margin-top: 15px; margin-bottom: 15px;\&quot; /&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Text Block</type>
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
  &quot;lwcName&quot; : &quot;cfFSCWlthSetupRequiredMinimumDistributionShowValidDocumentTypes&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ ]
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Custom Lightning Web Component</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidDocumentTypes</name>
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
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;PaymentOption&quot;
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
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SelectPaymentOption</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Select Payment Option&quot;,
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
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
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
        <sequenceNumber>13.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>Amount</name>
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
  &quot;mask&quot; : null,
  &quot;placeholder&quot; : &quot;Enter an amount...&quot;,
  &quot;ptrnErrText&quot; : &quot;&quot;,
  &quot;pattern&quot; : &quot;&quot;,
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
  &quot;label&quot; : &quot;Amount&quot;,
  &quot;controlWidth&quot; : 3
}</propertySetConfig>
                <sequenceNumber>1.0</sequenceNumber>
                <type>Number</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CashBalanceText</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock1&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;(Available Balance: %userCurrencyCode% %SelectedCashBalance%)&lt;/p&gt;&quot;,
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
                <level>2.0</level>
                <name>CurrencyCode</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Currency&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : &quot;USD&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;AED&quot;,
    &quot;value&quot; : &quot;AED&quot;
  }, {
    &quot;name&quot; : &quot;AFN&quot;,
    &quot;value&quot; : &quot;AFN&quot;
  }, {
    &quot;name&quot; : &quot;ALL&quot;,
    &quot;value&quot; : &quot;ALL&quot;
  }, {
    &quot;name&quot; : &quot;AMD&quot;,
    &quot;value&quot; : &quot;AMD&quot;
  }, {
    &quot;name&quot; : &quot;ARS&quot;,
    &quot;value&quot; : &quot;ARS&quot;
  }, {
    &quot;name&quot; : &quot;AUD&quot;,
    &quot;value&quot; : &quot;AUD&quot;
  }, {
    &quot;name&quot; : &quot;AZN&quot;,
    &quot;value&quot; : &quot;AZN&quot;
  }, {
    &quot;name&quot; : &quot;BAM&quot;,
    &quot;value&quot; : &quot;BAM&quot;
  }, {
    &quot;name&quot; : &quot;BDT&quot;,
    &quot;value&quot; : &quot;BDT&quot;
  }, {
    &quot;name&quot; : &quot;BGN&quot;,
    &quot;value&quot; : &quot;BGN&quot;
  }, {
    &quot;name&quot; : &quot;BHD&quot;,
    &quot;value&quot; : &quot;BHD&quot;
  }, {
    &quot;name&quot; : &quot;BIF&quot;,
    &quot;value&quot; : &quot;BIF&quot;
  }, {
    &quot;name&quot; : &quot;BND&quot;,
    &quot;value&quot; : &quot;BND&quot;
  }, {
    &quot;name&quot; : &quot;BOB&quot;,
    &quot;value&quot; : &quot;BOB&quot;
  }, {
    &quot;name&quot; : &quot;BRL&quot;,
    &quot;value&quot; : &quot;BRL&quot;
  }, {
    &quot;name&quot; : &quot;BWP&quot;,
    &quot;value&quot; : &quot;BWP&quot;
  }, {
    &quot;name&quot; : &quot;BYN&quot;,
    &quot;value&quot; : &quot;BYN&quot;
  }, {
    &quot;name&quot; : &quot;BZD&quot;,
    &quot;value&quot; : &quot;BZD&quot;
  }, {
    &quot;name&quot; : &quot;CAD&quot;,
    &quot;value&quot; : &quot;CAD&quot;
  }, {
    &quot;name&quot; : &quot;CDF&quot;,
    &quot;value&quot; : &quot;CDF&quot;
  }, {
    &quot;name&quot; : &quot;CHF&quot;,
    &quot;value&quot; : &quot;CHF&quot;
  }, {
    &quot;name&quot; : &quot;CLP&quot;,
    &quot;value&quot; : &quot;CLP&quot;
  }, {
    &quot;name&quot; : &quot;CNY&quot;,
    &quot;value&quot; : &quot;CNY&quot;
  }, {
    &quot;name&quot; : &quot;COP&quot;,
    &quot;value&quot; : &quot;COP&quot;
  }, {
    &quot;name&quot; : &quot;CRC&quot;,
    &quot;value&quot; : &quot;CRC&quot;
  }, {
    &quot;name&quot; : &quot;CVE&quot;,
    &quot;value&quot; : &quot;CVE&quot;
  }, {
    &quot;name&quot; : &quot;CZK&quot;,
    &quot;value&quot; : &quot;CZK&quot;
  }, {
    &quot;name&quot; : &quot;DJF&quot;,
    &quot;value&quot; : &quot;DJF&quot;
  }, {
    &quot;name&quot; : &quot;DKK&quot;,
    &quot;value&quot; : &quot;DKK&quot;
  }, {
    &quot;name&quot; : &quot;DOP&quot;,
    &quot;value&quot; : &quot;DOP&quot;
  }, {
    &quot;name&quot; : &quot;DZD&quot;,
    &quot;value&quot; : &quot;DZD&quot;
  }, {
    &quot;name&quot; : &quot;EEK&quot;,
    &quot;value&quot; : &quot;EEK&quot;
  }, {
    &quot;name&quot; : &quot;EGP&quot;,
    &quot;value&quot; : &quot;EGP&quot;
  }, {
    &quot;name&quot; : &quot;ERN&quot;,
    &quot;value&quot; : &quot;ERN&quot;
  }, {
    &quot;name&quot; : &quot;ETB&quot;,
    &quot;value&quot; : &quot;ETB&quot;
  }, {
    &quot;name&quot; : &quot;EUR&quot;,
    &quot;value&quot; : &quot;EUR&quot;
  }, {
    &quot;name&quot; : &quot;GBP&quot;,
    &quot;value&quot; : &quot;GBP&quot;
  }, {
    &quot;name&quot; : &quot;GEL&quot;,
    &quot;value&quot; : &quot;GEL&quot;
  }, {
    &quot;name&quot; : &quot;GHS&quot;,
    &quot;value&quot; : &quot;GHS&quot;
  }, {
    &quot;name&quot; : &quot;GNF&quot;,
    &quot;value&quot; : &quot;GNF&quot;
  }, {
    &quot;name&quot; : &quot;GTQ&quot;,
    &quot;value&quot; : &quot;GTQ&quot;
  }, {
    &quot;name&quot; : &quot;HKD&quot;,
    &quot;value&quot; : &quot;HKD&quot;
  }, {
    &quot;name&quot; : &quot;HNL&quot;,
    &quot;value&quot; : &quot;HNL&quot;
  }, {
    &quot;name&quot; : &quot;HRK&quot;,
    &quot;value&quot; : &quot;HRK&quot;
  }, {
    &quot;name&quot; : &quot;HUF&quot;,
    &quot;value&quot; : &quot;HUF&quot;
  }, {
    &quot;name&quot; : &quot;IDR&quot;,
    &quot;value&quot; : &quot;IDR&quot;
  }, {
    &quot;name&quot; : &quot;ILS&quot;,
    &quot;value&quot; : &quot;ILS&quot;
  }, {
    &quot;name&quot; : &quot;INR&quot;,
    &quot;value&quot; : &quot;INR&quot;
  }, {
    &quot;name&quot; : &quot;IQD&quot;,
    &quot;value&quot; : &quot;IQD&quot;
  }, {
    &quot;name&quot; : &quot;IRR&quot;,
    &quot;value&quot; : &quot;IRR&quot;
  }, {
    &quot;name&quot; : &quot;ISK&quot;,
    &quot;value&quot; : &quot;ISK&quot;
  }, {
    &quot;name&quot; : &quot;JMD&quot;,
    &quot;value&quot; : &quot;JMD&quot;
  }, {
    &quot;name&quot; : &quot;JOD&quot;,
    &quot;value&quot; : &quot;JOD&quot;
  }, {
    &quot;name&quot; : &quot;JPY&quot;,
    &quot;value&quot; : &quot;JPY&quot;
  }, {
    &quot;name&quot; : &quot;KES&quot;,
    &quot;value&quot; : &quot;KES&quot;
  }, {
    &quot;name&quot; : &quot;KHR&quot;,
    &quot;value&quot; : &quot;KHR&quot;
  }, {
    &quot;name&quot; : &quot;KMF&quot;,
    &quot;value&quot; : &quot;KMF&quot;
  }, {
    &quot;name&quot; : &quot;KRW&quot;,
    &quot;value&quot; : &quot;KRW&quot;
  }, {
    &quot;name&quot; : &quot;KWD&quot;,
    &quot;value&quot; : &quot;KWD&quot;
  }, {
    &quot;name&quot; : &quot;KZT&quot;,
    &quot;value&quot; : &quot;KZT&quot;
  }, {
    &quot;name&quot; : &quot;LBP&quot;,
    &quot;value&quot; : &quot;LBP&quot;
  }, {
    &quot;name&quot; : &quot;LKR&quot;,
    &quot;value&quot; : &quot;LKR&quot;
  }, {
    &quot;name&quot; : &quot;LTL&quot;,
    &quot;value&quot; : &quot;LTL&quot;
  }, {
    &quot;name&quot; : &quot;LVL&quot;,
    &quot;value&quot; : &quot;LVL&quot;
  }, {
    &quot;name&quot; : &quot;LYD&quot;,
    &quot;value&quot; : &quot;LYD&quot;
  }, {
    &quot;name&quot; : &quot;MAD&quot;,
    &quot;value&quot; : &quot;MAD&quot;
  }, {
    &quot;name&quot; : &quot;MDL&quot;,
    &quot;value&quot; : &quot;MDL&quot;
  }, {
    &quot;name&quot; : &quot;MGA&quot;,
    &quot;value&quot; : &quot;MGA&quot;
  }, {
    &quot;name&quot; : &quot;MKD&quot;,
    &quot;value&quot; : &quot;MKD&quot;
  }, {
    &quot;name&quot; : &quot;MMK&quot;,
    &quot;value&quot; : &quot;MMK&quot;
  }, {
    &quot;name&quot; : &quot;MOP&quot;,
    &quot;value&quot; : &quot;MOP&quot;
  }, {
    &quot;name&quot; : &quot;MUR&quot;,
    &quot;value&quot; : &quot;MUR&quot;
  }, {
    &quot;name&quot; : &quot;MXN&quot;,
    &quot;value&quot; : &quot;MXN&quot;
  }, {
    &quot;name&quot; : &quot;MYR&quot;,
    &quot;value&quot; : &quot;MYR&quot;
  }, {
    &quot;name&quot; : &quot;MZN&quot;,
    &quot;value&quot; : &quot;MZN&quot;
  }, {
    &quot;name&quot; : &quot;NAD&quot;,
    &quot;value&quot; : &quot;NAD&quot;
  }, {
    &quot;name&quot; : &quot;NGN&quot;,
    &quot;value&quot; : &quot;NGN&quot;
  }, {
    &quot;name&quot; : &quot;NIO&quot;,
    &quot;value&quot; : &quot;NIO&quot;
  }, {
    &quot;name&quot; : &quot;NOK&quot;,
    &quot;value&quot; : &quot;NOK&quot;
  }, {
    &quot;name&quot; : &quot;NPR&quot;,
    &quot;value&quot; : &quot;NPR&quot;
  }, {
    &quot;name&quot; : &quot;NZD&quot;,
    &quot;value&quot; : &quot;NZD&quot;
  }, {
    &quot;name&quot; : &quot;OMR&quot;,
    &quot;value&quot; : &quot;OMR&quot;
  }, {
    &quot;name&quot; : &quot;PAB&quot;,
    &quot;value&quot; : &quot;PAB&quot;
  }, {
    &quot;name&quot; : &quot;PEN&quot;,
    &quot;value&quot; : &quot;PEN&quot;
  }, {
    &quot;name&quot; : &quot;PHP&quot;,
    &quot;value&quot; : &quot;PHP&quot;
  }, {
    &quot;name&quot; : &quot;PKR&quot;,
    &quot;value&quot; : &quot;PKR&quot;
  }, {
    &quot;name&quot; : &quot;PLN&quot;,
    &quot;value&quot; : &quot;PLN&quot;
  }, {
    &quot;name&quot; : &quot;PYG&quot;,
    &quot;value&quot; : &quot;PYG&quot;
  }, {
    &quot;name&quot; : &quot;QAR&quot;,
    &quot;value&quot; : &quot;QAR&quot;
  }, {
    &quot;name&quot; : &quot;RON&quot;,
    &quot;value&quot; : &quot;RON&quot;
  }, {
    &quot;name&quot; : &quot;RSD&quot;,
    &quot;value&quot; : &quot;RSD&quot;
  }, {
    &quot;name&quot; : &quot;RUB&quot;,
    &quot;value&quot; : &quot;RUB&quot;
  }, {
    &quot;name&quot; : &quot;RWF&quot;,
    &quot;value&quot; : &quot;RWF&quot;
  }, {
    &quot;name&quot; : &quot;SAR&quot;,
    &quot;value&quot; : &quot;SAR&quot;
  }, {
    &quot;name&quot; : &quot;SDG&quot;,
    &quot;value&quot; : &quot;SDG&quot;
  }, {
    &quot;name&quot; : &quot;SEK&quot;,
    &quot;value&quot; : &quot;SEK&quot;
  }, {
    &quot;name&quot; : &quot;SGD&quot;,
    &quot;value&quot; : &quot;SGD&quot;
  }, {
    &quot;name&quot; : &quot;SOS&quot;,
    &quot;value&quot; : &quot;SOS&quot;
  }, {
    &quot;name&quot; : &quot;SYP&quot;,
    &quot;value&quot; : &quot;SYP&quot;
  }, {
    &quot;name&quot; : &quot;THB&quot;,
    &quot;value&quot; : &quot;THB&quot;
  }, {
    &quot;name&quot; : &quot;TND&quot;,
    &quot;value&quot; : &quot;TND&quot;
  }, {
    &quot;name&quot; : &quot;TOP&quot;,
    &quot;value&quot; : &quot;TOP&quot;
  }, {
    &quot;name&quot; : &quot;TRY&quot;,
    &quot;value&quot; : &quot;TRY&quot;
  }, {
    &quot;name&quot; : &quot;TTD&quot;,
    &quot;value&quot; : &quot;TTD&quot;
  }, {
    &quot;name&quot; : &quot;TWD&quot;,
    &quot;value&quot; : &quot;TWD&quot;
  }, {
    &quot;name&quot; : &quot;TZS&quot;,
    &quot;value&quot; : &quot;TZS&quot;
  }, {
    &quot;name&quot; : &quot;UAH&quot;,
    &quot;value&quot; : &quot;UAH&quot;
  }, {
    &quot;name&quot; : &quot;UGX&quot;,
    &quot;value&quot; : &quot;UGX&quot;
  }, {
    &quot;name&quot; : &quot;USD&quot;,
    &quot;value&quot; : &quot;USD&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;UYU&quot;,
    &quot;value&quot; : &quot;UYU&quot;
  }, {
    &quot;name&quot; : &quot;UZS&quot;,
    &quot;value&quot; : &quot;UZS&quot;
  }, {
    &quot;name&quot; : &quot;VEF&quot;,
    &quot;value&quot; : &quot;VEF&quot;
  }, {
    &quot;name&quot; : &quot;VND&quot;,
    &quot;value&quot; : &quot;VND&quot;
  }, {
    &quot;name&quot; : &quot;XAF&quot;,
    &quot;value&quot; : &quot;XAF&quot;
  }, {
    &quot;name&quot; : &quot;XOF&quot;,
    &quot;value&quot; : &quot;XOF&quot;
  }, {
    &quot;name&quot; : &quot;YER&quot;,
    &quot;value&quot; : &quot;YER&quot;
  }, {
    &quot;name&quot; : &quot;ZAR&quot;,
    &quot;value&quot; : &quot;ZAR&quot;
  }, {
    &quot;name&quot; : &quot;ZMK&quot;,
    &quot;value&quot; : &quot;ZMK&quot;
  }, {
    &quot;name&quot; : &quot;ZWL&quot;,
    &quot;value&quot; : &quot;ZWL&quot;
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
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Select</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>AmountBlock</name>
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
        &quot;data&quot; : &quot;Enter withdrawal amount&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;OnetimeRMDAmount&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>20.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>AutomatedPaymentsDate</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 4,
  &quot;label&quot; : &quot;Start Date&quot;,
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Automated RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;minDate&quot; : &quot;Today()&quot;,
  &quot;maxDate&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Date</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>AutomatedRMD</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Payment Frequency&quot;,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : false,
  &quot;defaultValue&quot; : &quot;Automated Annual payments&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;Automated Annual payments&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Annually&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Automated Semi-Annual payments&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Half-yearly&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Automated Quarterly payments&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Quarterly&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Automated Monthly payments&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Monthly&quot;,
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
        &quot;data&quot; : &quot;Automated RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;optionWidth&quot; : 100,
  &quot;optionHeight&quot; : 100,
  &quot;imageCountInRow&quot; : 3,
  &quot;enableCaption&quot; : true,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak3&quot;,
  &quot;padding&quot; : 12,
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
            <name>LineBreak4</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 12,
  &quot;label&quot; : &quot;LineBreak3&quot;
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
  &quot;padding&quot; : 10,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      }, {
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;RMD for Missed Years&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
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
  &quot;padding&quot; : 100,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>22.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>OnetimeRMDAmount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;required&quot; : false,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : false,
  &quot;defaultValue&quot; : &quot;Calculate RMD amount&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;Calculate RMD amount&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Auto-calculate&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Enter withdrawal amount&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Enter manually&quot;,
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
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      }, {
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;RMD for Missed Years&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;optionWidth&quot; : 100,
  &quot;optionHeight&quot; : 100,
  &quot;imageCountInRow&quot; : 3,
  &quot;enableCaption&quot; : true,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>OneTimeRMDAmountHeader</name>
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
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;One-time RMD&quot;
      }, {
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;RMD for Missed Years&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;Select RMD Amount&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock6&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>18.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>OneTimeRMDTaxYear</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthSetupRequiredMinimumDistributionOneTimeTaxYear&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%SetTaxYears%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>OnetimeRMDTaxYear</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;A one-time Required Minimum Distribution payment for:&quot;,
  &quot;required&quot; : false,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : false,
  &quot;defaultValue&quot; : &quot;Current tax year&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;Current tax year&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Current tax year&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Previous tax year&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Previous tax year&quot;,
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
        &quot;data&quot; : &quot;One-time RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;optionWidth&quot; : 100,
  &quot;optionHeight&quot; : 100,
  &quot;imageCountInRow&quot; : 3,
  &quot;enableCaption&quot; : true,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>OneTimeRMDYearHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock8&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;Tax Year for one-time Required Minimum Distribution (RMD) payment&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;RMD for Missed Years&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      }, {
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;One-time RMD&quot;
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
            <name>PaymentSchedule</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCWlthSetupRequiredMinimumDistributionShowPaymentSchedule&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ ]
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Radio1</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;required&quot; : false,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ ],
  &quot;optionSource&quot; : {
    &quot;type&quot; : &quot;&quot;,
    &quot;source&quot; : &quot;&quot;
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
  &quot;optionWidth&quot; : 100,
  &quot;optionHeight&quot; : 100,
  &quot;imageCountInRow&quot; : 3,
  &quot;enableCaption&quot; : true,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>21.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>RMDMissedYearsTax</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 4,
  &quot;label&quot; : &quot;Year (show/list last 30 years)&quot;,
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
    &quot;type&quot; : &quot;Custom&quot;,
    &quot;source&quot; : &quot;FSCWlthUtilityClass.getLastSpecificYears&quot;
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
        &quot;data&quot; : &quot;RMD for Missed Years&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
            <type>Select</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectedPaymentSchedule</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF(%SelectPaymentSchedule:PaymentSchedule:selected:SelectPaymentSchedule|1:Id% != null, %SelectPaymentSchedule:PaymentSchedule:selected:SelectPaymentSchedule|1:Name%, &apos;Automated RMD&apos;) &quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
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
            <name>SelectPaymentSchedule_ShowAccountDetails</name>
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
            <name>SelectPaymentScheduleHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;text&quot; : &quot;&lt;h5&gt;Schedule Payment for:&lt;/h5&gt;&quot;,
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
            <name>ShowOneTimeRqrMinDstrTaxYearSelectionError</name>
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
        &quot;field&quot; : &quot;OneTimeRqrMinDstrTaxYearSelection&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select tax year&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : false,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;false&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;OneTimeRqrMinDstrTaxYearSelection&quot;
      }, {
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;One-time RMD&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ShowSelectedAccountDetails</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;Selected Account: &lt;strong&gt;%SelectedAccount%&lt;/strong&gt;&lt;/p&gt;&quot;,
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
            <isActive>false</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TaxYearHeader</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock6&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;Tax Year&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
      }, {
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;RMD for Missed Years&quot;
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
            <name>TextBlock4</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;hr style=\&quot;border-top: 1px solid lightgrey;\&quot; /&gt;&quot;,
  &quot;show&quot; : null,
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TextBlock5</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 8,
  &quot;label&quot; : &quot;TextBlock5&quot;,
  &quot;text&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;OR&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Automated Semi-Annual payments&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;AutomatedRMD&quot;
      }, {
        &quot;field&quot; : &quot;AutomatedRMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Automated Quarterly payments&quot;
      }, {
        &quot;field&quot; : &quot;AutomatedRMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Automated Monthly payments&quot;
      } ]
    }
  },
  &quot;dataJSON&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;sanitize&quot; : false
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SelectPaymentSchedule</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Select Payment Schedule&quot;,
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
      }, {
        &quot;field&quot; : &quot;NoAccountsFound&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
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
        <sequenceNumber>8.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetAccountDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Set Account Details&quot;,
  &quot;elementValueMap&quot; : {
    &quot;NoAccountsFound&quot; : &quot;=%FAs:IsAccountsEmpty%&quot;
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
        <name>SetAccountNumberMismatchError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;TemporaryEFTReEnterAccountNumber&quot; : &quot;The Account numbers do not match&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectPaymentOption:PaymentOption&quot;
      }, {
        &quot;field&quot; : &quot;TemporaryEFTAccountNumberMismatchIndicator&quot;,
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
        <sequenceNumber>15.0</sequenceNumber>
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
    &quot;ConfirmationMessage&quot; : &quot;Setup Required Minimum Distribution request was submitted.&quot;
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
        <sequenceNumber>27.0</sequenceNumber>
        <type>Set Values</type>
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>25.0</sequenceNumber>
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
        <sequenceNumber>26.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetFederalStateNegativePercentageError</name>
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
        &quot;field&quot; : &quot;NoAccountsFound&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;FederalStateNegativePercentageIndicator&quot;
      }, {
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectPaymentOption:TaxWithholdingOption&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;FederalStateNegativePercentageValidation&quot; : &quot;Percentage should be greater than 0&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>18.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetFederalStatePercentage</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;FederalStateNegativePercentageIndicator&quot; : &quot;=IF(%SelectPaymentOption:FederalPercentage% &gt;= 0 &amp;&amp; %SelectPaymentOption:StatePercentage% &gt;= 0,false,true)&quot;,
    &quot;FederalStatePercentageExceededIndicator&quot; : &quot;=IF(%SelectPaymentOption:FederalPercentage%+%SelectPaymentOption:StatePercentage%&gt;100,true,false)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Elect to have federal and state&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectPaymentOption:TaxWithholdingOption&quot;
      }, {
        &quot;field&quot; : &quot;NoAccountsFound&quot;,
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
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetFederalStatePercentageError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;FederalStateConsolidatedPercentageValidation&quot; : &quot;Sum percentage shouldn&apos;t exceed 100%&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      }, {
        &quot;field&quot; : &quot;FederalStatePercentageExceededIndicator&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;SelectPaymentOption:TaxWithholdingOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Elect to have federal and state&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false
}</propertySetConfig>
        <sequenceNumber>17.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetMultipleDocumentUploadError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;OnlyOneDocumentAllowedForUpload&quot; : &quot;You can upload only one document.&quot;
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
        &quot;field&quot; : &quot;SelectPaymentOption:PaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;New EFT Account&quot;
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
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetNoAccountSelected</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;IsAccountSelected&quot; : &quot;=%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id% != NULL || %FAs:Selected%&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      } ]
    }
  },
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
        <name>SetNoSelectedAccountError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;ValidateFinancialAccountSelection&quot; : &quot;Kindly select atleast one account&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      }, {
        &quot;field&quot; : &quot;IsAccountSelected&quot;,
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
        <sequenceNumber>6.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetOneTimeRqrMinDstrTaxYearSelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;ShowOneTimeRqrMinDstrTaxYearSelectionError&quot; : &quot;Select tax year&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;OneTimeRqrMinDstrTaxYearSelection&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;false&quot;
      }, {
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;One-time RMD&quot;
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
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetOneTimeRqrMinDstrTaxYearSelectionIndicator</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;OneTimeRqrMinDstrTaxYearSelection&quot; : &quot;=IF(CONTAINS(%SelectPaymentSchedule:OneTimeRMDTaxYear:SelectedRadioOption:SelectedRadioValue%,&apos;tax year&apos;),true,false)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time RMD&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectedPaymentSchedule&quot;
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
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetSelectedAccountDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;SelectedAccount&quot; : &quot;=IF(%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id% != NULL, CONCATENATE(%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:AccountNumber%,&apos; - &apos;,%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Name%), CONCATENATE(%FAs:AccountNumber%, &apos; - &apos;, %FAs:Name%))&quot;,
    &quot;HelpTextForCheck&quot; : {
      &quot;TextToDisplay&quot; : &quot;We will mail a check to the registered address.&quot;
    },
    &quot;SelectPaymentOption&quot; : {
      &quot;OwnersState&quot; : &quot;%accounts:state%&quot;
    },
    &quot;SelectedAccountName&quot; : &quot;=IF(%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id% != NULL, %SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Name%,%FAs:Name%)&quot;,
    &quot;SelectedAccountNumber&quot; : &quot;=IF(%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id% != NULL, %SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:AccountNumber%,%FAs:AccountNumber%)&quot;,
    &quot;SelectedAccountId&quot; : &quot;=IF(%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id% != NULL, %SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id%,%FAs:Id%)&quot;,
    &quot;SelectedAccountSourceSystemId&quot; : &quot;=IF(%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id% != NULL, %SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:SourceSystemId%,%FAs:SourceSystemId%)&quot;,
    &quot;SelectedCashBalance&quot; : &quot;=IF(%SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:Id% != NULL, %SelectAnAccount:ShowFinancialAccounts:selectedaccount:selectedFA|1:CashBalance%,%FAs:CashBalance%)&quot;,
    &quot;SetTaxYears&quot; : {
      &quot;PreviousYear&quot; : &quot;=YEAR(TODAY())-1&quot;,
      &quot;CurrentYear&quot; : &quot;=YEAR(TODAY())&quot;,
      &quot;NextYear&quot; : &quot;=YEAR(TODAY())+1&quot;
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;wpm&quot; : false,
  &quot;ssm&quot; : false,
  &quot;message&quot; : { },
  &quot;pubsub&quot; : false,
  &quot;lwcComponentOverride&quot; : &quot;&quot;
}</propertySetConfig>
        <sequenceNumber>7.0</sequenceNumber>
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
  &quot;label&quot; : &quot;IntegrationProcedureAction1&quot;,
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
        <sequenceNumber>0.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetSummaryDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;Summary&quot; : {
      &quot;PaymentSchedule&quot; : &quot;%SelectPaymentSchedule:SelectedPaymentSchedule%&quot;,
      &quot;AutomatedPaymentOption&quot; : &quot;%SelectPaymentSchedule:AutomatedRMD%&quot;,
      &quot;AutomatedPaymentsDate&quot; : &quot;%SelectPaymentSchedule:AutomatedPaymentsDate%&quot;,
      &quot;TaxYear&quot; : &quot;=IF(%SelectPaymentSchedule:SelectedPaymentSchedule%=&apos;One-time RMD&apos;,%SelectPaymentSchedule:OneTimeRMDTaxYear:SelectedRadioOption:SelectedRadioValue%,%SelectPaymentSchedule:RMDMissedYearsTax%)&quot;,
      &quot;Amount&quot; : &quot;=IF(%SelectPaymentSchedule:OnetimeRMDAmount%=&apos;Calculate RMD amount&apos;,&apos;To be calculated&apos;,CONCATENATE(%SelectPaymentSchedule:AmountBlock:CurrencyCode%,&apos; &apos;,%SelectPaymentSchedule:AmountBlock:Amount%))&quot;,
      &quot;PaymentOption&quot; : &quot;%SelectPaymentOption:PaymentOption%&quot;,
      &quot;ExistingEFTAccountDetails&quot; : &quot;%BankAccountDetails%&quot;,
      &quot;NewEFTDetails&quot; : &quot;%SelectPaymentOption:TemporaryEFTBlock%&quot;,
      &quot;NewEFTFileDetails&quot; : &quot;%CompleteDocumentInfo%&quot;,
      &quot;CheckDetails&quot; : &quot;%SelectPaymentOption:CheckBlock%&quot;,
      &quot;TaxWithholdingOption&quot; : &quot;%SelectPaymentOption:TaxWithholdingOption%&quot;,
      &quot;TaxWithholdingShareFederal&quot; : &quot;%SelectPaymentOption:FederalPercentage%&quot;,
      &quot;TaxWithholdingShareState&quot; : &quot;%SelectPaymentOption:StatePercentage%&quot;,
      &quot;TaxWithholdingState&quot; : &quot;%SelectPaymentOption:OwnersState%&quot;,
      &quot;BankAccountNumber&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Existing EFT Account&apos;,%BankAccountDetails:AccountNumber%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTAccountNumber%,null))&quot;,
      &quot;BankRoutingNumber&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Existing EFT Account&apos;,%BankAccountDetails:RoutingNumber%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTRoutingNumber%,null))&quot;,
      &quot;BankAccountOwner&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Existing EFT Account&apos;,%BankAccountDetails:AccountOwner%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTAccountHolderName%,null))&quot;,
      &quot;BankAccountType&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Existing EFT Account&apos;,%BankAccountDetails:AccountType%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTAccountType%,null))&quot;,
      &quot;BankName&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Existing EFT Account&apos;,%BankAccountDetails:BankFirmName%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankName%,IF(%SelectPaymentOption:PaymentOption% == &apos;Check&apos;,%SelectPaymentOption:CheckBlock:CheckBankName%,null)))&quot;,
      &quot;BankAddress&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Check&apos;,%SelectPaymentOption:CheckBlock:CheckBankAddress%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankAddress%,null))&quot;,
      &quot;BankZipcode&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Check&apos;,%SelectPaymentOption:CheckBlock:CheckBankPostal%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankPostalCode%,null))&quot;,
      &quot;BankCity&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Check&apos;,%SelectPaymentOption:CheckBlock:CheckBankCity%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCity%,null))&quot;,
      &quot;BankState&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Check&apos;,%SelectPaymentOption:CheckBlock:CheckBankState%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankState%,null))&quot;,
      &quot;BankCountry&quot; : &quot;=IF(%SelectPaymentOption:PaymentOption% == &apos;Check&apos;,%SelectPaymentOption:CheckBlock:CheckBankCountry%,IF(%SelectPaymentOption:PaymentOption% == &apos;New EFT Account&apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCountry%,null))&quot;,
      &quot;NewEFTFullAddress&quot; : &quot;=CONCATENATE(IF(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankAddress%,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankAddress%,&apos;&apos;),IF(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCity%,IF(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankAddress%,CONCATENATE(&apos;, &apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCity%),%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCity%),&apos;&apos;),IF(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankState%,IF(OR(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankAddress%,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCity%),CONCATENATE(&apos;, &apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankState%),%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankState%),&apos;&apos;),IF(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCountry%,IF(OR(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankAddress%,OR(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCity%,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankState%)),CONCATENATE(&apos;, &apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCountry%),%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCountry%),&apos;&apos;),IF(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankPostalCode%,IF(OR(OR(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankAddress%,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCity%),OR(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankState%,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankCountry%)),CONCATENATE(&apos;, &apos;,%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankPostalCode%),%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTBankPostalCode%),&apos;&apos;))&quot;,
      &quot;CheckFullAddress&quot; : &quot;=CONCATENATE(IF(%SelectPaymentOption:CheckBlock:CheckBankAddress%,%SelectPaymentOption:CheckBlock:CheckBankAddress%,&apos;&apos;),IF(%SelectPaymentOption:CheckBlock:CheckBankCity%,IF(%SelectPaymentOption:CheckBlock:CheckBankAddress%,CONCATENATE(&apos;, &apos;,%SelectPaymentOption:CheckBlock:CheckBankCity%),%SelectPaymentOption:CheckBlock:CheckBankCity%),&apos;&apos;),IF(%SelectPaymentOption:CheckBlock:CheckBankState%,IF(OR(%SelectPaymentOption:CheckBlock:CheckBankAddress%,%SelectPaymentOption:CheckBlock:CheckBankCity%),CONCATENATE(&apos;, &apos;,%SelectPaymentOption:CheckBlock:CheckBankState%),%SelectPaymentOption:CheckBlock:CheckBankState%),&apos;&apos;),IF(%SelectPaymentOption:CheckBlock:CheckBankCountry%,IF(OR(%SelectPaymentOption:CheckBlock:CheckBankAddress%,OR(%SelectPaymentOption:CheckBlock:CheckBankCity%,%SelectPaymentOption:CheckBlock:CheckBankState%)),CONCATENATE(&apos;, &apos;,%SelectPaymentOption:CheckBlock:CheckBankCountry%),%SelectPaymentOption:CheckBlock:CheckBankCountry%),&apos;&apos;),IF(%SelectPaymentOption:CheckBlock:CheckBankPostalCode%,IF(OR(OR(%SelectPaymentOption:CheckBlock:CheckBankAddress%,%SelectPaymentOption:CheckBlock:CheckBankCity%),OR(%SelectPaymentOption:CheckBlock:CheckBankState%,%SelectPaymentOption:CheckBlock:CheckBankCountry%)),CONCATENATE(&apos;, &apos;,%SelectPaymentOption:CheckBlock:CheckBankPostalCode%),%SelectPaymentOption:CheckBlock:CheckBankPostalCode%),&apos;&apos;))&quot;
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
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
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetTemporaryEFTAccountNumberMismatchIndicator</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;TemporaryEFTAccountNumberMismatchIndicator&quot; : &quot;=IF(%SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTAccountNumber% != %SelectPaymentOption:TemporaryEFTBlock:TemporaryEFTReEnterAccountNumber%, true, false)&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;New EFT Account&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;SelectPaymentOption:PaymentOption&quot;
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
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessType>OmniScript</omniProcessType>
    <propertySetConfig>{&quot;persistentComponent&quot;:[{&quot;render&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;sendJSONPath&quot;:&quot;&quot;,&quot;sendJSONNode&quot;:&quot;&quot;,&quot;responseJSONPath&quot;:&quot;&quot;,&quot;responseJSONNode&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcCart&quot;,&quot;itemsKey&quot;:&quot;cartItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;vlcProductConfig.html&quot;,&quot;modalController&quot;:&quot;ModalProductCtrl&quot;,&quot;modalSize&quot;:&quot;lg&quot;}},{&quot;render&quot;:false,&quot;dispOutsideOmni&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcKnowledge&quot;,&quot;itemsKey&quot;:&quot;knowledgeItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;&quot;,&quot;modalController&quot;:&quot;&quot;,&quot;modalSize&quot;:&quot;lg&quot;}}],&quot;allowSaveForLater&quot;:false,&quot;saveNameTemplate&quot;:null,&quot;saveExpireInDays&quot;:null,&quot;saveForLaterRedirectPageName&quot;:&quot;sflRedirect&quot;,&quot;saveForLaterRedirectTemplateUrl&quot;:&quot;vlcSaveForLaterAcknowledge.html&quot;,&quot;saveContentEncoded&quot;:false,&quot;saveObjectId&quot;:&quot;%ContextId%&quot;,&quot;saveURLPatterns&quot;:{},&quot;autoSaveOnStepNext&quot;:false,&quot;elementTypeToHTMLTemplateMapping&quot;:{},&quot;seedDataJSON&quot;:{},&quot;trackingCustomData&quot;:{},&quot;enableKnowledge&quot;:false,&quot;bLK&quot;:false,&quot;lkObjName&quot;:null,&quot;knowledgeArticleTypeQueryFieldsMap&quot;:{},&quot;timeTracking&quot;:false,&quot;hideStepChart&quot;:false,&quot;mergeSavedData&quot;:false,&quot;visualforcePagesAvailableInPreview&quot;:{},&quot;cancelType&quot;:&quot;SObject&quot;,&quot;allowCancel&quot;:true,&quot;cancelSource&quot;:&quot;%ContextId%&quot;,&quot;cancelRedirectPageName&quot;:&quot;OmniScriptCancelled&quot;,&quot;cancelRedirectTemplateUrl&quot;:&quot;vlcCancelled.html&quot;,&quot;consoleTabLabel&quot;:&quot;New&quot;,&quot;wpm&quot;:false,&quot;ssm&quot;:false,&quot;message&quot;:{},&quot;pubsub&quot;:false,&quot;autoFocus&quot;:false,&quot;currencyCode&quot;:&quot;&quot;,&quot;showInputWidth&quot;:false,&quot;rtpSeed&quot;:false,&quot;consoleTabTitle&quot;:&quot;Set Up Required Minimum Distribution (RMD)&quot;,&quot;consoleTabIcon&quot;:&quot;custom:custom18&quot;,&quot;errorMessage&quot;:{&quot;custom&quot;:[]},&quot;stylesheet&quot;:{&quot;newport&quot;:&quot;&quot;,&quot;lightning&quot;:&quot;SetupRequiredMinimumDistributionCSS&quot;,&quot;newportRtl&quot;:&quot;&quot;,&quot;lightningRtl&quot;:&quot;&quot;},&quot;stepChartPlacement&quot;:&quot;right&quot;,&quot;disableUnloadWarn&quot;:true,&quot;scrollBehavior&quot;:&quot;auto&quot;,&quot;currentLanguage&quot;:&quot;en_US&quot;}</propertySetConfig>
    <subType>SetupRequiredMinimumDistribution</subType>
    <type>FSCWlth</type>
    <uniqueName>FSCWlth_SetupRequiredMinimumDistribution_English_1</uniqueName>
    <versionNumber>1.0</versionNumber>
    <webComponentKey>303d8e05-8631-33ff-ab75-3d6ed2eba7f0</webComponentKey>
</OmniScript>
