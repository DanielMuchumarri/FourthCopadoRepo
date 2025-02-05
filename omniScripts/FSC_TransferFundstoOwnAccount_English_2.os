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
    <name>FSCTransferFundsToOwnAccount</name>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>AddFundTransferDetails_AccountInfo</name>
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
            <name>CheckFieldsForCreditorLoanAccountSelection</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : null,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF((%TransferToList:AccountType%==&apos;CreditCard&apos; || %TransferToList:AccountType%==&apos;Loan&apos; || %TransferToList:AccountType%==&apos;AutoLoan&apos; || %TransferToList:AccountType%==&apos;Mortgage&apos;) &amp;&amp; %TransferMode% == &apos;One-time&apos; &amp;&amp;\n     ((%AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedRadioAmountOption:SelectedRadioValue%==null || %AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedTransferSchedule:SelectedDateValue%==null)||\n      (%AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedRadioAmountOption:SelectedRadioValue%==&apos;Custom&apos; &amp;&amp; (%AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomAmountValue:CustomAmount%==null || %AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomAmountValue:CustomAmount%==&apos;&apos; || %AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomAmountValue:CustomAmount%==&apos;null&apos;))||\n      (%AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedTransferSchedule:SelectedDateValue%==&apos;Custom Date&apos; &amp;&amp; (%AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomDateValue:CustomDate%==null || %AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomDateValue:CustomDate%==&apos;null&apos;))\n      ),true, false)&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CreditCardDuesPaymentOption</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Transfer Amount&quot;,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;Balance from last statement&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Balance from last statement&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Minimum payment&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Minimum payment&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Total amount due&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Total amount due&quot;,
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
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Credit Card&quot;
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
            <sequenceNumber>11.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CreditOrLoanDestinationAccount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;OR&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Credit Card&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Loan Account&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Auto Loan&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Mortgage&quot;
          } ]
        }
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCTransferFundsToOwnAccountShowCreditOrLoanDstinationAccount&quot;,
  &quot;bStandalone&quot; : false,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%TransferToList%&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CreditOrLoanDestinationAccountValidation</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : null,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Some required fields need your attention.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckFieldsForCreditorLoanAccountSelection&quot;
      }, {
        &quot;field&quot; : &quot;IndiacateCreditOrLoanDestinationAccountSelection&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Currency</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;Currency&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : false,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : true,
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
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Credit Card&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Auto Loan&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Loan Account&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Mortgage&quot;
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
            <sequenceNumber>4.0</sequenceNumber>
            <type>Text</type>
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
            <name>LineBreak4</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak4&quot;,
  &quot;padding&quot; : 15,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Credit Card&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Auto Loan&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Loan Account&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Mortgage&quot;
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
            <name>LineBreak5</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak5&quot;,
  &quot;padding&quot; : 160,
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
            <name>LineBreak6</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : null,
  &quot;padding&quot; : 15,
  &quot;label&quot; : &quot;LineBreak4&quot;
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LoanPaymentAmount</name>
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
        &quot;field&quot; : &quot;LoanPaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Custom&quot;
      } ]
    }
  },
  &quot;mask&quot; : null,
  &quot;placeholder&quot; : &quot;&quot;,
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
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 4
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Number</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LoanPaymentCurrency</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : null,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;%TransferToList:AccountCurrency%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Custom&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;LoanPaymentOption&quot;
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
            <name>LoanPaymentOption</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;disOnTplt&quot; : false,
  &quot;enableCaption&quot; : true,
  &quot;imageCountInRow&quot; : 3,
  &quot;optionHeight&quot; : 100,
  &quot;optionWidth&quot; : 100,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;OR&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Loan Account&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Auto Loan&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Mortgage&quot;
          } ]
        }
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
    &quot;name&quot; : &quot;Balance last statement&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Balance last statement&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Custom&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Custom amount&quot;,
    &quot;autoAdv&quot; : null
  } ],
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;help&quot; : false,
  &quot;defaultValue&quot; : null,
  &quot;horizontalMode&quot; : false,
  &quot;readOnly&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;repeatClone&quot; : false,
  &quot;repeat&quot; : false,
  &quot;required&quot; : true,
  &quot;label&quot; : &quot;Transfer Amount&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>OneTimeTransferDate</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 5,
  &quot;label&quot; : &quot;Enter the transfer date&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;defaultValue&quot; : &quot;&quot;,
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
  &quot;placeholder&quot; : &quot;Select a date…&quot;
}</propertySetConfig>
                <sequenceNumber>0.0</sequenceNumber>
                <type>Date</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>OneTimeSelectionBlock</name>
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
        &quot;data&quot; : &quot;One-time&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;data&quot; : &quot;Credit Card&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Auto Loan&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Loan Account&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Mortgage&quot;
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
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>RecurringTransferSection</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;font-size: 12px; color: #181818;\&quot;&gt;&lt;strong&gt;Recurring transfer&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
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
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>CheckDurationValidationErrorOnSelectedDates</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF(%ScheduleTransferOptions%==&apos;Duration&apos;&amp;&amp; %StartDate%!=null &amp;&amp; %EndDate%!=null, \nIF((%Frequency%==&apos;Monthly&apos; &amp;&amp; DATEDIFF(DATE(%StartDate%),DATE(%EndDate%))&lt;30),true,\nIF((%Frequency%==&apos;Quarterly&apos; &amp;&amp; DATEDIFF(DATE(%StartDate%),DATE(%EndDate%))&lt;90),true,\nIF((%Frequency%==&apos;Half-yearly&apos; &amp;&amp; DATEDIFF(DATE(%StartDate%),DATE(%EndDate%))&lt;180),true,\nIF((%Frequency%==&apos;Yearly&apos; &amp;&amp; DATEDIFF(DATE(%StartDate%),DATE(%EndDate%))&lt;365),true,\nfalse\n)))))&quot;,
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
                <level>2.0</level>
                <name>DurationDateValidationMessage</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Messaging1&quot;,
  &quot;validateExpression&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckDurationValidationErrorOnSelectedDates&quot;
      } ]
    }
  },
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;End date should be more than the frequency duration&quot;,
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
                <sequenceNumber>1.0</sequenceNumber>
                <type>Validation</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>EndDate</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;maxDate&quot; : &quot;&quot;,
  &quot;minDate&quot; : &quot;TODAY&quot;,
  &quot;disOnTplt&quot; : false,
  &quot;hide&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Duration&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ScheduleTransferOptions&quot;
      } ]
    }
  },
  &quot;dateFormat&quot; : &quot;MM/DD/YYYY&quot;,
  &quot;modelDateFormat&quot; : &quot;MM/DD/YYYY&quot;,
  &quot;dateType&quot; : &quot;string&quot;,
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
  &quot;label&quot; : &quot;End Date&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
                <sequenceNumber>4.0</sequenceNumber>
                <type>Date</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>Frequency</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Frequency&quot;,
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
    &quot;name&quot; : &quot;Monthly&quot;,
    &quot;value&quot; : &quot;Monthly&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Quarterly&quot;,
    &quot;value&quot; : &quot;Quarterly&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Half-yearly&quot;,
    &quot;value&quot; : &quot;Half-yearly&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Yearly&quot;,
    &quot;value&quot; : &quot;Annually&quot;,
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
                <sequenceNumber>3.0</sequenceNumber>
                <type>Select</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>NumberOfInstallments</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Number of Installments&quot;,
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
  &quot;mask&quot; : &quot;[999]&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Installment&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ScheduleTransferOptions&quot;
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
                <sequenceNumber>5.0</sequenceNumber>
                <type>Number</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>ScheduleTransferOptions</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : true,
  &quot;defaultValue&quot; : &quot;Duration&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;Duration&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Duration&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Installment&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Installment&quot;,
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
                <sequenceNumber>0.0</sequenceNumber>
                <type>Radio</type>
            </childElements>
            <childElements>
                <isActive>true</isActive>
                <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
                <level>2.0</level>
                <name>StartDate</name>
                <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
                <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
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
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;minDate&quot; : &quot;TODAY&quot;,
  &quot;maxDate&quot; : &quot;&quot;
}</propertySetConfig>
                <sequenceNumber>2.0</sequenceNumber>
                <type>Date</type>
            </childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>RecurringTransferSectionBlock</name>
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
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      } ]
    }
  },
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false
}</propertySetConfig>
            <sequenceNumber>16.0</sequenceNumber>
            <type>Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>Remarks</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;Remarks&quot;,
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
  &quot;placeholder&quot; : &quot;Enter…&quot;,
  &quot;show&quot; : null,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;accessibleInFutureSteps&quot; : false,
  &quot;debounceValue&quot; : 0,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;hide&quot; : false,
  &quot;disOnTplt&quot; : false,
  &quot;autocomplete&quot; : null
}</propertySetConfig>
            <sequenceNumber>18.0</sequenceNumber>
            <type>Text</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SourceAndDestinationAccount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock1&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;Source Account: &lt;strong&gt;%TransferFromSelection:FinancialAccountLabel%&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\&quot;color: #444444;\&quot;&gt;Destination Account: &lt;strong&gt;%TransferToSelection:FinancialAccountLabel%&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&quot;,
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
            <name>TextBlock3</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock3&quot;,
  &quot;text&quot; : &quot;&lt;hr style=\&quot;border-top: 1px solid lightgrey; margin-top: 20px; margin-bottom: 20px;\&quot; /&gt;&quot;,
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
            <name>TransferAmount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 4,
  &quot;label&quot; : &quot;Transfer Amount&quot;,
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
  &quot;placeholder&quot; : &quot;Enter an amount…&quot;,
  &quot;mask&quot; : null,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Credit Card&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Auto Loan&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Loan Account&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Mortgage&quot;
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
            <sequenceNumber>5.0</sequenceNumber>
            <type>Number</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TransferMode</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Schedule Transfer&quot;,
  &quot;required&quot; : true,
  &quot;repeat&quot; : false,
  &quot;repeatClone&quot; : false,
  &quot;repeatLimit&quot; : null,
  &quot;readOnly&quot; : false,
  &quot;horizontalMode&quot; : true,
  &quot;defaultValue&quot; : &quot;One-time&quot;,
  &quot;help&quot; : false,
  &quot;helpText&quot; : &quot;&quot;,
  &quot;helpTextPos&quot; : &quot;&quot;,
  &quot;options&quot; : [ {
    &quot;name&quot; : &quot;One-time&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;One-time transfer&quot;,
    &quot;autoAdv&quot; : null
  }, {
    &quot;name&quot; : &quot;Recurring&quot;,
    &quot;developerName&quot; : null,
    &quot;value&quot; : &quot;Recurring transfer&quot;,
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
            <sequenceNumber>7.0</sequenceNumber>
            <type>Radio</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>AddFundTransferDetails</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Add Fund Transfer Details&quot;,
  &quot;validationRequired&quot; : true,
  &quot;previousLabel&quot; : &quot;Previous&quot;,
  &quot;previousWidth&quot; : 3,
  &quot;nextLabel&quot; : &quot;Next&quot;,
  &quot;nextWidth&quot; : 3,
  &quot;cancelLabel&quot; : &quot;Cancel&quot;,
  &quot;cancelMessage&quot; : &quot;Are you sure?&quot;,
  &quot;saveLabel&quot; : &quot;&quot;,
  &quot;saveMessage&quot; : &quot;&quot;,
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
        <sequenceNumber>11.0</sequenceNumber>
        <type>Step</type>
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
  &quot;remoteClass&quot; : &quot;TransferFundsToOwnAccountHelperFunctions&quot;,
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
    &quot;svcCatalogItemDefApiName&quot; : &quot;TransferFundsToOwnAccount&quot;,
    &quot;isCommunitySite&quot; : &quot;%isCommunitySite%&quot;,
    &quot;caseSubject&quot; : &quot;%accounts:name% - Transfer Funds to Own Account Service Request.&quot;,
    &quot;transferFromAccountName&quot; : &quot;%TransferFromSelection:Name%&quot;,
    &quot;transferFromAccountNumber&quot; : &quot;XXXX-%TransferFromSelection:AccountNumberLast4%&quot;,
    &quot;transferToAccountNumber&quot; : &quot;XXXX-%TransferToSelection:AccountNumberLast4%&quot;,
    &quot;transferToAccountName&quot; : &quot;%TransferToSelection:Name%&quot;,
    &quot;currencyCode&quot; : &quot;%TransferToList:AccountCurrency%&quot;,
    &quot;paymentType&quot; : &quot;%TransferMode%&quot;,
    &quot;remarks&quot; : &quot;%Remarks%&quot;,
    &quot;startDate&quot; : &quot;%Summary:StartDate%&quot;,
    &quot;endDate&quot; : &quot;%Summary:EndDate%&quot;,
    &quot;frequency&quot; : &quot;%Summary:Frequency%&quot;,
    &quot;instalment&quot; : &quot;%Summary:Installment%&quot;,
    &quot;transferDate&quot; : &quot;%SetFundTransferDate%&quot;,
    &quot;amount&quot; : &quot;%SetTransferAmount%&quot;,
    &quot;recurringPaymentOption&quot; : &quot;%Summary:CreditorLoanRecurringAmountTransferOption%&quot;,
    &quot;transferFromAccountType&quot; : &quot;%TransferFromSelection:RecordTypeName%&quot;,
    &quot;transferToAccountType&quot; : &quot;%TransferToSelection:RecordTypeName%&quot;,
    &quot;transferFromAccountId&quot; : &quot;%TransferFromSelection:Id%&quot;,
    &quot;transferToAccountId&quot; : &quot;%TransferToSelection:Id%&quot;
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
  &quot;sendOnlyExtraPayload&quot; : true,
  &quot;toastComplete&quot; : false
}</propertySetConfig>
        <sequenceNumber>19.0</sequenceNumber>
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
        <sequenceNumber>23.0</sequenceNumber>
        <type>OmniScript</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetFinancialAccount</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;TransferFundstoOwnAccount_GetFinancialAccounts&quot;,
  &quot;useContinuation&quot; : true,
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
        <sequenceNumber>3.0</sequenceNumber>
        <type>Integration Procedure Action</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>GetTransferToBalance</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;integrationProcedureKey&quot; : &quot;TransferFundstoOwnAccount_GetBalance&quot;,
  &quot;useContinuation&quot; : true,
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
    &quot;recordId&quot; : &quot;%TransferToSelection:Id%&quot;,
    &quot;sourceSystemId&quot; : &quot;%TransferToSelection:SourceSystemId%&quot;,
    &quot;transferType&quot; : &quot;TransferTo&quot;
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
  &quot;message&quot; : {
    &quot;records&quot; : &quot;%TransferToList%&quot;
  },
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
            <name>CheckDisclaimer</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : null,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Accept the disclaimer to proceed.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ValidateDisclaimerCheck&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>17.0</sequenceNumber>
            <type>Validation</type>
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
            <sequenceNumber>3.0</sequenceNumber>
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
  &quot;padding&quot; : 140,
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
            <name>Remark</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Remarks&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Remarks%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : null,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;Remarks&quot;
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
            <name>ReviewSummary_CreditCardorLoanFundTransferDate</name>
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
        &quot;data&quot; : &quot;One-time&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;OR&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Credit Card&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Auto Loan&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Mortgage&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Loan Account&quot;
          } ]
        }
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Scheduled for&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:CreditorLoanTransferDate%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_CreditCardorLoanOneTimeTransferAmount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Transfer Amount&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:CreditorLoanOneTimeAmount%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;OR&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Credit Card&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Mortgage&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Loan Account&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Auto Loan&quot;
          } ]
        }
      } ]
    }
  },
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
            <name>ReviewSummary_DestinationAccount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;sanitize&quot; : false,
  &quot;textKey&quot; : &quot;&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;dataJSON&quot; : false,
  &quot;show&quot; : null,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Destination Account&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:TransferToAccount%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>5.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_FundTransferDate</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Scheduled for&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:OtherTransferDate%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;One-time&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Credit Card&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Mortgage&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Loan Account&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Auto Loan&quot;
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
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_OtherTransferAmount</name>
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
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Credit Card&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Mortgage&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Loan Account&quot;
      }, {
        &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;Auto Loan&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Transfer Amount&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:OtherAmount%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>6.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_RecurringTransferLoanAmount</name>
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
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;field&quot; : &quot;LoanPaymentOption&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Custom&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Transfer Amount&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:LoanAmountRecurring%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>9.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_RecurringTransferOption</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Recurring Transfer Option&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:CreditorLoanRecurringAmountTransferOption%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;OR&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Credit Card&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Loan Account&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Auto Loan&quot;
          }, {
            &quot;field&quot; : &quot;TransferToSelection:RecordTypeName&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;Mortgage&quot;
          } ]
        }
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
            <name>ReviewSummary_ShowEndDate</name>
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
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;field&quot; : &quot;ScheduleTransferOptions&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Duration&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;End Date&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:EndDate%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>14.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_ShowFrequency</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Frequency&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:Frequency%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
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
            <name>ReviewSummary_ShowInstallments</name>
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
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
      }, {
        &quot;field&quot; : &quot;ScheduleTransferOptions&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;Installment&quot;
      } ]
    }
  },
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Installments&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:Installment%&lt;/p&gt;&quot;,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>15.0</sequenceNumber>
            <type>Text Block</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ReviewSummary_ShowStartDate</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Start Date&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:StartDate%&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Recurring&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferMode&quot;
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
            <name>ReviewSummary_SourceAccount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;TextBlock4&quot;,
  &quot;text&quot; : &quot;&lt;p style=\&quot;font-weight: 400; color: #444444; padding-bottom: 5px;\&quot;&gt;Source Account&lt;/p&gt;\n&lt;p style=\&quot;font-weight: 400; color: #181818; padding-bottom: 12px;\&quot;&gt;%Summary:TransferFromAccount%&lt;/p&gt;&quot;,
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
            <name>TransferFundsToOwnAccountDisclaimer</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%Summary%&quot;
  } ],
  &quot;bStandalone&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCTransferFundsToOwnAccountShowDisclaimer&quot;,
  &quot;hide&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : null,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>18.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>TransferFundsToOwnAccountSummary</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;parent-data&quot;,
    &quot;source&quot; : &quot;true&quot;
  }, {
    &quot;name&quot; : &quot;records&quot;,
    &quot;source&quot; : &quot;%Summary%&quot;
  } ],
  &quot;bStandalone&quot; : true,
  &quot;lwcName&quot; : &quot;cfFSCTransferFundsToOwnAccountShowSummary&quot;,
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
            <sequenceNumber>2.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>ValidateDisclaimerCheck</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF((%IsNextButtonClickedWithoutAcceptingDisclaimer% == true || %ReviewSummary:TransferFundsToOwnAccountDisclaimer:Disclaimer:DisclaimerAccepted% == \&quot;false\&quot;),IF(%ReviewSummary:TransferFundsToOwnAccountDisclaimer%,IF(%ReviewSummary:TransferFundsToOwnAccountDisclaimer:Disclaimer:DisclaimerAccepted% == \&quot;true\&quot;,false,true),true),false)&quot;,
  &quot;hide&quot; : true,
  &quot;show&quot; : null,
  &quot;mask&quot; : null,
  &quot;dataType&quot; : null,
  &quot;hideGroupSep&quot; : false,
  &quot;dateFormat&quot; : &quot;MM-dd-yyyy&quot;,
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;disOnTplt&quot; : false
}</propertySetConfig>
            <sequenceNumber>19.0</sequenceNumber>
            <type>Formula</type>
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
        <sequenceNumber>16.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CheckNoAccountSelection</name>
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
  &quot;expression&quot; : &quot;IF((%TransferFromSelection% == null || %TransferToSelection% == null) &amp;&amp; %NextButtonClickedWithoutAccountSelection% == true,true,false)&quot;,
  &quot;inputWidth&quot; : 12,
  &quot;showInputWidth&quot; : false,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 2
}</propertySetConfig>
            <sequenceNumber>10.0</sequenceNumber>
            <type>Formula</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>CheckSameAccountSelection</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 2,
  &quot;label&quot; : &quot;&quot;,
  &quot;showInputWidth&quot; : false,
  &quot;inputWidth&quot; : 12,
  &quot;expression&quot; : &quot;IF((%TransferFromSelection% !=null &amp;&amp; %TransferToSelection% != null),IF(%TransferFromSelection:Id% == %TransferToSelection:Id%,true,false),false)&quot;,
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
            <name>DestinationAccount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 6,
  &quot;label&quot; : &quot;&quot;,
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
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;hide&quot; : false,
  &quot;lwcName&quot; : &quot;showFinancialAccounts&quot;,
  &quot;bStandalone&quot; : true,
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;list-type&quot;,
    &quot;source&quot; : &quot;Transfer To&quot;
  }, {
    &quot;name&quot; : &quot;list-data&quot;,
    &quot;source&quot; : &quot;%TransferToAccounts%&quot;
  }, {
    &quot;name&quot; : &quot;json-node-name&quot;,
    &quot;source&quot; : &quot;TransferToSelection&quot;
  }, {
    &quot;name&quot; : &quot;retain-selection&quot;,
    &quot;source&quot; : &quot;%TransferToSelection%&quot;
  }, {
    &quot;name&quot; : &quot;placeholder&quot;,
    &quot;source&quot; : &quot;Select an account...&quot;
  }, {
    &quot;name&quot; : &quot;change-indication-node&quot;,
    &quot;source&quot; : &quot;TransferToChanged&quot;
  } ]
}</propertySetConfig>
            <sequenceNumber>8.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>FSCTransferFundsToOwnAccount_NoFinancialAccounts</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;customAttributes&quot; : [ ],
  &quot;bStandalone&quot; : false,
  &quot;lwcName&quot; : &quot;cfFSCTransferFundsToOwnAccountShowNoFinancialAccounts&quot;,
  &quot;hide&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      } ]
    }
  },
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>11.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>GetTransferFromBalance</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 3,
  &quot;label&quot; : &quot;View Balance&quot;,
  &quot;integrationProcedureKey&quot; : &quot;TransferFundstoOwnAccount_GetBalance&quot;,
  &quot;useContinuation&quot; : true,
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
    &quot;recordId&quot; : &quot;%TransferFromSelection:Id%&quot;,
    &quot;sourceSystemId&quot; : &quot;%TransferFromSelection:SourceSystemId%&quot;,
    &quot;transferType&quot; : &quot;TransferFrom&quot;
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
      }, {
        &quot;field&quot; : &quot;TransferFromSelection&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : null
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
            <sequenceNumber>5.0</sequenceNumber>
            <type>Integration Procedure Action</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>LineBreak2</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;label&quot; : &quot;LineBreak2&quot;,
  &quot;padding&quot; : 5,
  &quot;show&quot; : null,
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>7.0</sequenceNumber>
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
  &quot;padding&quot; : 140,
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
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>12.0</sequenceNumber>
            <type>Line Break</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NoAccountSelectionError</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : null,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Select the accounts you want to transfer the funds between.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckNoAccountSelection&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>2.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>NoSourceAccountSelectionError</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;HTMLTemplateId&quot; : &quot;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;field&quot; : &quot;NoAccountsFound&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;AND&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;ExecuteContinuation&quot;,
            &quot;condition&quot; : &quot;&lt;&gt;&quot;,
            &quot;data&quot; : null
          }, {
            &quot;field&quot; : &quot;TransferFromList&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : null
          }, {
            &quot;field&quot; : &quot;TransferFromSelection&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : null
          } ]
        }
      } ]
    }
  },
  &quot;hideLabel&quot; : true,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;Something went wrong while getting the account balance. Try again later.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;validateExpression&quot; : null,
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
            <sequenceNumber>3.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SameAccountSelectionError</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validateExpression&quot; : null,
  &quot;messages&quot; : [ {
    &quot;value&quot; : true,
    &quot;type&quot; : &quot;Warning&quot;,
    &quot;text&quot; : &quot;You can’t select the same account for Source Account and Destination Account fields.&quot;,
    &quot;active&quot; : true
  }, {
    &quot;value&quot; : false,
    &quot;type&quot; : &quot;Requirement&quot;,
    &quot;text&quot; : &quot;&quot;,
    &quot;active&quot; : false
  } ],
  &quot;hideLabel&quot; : true,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckSameAccountSelection&quot;
      } ]
    }
  },
  &quot;HTMLTemplateId&quot; : &quot;&quot;
}</propertySetConfig>
            <sequenceNumber>1.0</sequenceNumber>
            <type>Validation</type>
        </childElements>
        <childElements>
            <isActive>true</isActive>
            <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
            <level>1.0</level>
            <name>SelectAccounts_AccountInfo</name>
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
            <name>ShowBalance</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;TextBlock2&quot;,
  &quot;text&quot; : &quot;&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;Balance :&lt;strong&gt; %TransferFromList:Balance%&lt;/strong&gt;&lt;/p&gt;&quot;,
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountsFound&quot;
      }, {
        &quot;group&quot; : {
          &quot;operator&quot; : &quot;AND&quot;,
          &quot;rules&quot; : [ {
            &quot;field&quot; : &quot;TransferFromList&quot;,
            &quot;condition&quot; : &quot;&lt;&gt;&quot;,
            &quot;data&quot; : null
          }, {
            &quot;field&quot; : &quot;TransferFromList:hasErrors&quot;,
            &quot;condition&quot; : &quot;&lt;&gt;&quot;,
            &quot;data&quot; : &quot;\&quot;true\&quot;&quot;
          }, {
            &quot;field&quot; : &quot;TransferFromChanged&quot;,
            &quot;condition&quot; : &quot;=&quot;,
            &quot;data&quot; : &quot;false&quot;
          } ]
        }
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
            <name>SourceAccount</name>
            <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
            <propertySetConfig>{
  &quot;customAttributes&quot; : [ {
    &quot;name&quot; : &quot;list-type&quot;,
    &quot;source&quot; : &quot;Transfer From&quot;
  }, {
    &quot;name&quot; : &quot;list-data&quot;,
    &quot;source&quot; : &quot;%TransferFromAccounts%&quot;
  }, {
    &quot;name&quot; : &quot;json-node-name&quot;,
    &quot;source&quot; : &quot;TransferFromSelection&quot;
  }, {
    &quot;name&quot; : &quot;retain-selection&quot;,
    &quot;source&quot; : &quot;%TransferFromSelection%&quot;
  }, {
    &quot;name&quot; : &quot;placeholder&quot;,
    &quot;source&quot; : &quot;Select an account...&quot;
  }, {
    &quot;name&quot; : &quot;change-indication-node&quot;,
    &quot;source&quot; : &quot;TransferFromChanged&quot;
  } ],
  &quot;bStandalone&quot; : true,
  &quot;lwcName&quot; : &quot;showFinancialAccounts&quot;,
  &quot;hide&quot; : false,
  &quot;conditionType&quot; : &quot;Hide if False&quot;,
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
  &quot;label&quot; : &quot;&quot;,
  &quot;controlWidth&quot; : 6
}</propertySetConfig>
            <sequenceNumber>4.0</sequenceNumber>
            <type>Custom Lightning Web Component</type>
        </childElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SelectAccounts</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;label&quot; : &quot;Select Accounts&quot;,
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
        <sequenceNumber>4.0</sequenceNumber>
        <type>Step</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetAddFundTransferDetailsValidation</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;IndiacateCreditOrLoanDestinationAccountSelection&quot; : &quot;=true&quot;
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
        &quot;field&quot; : &quot;CheckFieldsForCreditorLoanAccountSelection&quot;,
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
        <type>Set Values</type>
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
    &quot;ConfirmationMessage&quot; : &quot;The transfer fund request to own account was submitted.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;Success&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;ConnectAPIResponse&quot;
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
        <sequenceNumber>22.0</sequenceNumber>
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
        <sequenceNumber>20.0</sequenceNumber>
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
        <sequenceNumber>21.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetCreditOrLoanSectionValidationError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;CreditOrLoanDestinationAccountValidation&quot; : &quot;Some required fields need your attention.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;field&quot; : &quot;NoAccountFound&quot;
      }, {
        &quot;field&quot; : &quot;CheckFieldsForCreditorLoanAccountSelection&quot;,
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
        <sequenceNumber>14.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetDestinationAccountCurrency</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;Currency&quot; : &quot;%TransferToList:AccountCurrency%&quot;
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
        <sequenceNumber>9.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetDestinationAccountUpdated</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetDestinationAccountUpdated&quot;,
  &quot;elementValueMap&quot; : {
    &quot;AddFundTransferDetails&quot; : {
      &quot;CreditOrLoanDestinationAccount&quot; : {
        &quot;SelectedRadioAmountOption&quot; : {
          &quot;SelectedRadioValue&quot; : &quot;=null&quot;
        },
        &quot;SelectedTransferSchedule&quot; : {
          &quot;SelectedDateValue&quot; : &quot;=null&quot;
        },
        &quot;CustomDateValue&quot; : {
          &quot;CustomDate&quot; : &quot;=null&quot;
        },
        &quot;CustomAmountValue&quot; : {
          &quot;CustomAmount&quot; : &quot;=null&quot;
        }
      }
    },
    &quot;IndiacateCreditOrLoanDestinationAccountSelection&quot; : &quot;=false&quot;,
    &quot;TransferToChanged&quot; : &quot;=false&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;TransferToChanged&quot;
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
  &quot;message&quot; : {
    &quot;records&quot; : &quot;%TransferToList%&quot;
  },
  &quot;pubsub&quot; : true
}</propertySetConfig>
        <sequenceNumber>10.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetDisclaimerSelectionError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetDisclaimerSelectionError&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;CheckDisclaimer&quot; : &quot;Accept the disclaimer to proceed.&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;IsDisclaimerAccepted&quot;
      }, {
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
        <sequenceNumber>18.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetDisclaimerValidation</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetDisclaimerValidation&quot;,
  &quot;elementValueMap&quot; : {
    &quot;IsDisclaimerAccepted&quot; : &quot;=IF(%ReviewSummary:TransferFundsToOwnAccountDisclaimer:Disclaimer:DisclaimerAccepted% == \&quot;true\&quot;,false,true)&quot;,
    &quot;IsNextButtonClickedWithoutAcceptingDisclaimer&quot; : &quot;=true&quot;,
    &quot;SetFundTransferDate&quot; : &quot;=IF((%Summary:TransferToType%!=&apos;Credit Card&apos; &amp;&amp; %Summary:TransferToType%!=&apos;Loan Account&apos; &amp;&amp; %Summary:TransferToType%!=&apos;Auto Loan&apos; &amp;&amp; %Summary:TransferToType%!=&apos;Mortgage&apos; )&amp;&amp;%Summary:TransferMode%==&apos;One-time&apos;,%Summary:OtherTransferDate%,\nIF((%Summary:TransferToType%==&apos;Credit Card&apos; || %Summary:TransferToType%==&apos;Loan Account&apos; || %Summary:TransferToType%==&apos;Auto Loan&apos; || %Summary:TransferToType%==&apos;Mortgage&apos;) &amp;&amp; %Summary:TransferMode%==&apos;One-time&apos;,%Summary:CreditorLoanTransferDate%,null))&quot;,
    &quot;SetTransferAmount&quot; : &quot;=IF((%Summary:TransferToType%!=&apos;Credit Card&apos; &amp;&amp; %Summary:TransferToType%!=&apos;Loan Account&apos; &amp;&amp; %Summary:TransferToType%!=&apos;Auto Loan&apos; &amp;&amp; %Summary:TransferToType%!=&apos;Mortgage&apos; ),%Summary:OtherAmount%,\nIF((%Summary:TransferToType%==&apos;Credit Card&apos; || %Summary:TransferToType%==&apos;Loan Account&apos; || %Summary:TransferToType%==&apos;Auto Loan&apos; || %Summary:TransferToType%==&apos;Mortgage&apos;) &amp;&amp; %Summary:TransferMode%==&apos;One-time&apos;,REPLACE(%Summary:CreditorLoanOneTimeAmount%,&apos;,&apos;,&apos;&apos;),\nIF((%Summary:TransferToType%==&apos;Loan Account&apos; || %Summary:TransferToType%==&apos;Auto Loan&apos; || %Summary:TransferToType%==&apos;Mortgage&apos;) &amp;&amp; %Summary:TransferMode%==&apos;Recurring&apos; &amp;&amp; %Summary:CreditorLoanRecurringAmountTransferOption%==&apos;Custom&apos;,%Summary:LoanAmountRecurring%,\nnull)))&quot;
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
        <sequenceNumber>17.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetDuationDateValidationError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetErrors1&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;DurationDateValidationMessage&quot; : &quot;End date should match with selected frequency&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;CheckDurationValidationErrorOnSelectedDates&quot;
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
        <sequenceNumber>12.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetNoAccountSelectedError</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;SetNoAccountSelectedError&quot;,
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;elementErrorMap&quot; : {
    &quot;NoAccountSelectionError&quot; : &quot;No Account Selected&quot;
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;show&quot; : {
    &quot;group&quot; : {
      &quot;operator&quot; : &quot;AND&quot;,
      &quot;rules&quot; : [ {
        &quot;data&quot; : &quot;true&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;field&quot; : &quot;NoAccountSelected&quot;
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
        <sequenceNumber>6.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetSameAccountSelectionError</name>
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
        &quot;field&quot; : &quot;SameAccountSelected&quot;,
        &quot;condition&quot; : &quot;=&quot;,
        &quot;data&quot; : &quot;true&quot;
      }, {
        &quot;field&quot; : &quot;NoAccountsFound&quot;,
        &quot;condition&quot; : &quot;&lt;&gt;&quot;,
        &quot;data&quot; : &quot;true&quot;
      } ]
    }
  },
  &quot;showPersistentComponent&quot; : [ true, false ],
  &quot;elementErrorMap&quot; : {
    &quot;SameAccountSelectionError&quot; : &quot;Same Account Selected&quot;
  },
  &quot;validationRequired&quot; : &quot;Step&quot;,
  &quot;label&quot; : &quot;SetSameAccountSelectionError&quot;,
  &quot;controlWidth&quot; : 12
}</propertySetConfig>
        <sequenceNumber>7.0</sequenceNumber>
        <type>Set Errors</type>
    </omniProcessElements>
    <omniProcessElements>
        <isActive>true</isActive>
        <isOmniScriptEmbeddable>false</isOmniScriptEmbeddable>
        <level>0.0</level>
        <name>SetSelectAccountValidation</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;&quot;,
  &quot;elementValueMap&quot; : {
    &quot;SameAccountSelected&quot; : &quot;=IF((%TransferFromSelection% !=null &amp;&amp; %TransferToSelection% !=null),IF(%TransferFromSelection:Id%==%TransferToSelection:Id%,true,false),false)&quot;,
    &quot;NoAccountSelected&quot; : &quot;=IF(%TransferFromSelection% == null || %TransferToSelection% == null, true, false)&quot;,
    &quot;NextButtonClickedWithoutAccountSelection&quot; : &quot;=true&quot;
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
  &quot;message&quot; : {
    &quot;vlocEvents&quot; : &quot;AccountPolicy&quot;
  },
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
        <name>SetTransferFundsToOwnAccountSummary</name>
        <omniProcessVersionNumber>0.0</omniProcessVersionNumber>
        <propertySetConfig>{
  &quot;controlWidth&quot; : 12,
  &quot;label&quot; : &quot;Set Transfer Funds To Own Account Summary&quot;,
  &quot;elementValueMap&quot; : {
    &quot;Summary&quot; : {
      &quot;TransferFromAccountName&quot; : &quot;%TransferFromSelection:Name%&quot;,
      &quot;TransferFromAccountNumber&quot; : &quot;%TransferFromSelection:AccountNumberLast4%&quot;,
      &quot;TransferFromAccount&quot; : &quot;%TransferFromSelection:FinancialAccountLabel%&quot;,
      &quot;TransferToAccountName&quot; : &quot;%TransferToSelection:Name%&quot;,
      &quot;TransferToAccountNumber&quot; : &quot;%TransferToSelection:AccountNumberLast4%&quot;,
      &quot;TransferToAccount&quot; : &quot;%TransferToSelection:FinancialAccountLabel%&quot;,
      &quot;TransferToType&quot; : &quot;%TransferToSelection:RecordTypeName%&quot;,
      &quot;TransferFromType&quot; : &quot;%TransferFromSelection:RecordTypeName%&quot;,
      &quot;Remarks&quot; : &quot;=IF(%Remarks%,%Remarks%,&apos;N/A&apos;)&quot;,
      &quot;TransferMode&quot; : &quot;%TransferMode%&quot;,
      &quot;TransferSchedule&quot; : &quot;%ScheduleTransferOptions%&quot;,
      &quot;StartDate&quot; : &quot;%StartDate%&quot;,
      &quot;EndDate&quot; : &quot;%EndDate%&quot;,
      &quot;Frequency&quot; : &quot;%Frequency%&quot;,
      &quot;Installment&quot; : &quot;%NumberOfInstallments%&quot;,
      &quot;CreditorLoanRecurringAmountTransferOption&quot; : &quot;=IF((%TransferToSelection:RecordTypeName% == &apos;Credit Card&apos; &amp;&amp; %TransferMode% == &apos;Recurring&apos;),%CreditCardDuesPaymentOption%,IF(((%TransferToSelection:RecordTypeName% == &apos;Mortgage&apos; || %TransferToSelection:RecordTypeName% == &apos;Loan Account&apos; || %TransferToSelection:RecordTypeName% == &apos;Auto Loan&apos; )&amp;&amp; %TransferMode% == &apos;Recurring&apos;),%LoanPaymentOption%,null))&quot;,
      &quot;CreditorLoanOneTimeAmount&quot; : &quot;=IF(((%TransferToSelection:RecordTypeName% == &apos;Credit Card&apos; || %TransferToSelection:RecordTypeName% == &apos;Mortgage&apos; || %TransferToSelection:RecordTypeName% == &apos;Loan Account&apos; || %TransferToSelection:RecordTypeName% == &apos;Auto Loan&apos; ) &amp;&amp; %TransferMode% == &apos;One-time&apos; &amp;&amp; %AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedRadioAmountOption:SelectedRadioValue% != &apos;Custom&apos;),%AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedRadioAmountOption:SelectedRadioValue%,IF(CONTAINS(%AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomAmountValue:CustomAmount%, &apos;.&apos;),CONCATENATE(%TransferToList:AccountCurrency%,&apos; &apos;,%AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomAmountValue:CustomAmount%),CONCATENATE(%TransferToList:AccountCurrency%,&apos; &apos;,%AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomAmountValue:CustomAmount%,&apos;.00&apos;)))&quot;,
      &quot;CreditorLoanTransferDate&quot; : &quot;=IF(((%TransferToSelection:RecordTypeName% == &apos;Credit Card&apos; || %TransferToSelection:RecordTypeName% == &apos;Mortgage&apos; || %TransferToSelection:RecordTypeName% == &apos;Loan Account&apos; || %TransferToSelection:RecordTypeName% == &apos;Auto Loan&apos; )&amp;&amp; %TransferMode% == &apos;One-time&apos; &amp;&amp; %AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedTransferSchedule:SelectedDateValue% != &apos;Custom Date&apos;),%AddFundTransferDetails:CreditOrLoanDestinationAccount:SelectedTransferSchedule:SelectedDateValue%,%AddFundTransferDetails:CreditOrLoanDestinationAccount:CustomDateValue:CustomDate%)&quot;,
      &quot;LoanAmountRecurring&quot; : &quot;=IF(((%TransferToSelection:RecordTypeName% == &apos;Mortgage&apos; || %TransferToSelection:RecordTypeName% == &apos;Loan Account&apos; || %TransferToSelection:RecordTypeName% == &apos;Auto Loan&apos;)&amp;&amp; CONTAINS(%LoanPaymentAmount%, &apos;.&apos;)),CONCATENATE(%TransferToList:AccountCurrency%,&apos; &apos;,%LoanPaymentAmount%),CONCATENATE(%TransferToList:AccountCurrency%,&apos; &apos;,%LoanPaymentAmount%,&apos;.00&apos;))&quot;,
      &quot;OtherAmount&quot; : &quot;=IF(((%TransferToSelection:RecordTypeName% != &apos;Credit Card&apos; &amp;&amp; %TransferToSelection:RecordTypeName% != &apos;Mortgage&apos; &amp;&amp; %TransferToSelection:RecordTypeName% != &apos;Loan Account&apos; &amp;&amp; %TransferToSelection:RecordTypeName% != &apos;Auto Loan&apos;)&amp;&amp; CONTAINS(%Amount%, &apos;.&apos;)),CONCATENATE(%TransferToList:AccountCurrency%,&apos; &apos;,%TransferAmount%),CONCATENATE(%TransferToList:AccountCurrency%,&apos; &apos;,%TransferAmount%,&apos;.00&apos;))&quot;,
      &quot;OtherTransferDate&quot; : &quot;=IF(((%TransferToSelection:RecordTypeName% != &apos;Credit Card&apos; &amp;&amp; %TransferToSelection:RecordTypeName% != &apos;Mortgage&apos; &amp;&amp; %TransferToSelection:RecordTypeName% != &apos;Loan Account&apos; &amp;&amp; %TransferToSelection:RecordTypeName% != &apos;Auto Loan&apos;) &amp;&amp; %TransferMode% == &apos;One-time&apos;),%OneTimeTransferDate%,null)&quot;,
      &quot;isCommunitySite&quot; : &quot;%isCommunitySite%&quot;
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
        <sequenceNumber>15.0</sequenceNumber>
        <type>Set Values</type>
    </omniProcessElements>
    <omniProcessType>OmniScript</omniProcessType>
    <propertySetConfig>{&quot;persistentComponent&quot;:[{&quot;render&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;sendJSONPath&quot;:&quot;&quot;,&quot;sendJSONNode&quot;:&quot;&quot;,&quot;responseJSONPath&quot;:&quot;&quot;,&quot;responseJSONNode&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcCart&quot;,&quot;itemsKey&quot;:&quot;cartItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;vlcProductConfig.html&quot;,&quot;modalController&quot;:&quot;ModalProductCtrl&quot;,&quot;modalSize&quot;:&quot;lg&quot;}},{&quot;render&quot;:false,&quot;dispOutsideOmni&quot;:false,&quot;label&quot;:&quot;&quot;,&quot;remoteClass&quot;:&quot;&quot;,&quot;remoteMethod&quot;:&quot;&quot;,&quot;remoteTimeout&quot;:30000,&quot;remoteOptions&quot;:{&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;},&quot;preTransformBundle&quot;:&quot;&quot;,&quot;postTransformBundle&quot;:&quot;&quot;,&quot;id&quot;:&quot;vlcKnowledge&quot;,&quot;itemsKey&quot;:&quot;knowledgeItems&quot;,&quot;modalConfigurationSetting&quot;:{&quot;modalHTMLTemplateId&quot;:&quot;&quot;,&quot;modalController&quot;:&quot;&quot;,&quot;modalSize&quot;:&quot;lg&quot;}}],&quot;allowSaveForLater&quot;:true,&quot;saveNameTemplate&quot;:null,&quot;saveExpireInDays&quot;:null,&quot;saveForLaterRedirectPageName&quot;:&quot;sflRedirect&quot;,&quot;saveForLaterRedirectTemplateUrl&quot;:&quot;vlcSaveForLaterAcknowledge.html&quot;,&quot;saveContentEncoded&quot;:false,&quot;saveObjectId&quot;:&quot;%ContextId%&quot;,&quot;saveURLPatterns&quot;:{},&quot;autoSaveOnStepNext&quot;:false,&quot;elementTypeToHTMLTemplateMapping&quot;:{},&quot;seedDataJSON&quot;:{},&quot;trackingCustomData&quot;:{},&quot;enableKnowledge&quot;:false,&quot;bLK&quot;:false,&quot;lkObjName&quot;:null,&quot;knowledgeArticleTypeQueryFieldsMap&quot;:{},&quot;timeTracking&quot;:false,&quot;hideStepChart&quot;:false,&quot;mergeSavedData&quot;:false,&quot;visualforcePagesAvailableInPreview&quot;:{},&quot;cancelType&quot;:&quot;SObject&quot;,&quot;allowCancel&quot;:true,&quot;cancelSource&quot;:&quot;%ContextId%&quot;,&quot;cancelRedirectPageName&quot;:&quot;OmniScriptCancelled&quot;,&quot;cancelRedirectTemplateUrl&quot;:&quot;vlcCancelled.html&quot;,&quot;consoleTabLabel&quot;:&quot;New&quot;,&quot;wpm&quot;:false,&quot;ssm&quot;:false,&quot;message&quot;:{},&quot;pubsub&quot;:false,&quot;autoFocus&quot;:false,&quot;currencyCode&quot;:&quot;&quot;,&quot;showInputWidth&quot;:false,&quot;rtpSeed&quot;:false,&quot;consoleTabTitle&quot;:&quot;Transfer Funds to Own Account&quot;,&quot;consoleTabIcon&quot;:&quot;custom:custom18&quot;,&quot;errorMessage&quot;:{&quot;custom&quot;:[]},&quot;stylesheet&quot;:{&quot;newport&quot;:&quot;&quot;,&quot;lightning&quot;:&quot;TransferFundstoOwnAccountCSS&quot;,&quot;newportRtl&quot;:&quot;&quot;,&quot;lightningRtl&quot;:&quot;&quot;},&quot;stepChartPlacement&quot;:&quot;right&quot;,&quot;disableUnloadWarn&quot;:true,&quot;scrollBehavior&quot;:&quot;auto&quot;,&quot;currentLanguage&quot;:&quot;en_US&quot;}</propertySetConfig>
    <subType>TransferFundstoOwnAccount</subType>
    <type>FSC</type>
    <uniqueName>FSC_TransferFundstoOwnAccount_English_2</uniqueName>
    <versionNumber>2.0</versionNumber>
    <webComponentKey>1925f157-7d58-1aa3-3dc4-48cca27a0d7a</webComponentKey>
</OmniScript>
