@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.sapObjectNodeType.name: 'ZRAP100_ATRAVROM'
define root view entity ZC_RAP100_ATRAVROM
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_RAP100_ATRAVROM
{
  key TravelId,
  AgencyId,
  CustomerId,
  BeginDate,
  EndDate,
  BookingFee,
  TotalPrice,
  @Semantics.currencyCode: true
  CurrencyCode,
  Description,
  OverallStatus,
  Attachment,
  MimeType,
  FileName,
  CreatedBy,
  CreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
