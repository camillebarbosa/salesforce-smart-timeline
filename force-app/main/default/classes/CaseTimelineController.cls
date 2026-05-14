/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-12-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CaseTimelineController {

    @AuraEnabled(cacheable=true)
    public static TimelineItemDTO getCaseCreatedEvent(Id caseId) {

        Case c = [
            SELECT Id,
                   CreatedDate,
                   CreatedBy.Name,
                   Origin,
                   Status,
                   Priority
            FROM Case
            WHERE Id = :caseId
            LIMIT 1
        ];

        TimelineItemDTO item = new TimelineItemDTO();

        item.title = 'Case criado';
        item.description = 'Por: ' + c.CreatedBy.Name;
        item.secondaryInfo = 'Origem: ' + c.Origin;
        item.status = c.Status;
        item.priority = c.Priority;
        item.createdDate = c.CreatedDate;
        item.icon = 'utility:add';
        item.variant = 'success';

        return item;
    }

    public class TimelineItemDTO {

        @AuraEnabled public String title;
        @AuraEnabled public String description;
        @AuraEnabled public String secondaryInfo;
        @AuraEnabled public String status;
        @AuraEnabled public String priority;
        @AuraEnabled public Datetime createdDate;
        @AuraEnabled public String icon;
        @AuraEnabled public String variant;

    }
}