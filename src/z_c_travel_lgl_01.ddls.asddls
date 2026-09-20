@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel - Consumption (Projection entity)'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_TRAVEL_LGL_01 
provider contract transactional_query
as projection on Z_R_TRAVEL_LGL_01
{
    key TravelUUID,
    TravelID,
    
    //@ObjectModel.text.element: [ 'AgencyName', 'AgencyName2']
    @ObjectModel.text.element: [ 'AgencyName' ]
    AgencyID,
    _Agency.Name as AgencyName,
    //_Agency.Name as AgencyName2,
    
    @ObjectModel.text.element: [ 'CustomerName' ]
    CustomerID,
    _Customer.LastName as CustomerName,
    
    
    BeginDate,
    EndDate,
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    CurrencyCode,
    Description,
    
    OverallStatus,
    _OverallStatus._Text.Text as OverallStatusText: localized,
    //_OverallStatus._Text[1: Language = $session.system_language].Text as OverallStatusText,
    
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    LastChangedAt,
    /* Associations */
    _Agency,
    _Currency,
    _Customer,
    _OverallStatus
}
