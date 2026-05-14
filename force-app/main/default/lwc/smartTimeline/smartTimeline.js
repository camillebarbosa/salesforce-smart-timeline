import { LightningElement, api } from 'lwc';

import getCaseCreatedEvent
from '@salesforce/apex/CaseTimelineController.getCaseCreatedEvent';

export default class CaseTimeline extends LightningElement {

    @api recordId;


    timelineItem;

    connectedCallback() {

        this.loadTimeline();
    }

    async loadTimeline() {

        try {

            const result =
                await getCaseCreatedEvent({
                    caseId: this.recordId
                });

            this.timelineItem = result;

            console.log(
                'Response apex',
                JSON.stringify(result)
            );

        } catch(error) {

            console.error(error);
        }
    }

    get formattedDate() {

        if(!this.timelineItem?.createdDate) {
            return '';
        }

        return new Date(
            this.timelineItem.createdDate
        ).toLocaleDateString('pt-BR');
    }

    get formattedTime() {

        if(!this.timelineItem?.createdDate) {
            return '';
        }

        return new Date(
            this.timelineItem.createdDate
        ).toLocaleTimeString('pt-BR', {
            hour: '2-digit',
            minute: '2-digit'
        });
    }
}