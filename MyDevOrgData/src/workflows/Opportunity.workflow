<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_to_Opportunitu_Owner_if_Stage_is_Closed_won</fullName>
        <description>Email to Opportunitu Owner if Stage is Closed won</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Oppo_Stage_from_New_to_CW</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_stage_email_alert</fullName>
        <description>Opportunity stage email alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Oppo_Stage_from_New_to_CW</template>
    </alerts>
    <fieldUpdates>
        <fullName>stage_from_new_to_closed_won</fullName>
        <field>workflow_field__c</field>
        <literalValue>1</literalValue>
        <name>stage from new to closed won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Oppo Stage from New to CW</fullName>
        <actions>
            <name>Opportunity_stage_email_alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>IF(ISPICKVAL(PRIORVALUE(StageName),&quot;New&quot;)&amp;&amp; ISPICKVAL(StageName , &quot;Closed Won&quot;),true,false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
