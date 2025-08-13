@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.sapObjectNodeType.name: 'ZRAP100_ATRAVROM'
@Search.searchable: true
@ObjectModel.semanticKey: [ 'TravelId' ]
define root view entity ZC_RAP100_ATRAVROM
  provider contract transactional_query
  as projection on ZR_RAP100_ATRAVROM
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
  key TravelId,
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['AgencyName'] 
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency_StdVH', element: 'AgencyID' }, useForValidation: true }]
      AgencyId,

      _Agency.Name              as AgencyName,
      CustomerId,
      _Customer.LastName        as CustomerName,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      @Semantics.currencyCode: true
      CurrencyCode,
      Description,
      @ObjectModel.text.element: ['OverallStatusText'] 
      @Consumption.valueHelpDefinition: [{ entity: {name: '/DMO/I_Overall_Status_VH', element: 'OverallStatus' }, useForValidation: true }]
      OverallStatus,
      _OverallStatus._Text.Text as OverallStatusText : localized,
      Attachment,
      MimeType,
      FileName,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt

}
