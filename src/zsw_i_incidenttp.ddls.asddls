@EndUserText.label: 'Incident'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZSW_I_IncidentTP
  as projection on ZSW_R_IncidentTP
{
      @UI.facet: [
      {
          id:         'GeneralInfo',
          purpose:    #STANDARD,
          type:       #COLLECTION,
          importance: #HIGH,
          position:   10,
          label:      'General Loss Information'
      },
      //  {
      //      parentId: 'generalLossInfoFacet',
      //      id:         'generalLossInfoFacetId',
      //      purpose:    #STANDARD,
      //      type:       #FIELDGROUP_REFERENCE,
      //      importance: #HIGH,
      //      position:   10,
      //     // label:      'General Loss Information',
      //      targetQualifier: 'generalLossInfo'
      //    },


        {
            parentId: 'GeneralInfo',
            purpose: #STANDARD,
            position: 10,
            importance: #HIGH,
            type: #IDENTIFICATION_REFERENCE,
            label: 'Loss'
        }
      ]



      @UI.lineItem: [{ position: 10, label: 'ID' }]
      @UI.identification: [{ position: 10, label: 'ID' }]
  key Id,
      @UI.lineItem: [{ position: 20, label: 'Incident Date' }]
      @UI.identification: [{ position: 20, label: 'Incident Date' }]
      IncidentDate,
      @UI.lineItem: [{ position: 30, label: 'Incident Time' }]
      @UI.identification: [{ position: 30, label: 'Incident Time' }]
      IncidentTime
}
