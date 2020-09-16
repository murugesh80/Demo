PROGRAM  zrggbr000.
*----------------------------------------------------------------------*
* Program Name           : ZRGGBR000                                   *
* Technical consultant   : Julio Gomez (JDG)                           *
* Functional Consultant  : German Heit                                 *
* Date of Creation       : 19.04.2013                                  *
* Transport Request No   : EPDK910426                                  *
* FS Document Number     : FS-FI_FI27_PAC_Validation                   *
* TS Document Number     : TS-FI_FI27_PAC_Validation                   *
* Description            : PAC Validation for trx. FB60, FB65 and MIRO *
*----------------------------------------------------------------------*
* Modified By            : F. Catriel Romani (FCR)                     *
* Date of Modification   : 26.06.2013                                  *
* Change Request No      : EPDK912080                                  *
* Reason Of Modification : PAC Validation for trx. FB60, FB65 and MIRO *
*----------------------------------------------------------------------*
* Modified By            : Nijin Shah                                  *
* Date of Modification   : 18.03.2015                                  *
* Change Request No      : EPDK935223                                  *
* Reason Of Modification : Vendor Downpayment Restion for PE10         *
*----------------------------------------------------------------------*
* Modified By            : Nijin Shah                                  *
* Date of Modification   : 04.06.2015                                  *
* Change Request No      : EPDK937276                                  *
* Reason Of Modification : Vendor Downpayment Restion for PE10         *
*                          To consider PO Header Data and to avoid PO  *
*                          type check                                  *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Modified By            : Ravindra Kumar VVN                          *
* Date of Modification   : 11.06.2015                                  *
* Change Request No      : EPDK939174                                  *
* Reason Of Modification : Vendor Downpayment Restion for PE10         *
*                          To consider Advanced payment message for    *
*                          special indicator '+' and 'A'               *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Modified By            : Ravindra Kumar VVN                          *
* Date of Modification   : 30.06.2015                                  *
* Change Request No      : EPDK939922                                  *
* Reason Of Modification : Vendor Downpayment Restion for PE10         *
*                          To consider Advanced payment message for    *
*                          special indicator 'A' Vendor DR amount      *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Modified By            : Ravindra Kumar VVN                          *
* Date of Modification   : 27.07.2015                                  *
* Change Request No      : EPDK941078                                  *
* Reason Of Modification : Vendor Downpayment Restion for PE10         *
*                          To consider Advanced payment message for    *
*                          special indicator 'A' Vendor DR amount      *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Modified By            : Ravindra Kumar VVN                          *
* Date of Modification   : 13.08.2015                                  *
* Change Request No      : EPDK941886                                  *
* Reason Of Modification : Vendor Downpayment Restion for PE10         *
*                          To consider Interlocator logic change       *
*----------------------------------------------------------------------*
* Modified By            : Viswanathan S                               *
* Date of Modification   : 13.oct.2015                                 *
* Change Request No      : EPDK942207                                  *
* Reason Of Modification : VN10 header text popup                      *
*                          To consider Interlocator logic change       *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Modified By            : Murugesan Thavasi                           *
* Date of Modification   : 14.10.2015                                  *
* Change Request No      : EPDK943766                                  *
* Reason Of Modification : Add Spl GL indicator B along with 'A' in    *
*                          user exit Z006                              *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Modified By            : Ramesh.T                                    *
* Date of Modification   : 21.12.2015                                  *
* Change Request No      : EPDK947201                                  *
* Reason Of Modification :                                             *
* System should check only credit limit of supplying vendor not the    *
* invoicing vendor, Vendor credit limit should be checked only if      *
* the PO type is Z001 and also it should check the credit limit only   *
* to vendor account created in purchase org. PE11, PE01, PE04 and      *
* PE14 - user exit Z006                                                *
*----------------------------------------------------------------------*
* Modified By            : Ramesh.T                                    *
* Date of Modification   : 24.12.2015                                  *
* Change Request No      : EPDK947944                                  *
* Reason Of Modification : form Z008 removed                           *
*----------------------------------------------------------------------*
* Modified By            : Prasanna Kumar T.                           *
* Date of Modification   : 13.04.2016                                  *
* Change Request No      : EPDK953677                                  *
* Reason Of Modification : 4000000358 - User Exit "Z009" - Vendor      *
*                          Credit Limit check for Colombia             *
*----------------------------------------------------------------------*
* Modified By            : Kabilan M                                   *
* Date of Modification   : 11.08.2016                                  *
* Change Request No      : EPDK961930                                  *
* Reason Of Modification : 4000000961 - User Exit "Z004" - Changed the *
*                          the logic to update the posting date field  *
*                          value                                       *
*----------------------------------------------------------------------*
* Modified By            : Ramesh.T                                    *
* Date of Modification   : 24.08.2016                                  *
* Change Request No      : EPDK962861                                  *
* Reason Of Modification : 4000001014 - New Substitutions Exit "Z010"  *
*                          Vendor Credit Limit check for Nicaragua     *
*----------------------------------------------------------------------*
* Modified By            : Nijin Shah                                  *
* Reason Of Modification : 4000002476 - GST Number and Classification  *
*                                       check                          *
*----------------------------------------------------------------------*
* Modified By            : Kabilan M                                   *
* Transport request      : EPDK984477                                  *
* Reason Of Modification :Charm ID-4000002481, REFDOC field in table   *
*                         ZSGEVTTR_DC_MANL  should update  with sale   *
*                         contract number instead of updating PO number*
*----------------------------------------------------------------------*
* Modified By            : Karthik Jawahar                             *
*Charm ID                : 4000002596                                  *
* Transport request      : EPDK986658                                  *
* Reason Of Modification : The requirement is to have a control check  *
*                          on text field entered in FI documents       *
*----------------------------------------------------------------------*
* Modified By            : Madhivannan Senathipathi                    *
* Charm ID               : 4000003642                                  *
* Transport request      : EPDK986658                                  *
* Reason Of Modification : The requirement is to validate the business *
*                          area for particular customer in FI postings *
* Exit                   : Z018                                        *
*----------------------------------------------------------------------*
* Modified By            : Vikas Goyal                    *
* Charm ID               : 4000005800                                  *
* Transport request      : EPDK9A0MPD                                  *
* Reason Of Modification : The requirement is to avoid Duplicate       *
*                          Posting for noted line items through BAPI   *
* Exit                   : Z019                                        *
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Program Name           : MV45AFZZ                                    *
* Technical consultant   : Prabhakaran M                               *
* Functional Consultant  : Sharada Subramanian                         *
* Date of Creation       : 03.12.2018                                  *
* Transport Request No   : EPDK9A0J1Q                                  *
* Charm ID               : 4000005478                                  *
* Description            : Make DMS Files as mandatory                 *
* Exit                   : Z017                                        *
*----------------------------------------------------------------------*
* Modified By            : Prabakaran K                                *
* Date of Modification   : 04.04.2019                                  *
* Change Request No      : 4000006424                                  *
* Reason Of Modification : Z020                                        *
*----------------------------------------------------------------------*
* Modified By            : Nooruddin Bohra                             *
* Date of Modification   : 04.10.2019                                  *
* Change Request No      : 4000008289                                  *
* Reason Of Modification : User exit Broker Vendor and Currency        *
*----------------------------------------------------------------------*
* Modified By            : Nooruddin Bohra                             *
* Date of Modification   : 24.10.2019                                  *
* Change Request No      : 4000008358                                  *
* Reason Of Modification : User exit Payment method variant validation *
*----------------------------------------------------------------------*
* Modified By            : Madhivannan Senathipathi                    *
* Charm ID               : 4000010139                                  *
* Transport request      : EPDK9A1TEZ                                  *
* Reason Of Modification : Changes for checking Broker account with    *
*                          vendor                                      *
* Exit                   : Z022                                        *
*----------------------------------------------------------------------*
* Technical consultant   : Prabhakaran M                               *
* Functional Consultant  : Raghul rathi                                *
* Date of Creation       : 02.07.2020                                  *
* Transport Request No   : EPDK9A2110                                  *
* Charm ID               : 4000011002                                  *
* Description            : Ghana GL PC Validation                      *
* Exit                   : Z024                                        *
*----------------------------------------------------------------------*
*---------------------------------------------------------------------*
*                                                                     *
*   Regeln: EXIT-Formpool for Uxxx-Exits                              *
*                                                                     *
*   This formpool is used by SAP for demonstration purposes only.     *
*                                                                     *
*   Note: If you define a new user exit, you have to enter your       *
*         user exit in the form routine GET_EXIT_TITLES.              *
*                                                                     *
*---------------------------------------------------------------------*
INCLUDE fgbbgd00.               "Data types


*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*
*    PLEASE INCLUDE THE FOLLOWING "TYPE-POOL"  AND "TABLES" COMMANDS  *
*        IF THE ACCOUNTING MODULE IS INSTALLED IN YOUR SYSTEM         *
*TYPE-POOLS: GB002. " TO BE INCLUDED IN
*TABLES: BKPF,      " ANY SYSTEM THAT
*        BSEG,      " HAS 'FI' INSTALLED
*        COBL,
*        GLU1.
*ENHANCEMENT-POINT RGGBR000_01 SPOTS ES_RGGBR000 STATIC.
*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*


*----------------------------------------------------------------------*
*       FORM GET_EXIT_TITLES                                           *
*----------------------------------------------------------------------*
*       returns name and title of all available standard-exits         *
*       every exit in this formpool has to be added to this form.      *
*       You have to specify a parameter type in order to enable the    *
*       code generation program to determine correctly how to          *
*       generate the user exit call, i.e. how many and what kind of    *
*       parameter(s) are used in the user exit.                        *
*       The following parameter types exist:                           *
*                                                                      *
*       TYPE                Description              Usage             *
*    ------------------------------------------------------------      *
*       C_EXIT_PARAM_NONE   Use no parameter         Subst. and Valid. *
*                           except B_RESULT                            *
*       C_EXIT_PARAM_CLASS  Use a type as parameter  Subst. and Valid  *
*----------------------------------------------------------------------*
*  -->  EXIT_TAB  table with exit-name and exit-titles                 *
*                 structure: NAME(5), PARAM(1), TITEL(60)
*----------------------------------------------------------------------*
*----------------------------------------------------------------------*
* Program Name           : ZRGGBR000                                   *
* Technical consultant   : S.Sriram                                    *
* Functional Consultant  : Jai sankar                                  *
* Date of Creation       : 19.09.2013                                  *
* Transport Request No   : EPDK911996                                  *
* FS Document Number     :                                             *
* TS Document Number     :                                             *
* Description            :                                             *
*----------------------------------------------------------------------*
* Modified By            : Ravindra Kumar V V N                        *
* Date of Modification   : 24.12.2013                                  *
* Change Request No      : EPDK917456                                  *
* Reason Of Modification : User exit for Vendor duplicate invoice check*
*----------------------------------------------------------------------*
* Modified By            : Ramkumar Rajendran                          *
* Date of Modification   : 19.08.2019                                  *
* Change Request No      : 4000007812 / EPDK9A16J4                     *
* Reason Of Modification : User exit for vendor and business area      *
*                          validattion.
*----------------------------------------------------------------------*
DATA: lv_test TYPE string.

TABLES : zgtfitr_refk.
*&---------------------------------------------------------------------*
*&      Form  get_exit_titles
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->ETAB       text
*----------------------------------------------------------------------*
FORM get_exit_titles TABLES etab.

  DATA: BEGIN OF exits OCCURS 50,
          name(5)   TYPE c,
          param     LIKE c_exit_param_none,
          title(60) TYPE c,
        END OF exits.
*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
* PLEASE DELETE THE FIRST '*' FORM THE BEGINING OF THE FOLLOWING LINES *
*        IF THE ACCOUNTING MODULE IS INSTALLED IN YOUR SYSTEM:         *
*  EXITS-NAME  = 'U101'.
*  EXITS-PARAM = C_EXIT_PARAM_CLASS.
*  EXITS-TITLE = TEXT-100.                 "Posting date check
*  APPEND EXITS.

  exits-name  = 'U100'.
  exits-param = c_exit_param_none.        "Complete data used in exit.
  exits-title = text-101.                 "Posting date check
  APPEND exits.

* forms for SAP_EIS
  exits-name  = 'US001'.                  "single validation: only one
  exits-param = c_exit_param_none.        "data record used
  exits-title = text-102.                 "Example EIS
  APPEND exits.

  exits-name  = 'UM001'.                  "matrix validation:
  exits-param = c_exit_param_class.       "complete data used in exit.
  exits-title = text-103.                 "Example EIS
  APPEND exits.

*>>> BEGIN INSERT <<< FCR - 15.04.2013
  exits-name  = 'Z001'.
  exits-param = c_exit_param_none.
  exits-title = text-104. "PAC Validation (Table)
  APPEND exits.

  exits-name  = 'Z002'.
  exits-param = c_exit_param_none.
  exits-title = text-105. "PAC Validation (Date)
  APPEND exits.
*>>> END INSERT <<< FCR - 15.04.2013
*>>> BEGIN INSERT <<<  - 4.06.2013
  exits-name  = 'Z003'.
  exits-param = c_exit_param_none.
  exits-title = text-106. " Duplicate Invoice check
  APPEND exits.
*>>> END INSERT <<< - 4.06.2013

*  Added by s.sriram on 19.09.2013 starts
  exits-name  = 'Z004'.
  exits-param = c_exit_param_none.
  exits-title = text-107.
  APPEND exits.
*  Added by s.sriram on 19.09.2013 ends

* Begin of Changes for EPDK917456 on 24.12.2013
  exits-name  = 'Z005'.
  exits-param = c_exit_param_none.
  exits-title = text-108. " Duplicate Invoice check for Vendor
  APPEND exits.
* End of Changes for EPDK917456 on 24.12.2013

* Begin of Changes on 03.10.2015
  exits-name  = 'Z006'.
  exits-param = c_exit_param_none.
  exits-title = text-109.
  APPEND exits.

*****  Included by Viswanathan S TR EPDK942207
*
*  exits-name  = 'Z007'.
*  exits-param = c_exit_param_none.
*  exits-title = text-119.
*  APPEND exits .


****   End of Inclusion

** Begin - Removed for PERUFIENHA1-C6
* Begin of Changes on 14.10.2015 by Murugesan Thavasi
**  exits-name  = 'Z008'.
**  exits-param = c_exit_param_none.
**  exits-title = text-119.
**  APPEND exits.
*******End Changes
** End - Removed for PERUFIENHA1-C6

* End of Changes for  EPDK935223 on 03.10.2015

* Start of Insert - EPDK953677
  exits-name  = 'Z009'.
  exits-param = c_exit_param_none.
  exits-title = 'Verificación del límite de crédito en la factura del proveedor Parte'(111).
  APPEND exits.
****   End of Inclusion - EPDK953677

* Start of Insert - EPDK962861
  exits-name  = 'Z010'.
  exits-param = c_exit_param_none.
  exits-title = 'Verificación del límite de crédito en la factura del proveedor Parte'(111).
  APPEND exits.
* End of Insert - EPDK962861

*Start of change Charm ID 4000001294 #TR-EPDK966786
  exits-name  = 'Z011'.
  exits-param = c_exit_param_none.
  exits-title = 'Mejora de la fecha de corte OFS'(030).
  APPEND exits.
*End of change   Charm ID 4000001294 #TR-EPDK966786

*Start of change Charm ID 4000001532 #TR-EPDK969084
  exits-name  = 'Z012'.
  exits-param = c_exit_param_none.
  exits-title = text-031.  "'Additional fields in FB60,FB65 & MIGO as Popup and Display in F110'
  APPEND exits.
*End of change   Charm ID 4000001532 #TR-EPDK969084

*Start of change Charm ID 4000002476
  exits-name  = 'Z014'.
  exits-param = c_exit_param_none.
  exits-title = text-033.  "Vendor Classification Validation for GST
  APPEND exits.
*End of change   Charm ID 4000002476

****Begin of change for Charm ID 4000002596  & TR: EPDK986658****
  exits-name  = 'Z016'.
  exits-param = c_exit_param_none.
  exits-title = text-112.  "Text Validation
  APPEND exits.
****End of change for Charm ID 4000002596  & TR: EPDK986658****


  " 4000002613 Start
  exits-name  = 'Z017'.
  exits-param = c_exit_param_none.
  exits-title = text-113.  "DMS Validation
  APPEND exits.
  " 4000002613 End

*--Begin of change Charm ID 4000003642   Madhivannan S  TR:EPDK9A00GC
  exits-name  = 'Z018'.
  exits-param = c_exit_param_none.
  exits-title = text-114.  "Business area validation based on customer
  APPEND exits.
*--End of change   Charm ID 4000003642   Madhivannan S  TR:EPDK9A00GC

*--Begin of change Charm ID 4000005800  Vikas Goyal S  TR:EPDK9A0MPD
  exits-name  = 'Z019'.
  exits-param = c_exit_param_none.
  exits-title = text-115.  "Duplicate Check
  APPEND exits.
*--End of change   Charm ID 4000005800   Vikas Goyal S  TR:EPDK9A0MPD

*--Begin of change Charm: 4000006424  TR: EPDK9A0U1O
  exits-name  = 'Z020'.
  exits-param = c_exit_param_none.
  exits-title = text-116.  "Bank and provision account validation
  APPEND exits.
* Clearing the data from memory
  FREE MEMORY ID 'BSG'.
*--End of change Charm: 4000006424  TR: EPDK9A0U1O

* Begin of change for charms 4000007812 / EPDK9A16J4
  exits-name  = 'Z021'.
  exits-param = c_exit_param_none.
  exits-title = text-117.  "Vendor and Business Area validation
  APPEND exits.
* End of change for charms 4000007812 / EPDK9A16J4

*& Begin of + by Nooru on 04.10.2019 Charm: 4000008289
  exits-name  = 'Z022'.
  exits-param = c_exit_param_none.
  exits-title = text-118.  "Broker and Currency Validation
  APPEND exits.
*& End of + by Nooru on 04.10.2019 Charm: 4000008289

*& Begin of + by Nooru on 04.10.2019 Charm: 4000008358
  exits-name  = 'Z023'.
  exits-param = c_exit_param_none.
  exits-title = text-119.  "Payment Method Validation
  APPEND exits.
*& End of + by Nooru on 04.10.2019 Charm: 4000008358

*** Start of change Charm ID 4000011002
  exits-name  = 'Z024'.
  exits-param = c_exit_param_none.
  exits-title = text-120.
  APPEND exits.
*** End of change   Charm ID 4000011002

***********************************************************************
** EXIT EXAMPLES FROM PUBLIC SECTOR INDUSTRY SOLUTION
**
** PLEASE DELETE THE FIRST '*' FORM THE BEGINING OF THE FOLLOWING LINE
** TO ENABLE PUBLIC SECTOR EXAMPLE SUBSTITUTION EXITS
***********************************************************************
  INCLUDE rggbr_ps_titles.

***********************************************************************
** EXIT EXAMPLES FROM Argentina Legal Change - Law Res 177
***********************************************************************
  INCLUDE rggbs_ar_titles.

  REFRESH etab.
  LOOP AT exits.
    etab = exits.
    APPEND etab.
  ENDLOOP.

ENDFORM.                    "GET_EXIT_TITLES

*eject
*----------------------------------------------------------------------*
*       FORM U100                                                      *
*----------------------------------------------------------------------*
*       Example of an exit for a boolean rule                          *
*       This exit can be used in FI for callup points 1,2 or 3.        *
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM u100  USING b_result.

*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
* PLEASE DELETE THE FIRST '*' FORM THE BEGINING OF THE FOLLOWING LINES *
*        IF THE ACCOUNTING MODULE IS INSTALLED IN YOUR SYSTEM:         *
*
*   IF SY-DATUM = BKPF-BUDAT.
*     B_RESULT  = B_TRUE.
*  ELSE.
*    B_RESULT  = B_FALSE.
*  ENDIF.

*ENHANCEMENT-POINT RGGBR000_02 SPOTS ES_RGGBR000 STATIC.

*ENHANCEMENT-POINT RGGBR000_03 SPOTS ES_RGGBR000.


ENDFORM.                                                    "U100

*eject
*----------------------------------------------------------------------*
*       FORM U101                                                      *
*----------------------------------------------------------------------*
*       Example of an exit using the complete data from one            *
*       multi-line rule.                                               *
*       This exit is intended for use from callup point 3, in FI.      *
*                                                                      *
*       If account 400000 is used, then account 399999 must be posted  *
*       to in another posting line.                                    *
*----------------------------------------------------------------------*
*  -->  BOOL_DATA   The complete posting data.                         *
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*

*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
* PLEASE DELETE THE FIRST '*' FORM THE BEGINING OF THE FOLLOWING LINES *
*        IF THE ACCOUNTING MODULE IS INSTALLED IN YOUR SYSTEM:         *
*FORM u101 USING    bool_data TYPE gb002_015
*          CHANGING B_RESULT.
*  DATA: B_ACC_400000_USED LIKE D_BOOL VALUE 'F'.
*
*  B_RESULT = B_TRUE.
** Has account 400000 has been used?
*  LOOP AT BOOL_DATA-BSEG INTO BSEG
*                 WHERE HKONT  = '0000400000'.
*     B_ACC_400000_USED = B_TRUE.
*     EXIT.
*  ENDLOOP.
*
** Check that account 400000 has been used.
*  CHECK B_ACC_400000_USED = B_TRUE.
*
*  B_RESULT = B_FALSE.
*  LOOP AT BOOL_DATA-BSEG INTO BSEG
*                 WHERE HKONT  = '0000399999'.
*     B_RESULT = B_TRUE.
*     EXIT.
* ENDLOOP.
*
*ENDFORM.

*eject
*----------------------------------------------------------------------*
*       FORM US001
*----------------------------------------------------------------------*
*       Example of an exit for a boolean rule in SAP-EIS
*       for aspect 001 (single validation).
*       one data record is transfered in structure CF<asspect>
*----------------------------------------------------------------------
*       Attention: for any FORM one has to make an entry in the
*       form GET_EXIT_TITLES at the beginning of this include
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM us001 USING b_result.

*TABLES CF001.                                 "table name aspect 001
*
*  IF ( CF001-SPART = '00000001' OR
*       CF001-GEBIE = '00000001' ) AND
*       CF001-ERLOS >= '1000000'.
*
**   further checks ...
*
*    B_RESULT  = B_TRUE.
*  ELSE.
*
**   further checks ...
*
*    B_RESULT  = B_FALSE.
*  ENDIF.

ENDFORM.                                                    "US001

*eject
*----------------------------------------------------------------------*
*       FORM UM001
*----------------------------------------------------------------------*
*       Example of an exit for a boolean rule in SAP-EIS
*       for aspect 001 (matrix validation).
*       Data is transfered in BOOL_DATA:
*       BOOL_DATA-CF<aspect> is intern table of structure CF<asspect>
*----------------------------------------------------------------------
*       Attention: for any FORM one has to make an entry in the
*       form GET_EXIT_TITLES at the beginning of this include
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM um001 USING bool_data    "TYPE GB002_<boolean class of aspect 001>
           CHANGING b_result.

*DATA: LC_CF001 LIKE CF001.
*DATA: LC_COUNT TYPE I.

*  B_RESULT = B_TRUE.
*  CLEAR LC_COUNT.
*  process data records in BOOL_DATA
*  LOOP AT BOOL_DATA-CF001 INTO LC_CF001.
*    IF LC_CF001-SPART = '00000001'.
*      ADD 1 TO LC_COUNT.
*      IF LC_COUNT >= 2.
**       division '00000001' may only occur once !
*        B_RESULT = B_FALSE.
*        EXIT.
*      ENDIF.
*    ENDIF.
*
**   further checks ....
*
*  ENDLOOP.

ENDFORM.                                                    "UM001


***********************************************************************
** EXIT EXAMPLES FROM PUBLIC SECTOR INDUSTRY SOLUTION
**
** PLEASE DELETE THE FIRST '*' FORM THE BEGINING OF THE FOLLOWING LINE
** TO ENABLE PUBLIC SECTOR EXAMPLE SUBSTITUTION EXITS
***********************************************************************
*INCLUDE rggbr_ps_forms.

***********************************************************************
** EXIT EXAMPLES FROM Argentina Legal Change - Law Res 177
***********************************************************************
INCLUDE rggbs_ar_forms.

*>>> BEGIN INSERT <<< FCR - 15.04.2013
*----------------------------------------------------------------------*
*       FORM Z001
*----------------------------------------------------------------------*
*       PAC Validation (Table)
*----------------------------------------------------------------------
*       Attention: for any FORM one has to make an entry in the
*       form GET_EXIT_TITLES at the beginning of this include
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z001 USING b_result.

  DATA: wa_j_1apack1 TYPE j_1apack1.

  CHECK bseg-lifnr IS NOT INITIAL.

* Printing Authorization Code for Vendors
  SELECT SINGLE *
  FROM j_1apack1
  INTO wa_j_1apack1
  WHERE lifnr EQ bseg-lifnr.                            "#EC CI_GENBUFF

  IF sy-subrc EQ 0.
    b_result = b_true. "CAI Non-existent
  ELSE.
    b_result = b_false. "CAI Existent
  ENDIF.

ENDFORM.                                                    "Z001

*----------------------------------------------------------------------*
*       FORM Z002
*----------------------------------------------------------------------*
*       PAC Validation (Date)
*----------------------------------------------------------------------
*       Attention: for any FORM one has to make an entry in the
*       form GET_EXIT_TITLES at the beginning of this include
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z002 USING b_result.

  DATA: lt_j_1apack1 TYPE STANDARD TABLE OF j_1apack1,
        v_doccls     TYPE j_1apack1-doccls.
  CONSTANTS: c_land1 TYPE j_1apack1-land1 VALUE 'AR'.

  REFRESH: lt_j_1apack1.

  CHECK bkpf-blart IS NOT INITIAL
  AND   bkpf-xblnr IS NOT INITIAL
  AND   bkpf-bldat IS NOT INITIAL
  AND   bseg-lifnr IS NOT INITIAL.

* Document Type
  CASE bkpf-blart.
    WHEN 'KR' OR 'KS' OR 'KT' OR 'RE'.
      v_doccls = 'A'.
    WHEN 'KA'.
      v_doccls = 'D'.
    WHEN 'KG'.
      v_doccls = 'C'.
    WHEN OTHERS.
      EXIT.
  ENDCASE.

* Printing Authorization Code for Vendors
  SELECT *
  FROM j_1apack1
  INTO TABLE lt_j_1apack1
  WHERE lifnr      EQ bseg-lifnr
  AND   land1      EQ c_land1
  AND   brnch      EQ bkpf-xblnr(4)
  AND   doccls     EQ v_doccls
  AND   j_1aprtchr EQ bkpf-xblnr+4(1)
  AND   j_1apacvd  GE bkpf-bldat.                       "#EC CI_GENBUFF

  IF sy-subrc EQ 0.
    b_result = b_true. "CAI Unexpired
  ELSE.
    b_result = b_false. "CAI Expired
  ENDIF.

ENDFORM.                                                    "Z002
*>>> END INSERT <<< FCR - 15.04.2013
*&---------------------------------------------------------------------*
*&      Form  z003
*&---------------------------------------------------------------------*
*       Validation for Duplicate Invoice check for Customer
*----------------------------------------------------------------------*
*      -->B_RESULT   text
*----------------------------------------------------------------------*
FORM z003 USING b_result.

  TYPES : BEGIN OF ty_bkpf,
            bukrs TYPE bkpf-bukrs,
            belnr TYPE bkpf-belnr,
            gjahr TYPE bkpf-gjahr,
            stblg TYPE bkpf-stblg,
          END OF ty_bkpf.
  DATA : lt_bkpf TYPE TABLE OF ty_bkpf,
         lt_bsid TYPE TABLE OF bsid.
  RANGES:r_bstat FOR bkpf-bstat.

  REFRESH :lt_bkpf[], lt_bsid[].

*  To avoid the Customer Duplicate Invoice irrespective of tcode [ FB70 & FB75]: GTFIENHA11-I2 : Req: EPDK917456
*  Functional consultant : Lokesh & Technical Consultant : Tamilselvi

  CHECK NOT bseg-kunnr IS INITIAL.

  SELECT bukrs belnr gjahr stblg FROM bkpf
    INTO TABLE lt_bkpf
    WHERE bukrs = bkpf-bukrs
    AND bstat IN r_bstat
    AND xblnr = bkpf-xblnr  %_HINTS ORACLE 'INDEX("BKPF" "BKPF~1")'. "#EC CI_HINTS
  DELETE lt_bkpf WHERE gjahr NE bkpf-gjahr.
  DELETE lt_bkpf WHERE stblg IS NOT INITIAL.
  IF lt_bkpf IS NOT INITIAL.
    SELECT bukrs kunnr umsks umskz augdt augbl zuonr gjahr belnr buzei
      FROM bsid INTO CORRESPONDING FIELDS OF TABLE lt_bsid FOR ALL ENTRIES IN lt_bkpf
      WHERE bukrs = lt_bkpf-bukrs
        AND gjahr = lt_bkpf-gjahr
        AND belnr = lt_bkpf-belnr.
    IF  sy-subrc EQ 0.
      b_result = b_false. " Invoiceno already exits
    ELSE.
      SELECT bukrs kunnr umsks umskz augdt augbl zuonr gjahr belnr buzei
        FROM bsad INTO CORRESPONDING FIELDS OF TABLE lt_bsid FOR ALL ENTRIES IN lt_bkpf
        WHERE bukrs = lt_bkpf-bukrs
          AND gjahr = lt_bkpf-gjahr
          AND belnr = lt_bkpf-belnr.
      IF  sy-subrc EQ 0.
        b_result = b_false. " Invoiceno already exits
      ENDIF.
    ENDIF.
  ENDIF.

ENDFORM.                                                    "z003
*&---------------------------------------------------------------------*
*&      Form  z004
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
FORM z004  USING b_result.

******For Audit Pack Reference Key Enhancement
*  DATA : gt_sval TYPE TABLE OF sval,
*         gs_sval TYPE sval,
*         gs_refk TYPE zgtfist_refk,
*         lv_flag TYPE xfeld,
*         gt_final TYPE TABLE OF zgtfist_refk,
*         gs_final TYPE zgtfist_refk,
*         gt_keys  TYPE TABLE OF zgtfitr_rkey,
*         gs_keys  TYPE zgtfitr_rkey.
*
*
*  IF sy-ucomm = 'BU'.
*    EXIT.
*  ENDIF.
*
*  IMPORT gt_final TO gt_final FROM MEMORY ID 'REF_KEY'.
*
*  SELECT * FROM zgtfitr_rkey
*    INTO TABLE gt_keys
*    WHERE bukrs = bkpf-bukrs
*      AND saknr = bseg-hkont.
*
****  To get Popup while entering Accounting documents for
***     Reference Key fields.
*
*  gs_sval-tabname = 'ZGTFIST_REFK'.
*  gs_sval-fieldname = 'XREF4'.
*  gs_sval-fieldtext = 'Audit Info 1'.
*  APPEND  gs_sval TO gt_sval.
*
*  gs_sval-tabname = 'ZGTFIST_REFK'.
*  gs_sval-fieldname = 'XREF5'.
*  gs_sval-fieldtext = 'Audit Info 2'.
*  APPEND  gs_sval TO gt_sval.
*
*  gs_sval-tabname = 'ZGTFIST_REFK'.
*  gs_sval-fieldname = 'XREF6'.
*  gs_sval-fieldtext = 'Audit Info 3'.
*  APPEND  gs_sval TO gt_sval.
*
****To Store Reference key details along with accounting info
*  gs_final-gjahr = bkpf-gjahr.
*  gs_final-bukrs = bkpf-bukrs.
*  gs_final-belnr = bkpf-belnr.
*  gs_final-bldat = bkpf-bldat.
*  gs_final-budat = bkpf-budat.
*  gs_final-monat = bkpf-monat.
*  gs_final-waers = bkpf-waers.
*
*  gs_final-hkont = bseg-hkont.
*  gs_final-buzei = bseg-buzei.
*  gs_final-prctr = bseg-prctr.
*  gs_final-gsber = bseg-gsber.
*  IF bseg-shkzg = 'H'.
*    gs_final-dmbtr = bseg-dmbtr * -1.
*  ELSE.
*    gs_final-dmbtr = bseg-dmbtr.
*  ENDIF.
*
****For Reversal of Acc Documents through FB08 Pop up do not need to appear
*  CLEAR lv_flag.
*  IF sy-tcode = 'FB08'.
*    lv_flag = abap_true.
*  ENDIF.
*
*  SET PARAMETER ID 'SAK' FIELD bseg-hkont.
*
*  ON CHANGE OF bseg-bschl.
*
*    IF lv_flag = abap_false.
*
*      CALL FUNCTION 'POPUP_GET_VALUES'
*        EXPORTING
*          popup_title     = 'Audit Pack Ref Keys'
*          start_column    = '5'
*          start_row       = '5'
*        TABLES
*          fields          = gt_sval
*        EXCEPTIONS
*          error_in_fields = 1
*          OTHERS          = 2.
*
*      IF sy-subrc = 0.
*
*        READ TABLE gt_sval INTO gs_sval WITH KEY fieldname = 'XREF4'.
*        IF sy-subrc = 0.
*          gs_final-xref4 = gs_sval-value.
*          READ TABLE gt_keys TRANSPORTING NO FIELDS WITH KEY
*                     bukrs = bkpf-bukrs
*                     saknr = bseg-hkont
*                     xref4 = gs_final-xref4.
*          IF sy-subrc NE 0.
**            MESSAGE text-m01 TYPE 'E'.
*          ENDIF.
*        ENDIF.
*
*        READ TABLE gt_sval INTO gs_sval WITH KEY fieldname = 'XREF5'.
*        IF sy-subrc = 0.
*          gs_final-xref5 = gs_sval-value.
*          READ TABLE gt_keys TRANSPORTING NO FIELDS WITH KEY
*                     bukrs = bkpf-bukrs
*                     saknr = bseg-hkont
*                     xref5 = gs_final-xref5.
*          IF sy-subrc NE 0.
**            MESSAGE text-m02 TYPE 'E'.
*          ENDIF.
*        ENDIF.
*
*        READ TABLE gt_sval INTO gs_sval WITH KEY fieldname = 'XREF6'.
*        IF sy-subrc = 0.
*          gs_final-xref6 = gs_sval-value.
*          READ TABLE gt_keys TRANSPORTING NO FIELDS WITH KEY
*                     bukrs = bkpf-bukrs
*                     saknr = bseg-hkont
*                     xref6 = gs_final-xref6.
*          IF sy-subrc NE 0.
**            MESSAGE text-m03 TYPE 'E'.
*          ENDIF.
*        ENDIF.
*
*        APPEND gs_final TO gt_final.
*        CLEAR gs_final.
*      ENDIF.
*    ELSE.
****  For Reversing Documents getting reversal doc and reversal year
*      SELECT SINGLE * FROM zgtfitr_refk INTO gs_refk WHERE gjahr = bkpf-stjah AND
*                                                           bukrs = bkpf-bukrs AND
*                                                           belnr = bkpf-stblg.
*      gs_final-stblg = bkpf-stblg.
*      gs_final-stjah = bkpf-stjah.
*      gs_final-xref4 = gs_refk-xref4.
*      gs_final-xref5 = gs_refk-xref5.
*      gs_final-xref6 = gs_refk-xref6.
*      APPEND gs_final TO gt_final.
*      CLEAR gs_final.
*    ENDIF.
*  ENDON.
*
*  SORT gt_final .
*  DELETE ADJACENT DUPLICATES FROM gt_final COMPARING ALL FIELDS.
*
****Exporting to Memory ID since doc number is not generated yet
***Captured in FM FI_DOCUMENT_PROCESS after doc number is generated
*  IF gt_final IS NOT INITIAL.
*    EXPORT gt_final FROM gt_final TO MEMORY ID 'REF_KEY'.
*  ENDIF.


**** Commented for Peru TR Movement by Karthikeyan M P
****For Audit Pack Reference Key Enhancement
  DATA : gt_sval  TYPE TABLE OF sval,
         gs_sval  TYPE sval,
         gs_refk  TYPE zgtfist_refk,
         lv_flag  TYPE xfeld,
         lv_ans   TYPE xfeld,
         lv_fcode TYPE sy-ucomm,
         gt_final TYPE TABLE OF zgtfist_refk,
         gs_final TYPE zgtfist_refk.

  DATA : gv_hkont TYPE bseg-hkont.

**  Included by Karthikeyan M P for Audit Pack GL Picking 15.07.2015

  DATA : gt_param TYPE  TABLE OF zgtcatr_param,
         gs_param LIKE LINE OF gt_param.
**  End of Declaration

  DATA : lv_gl_flag.

  CLEAR : gv_hkont.

  gs_param-prognam = sy-repid.
  gs_param-mapid = 'A'.
  gs_param-bukrs = bseg-bukrs.

  IF sy-ucomm NE 'BU'.

    CALL FUNCTION 'ZGTTOOLSFM_PARAM'
      EXPORTING
        gs_param                = gs_param
      TABLES
        gt_param                = gt_param
      EXCEPTIONS
        import_parameters_empty = 1
        nodatafound             = 2
        OTHERS                  = 3.
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.

    IF gt_param IS NOT INITIAL.
      CLEAR : gs_param.
      READ TABLE gt_param INTO gs_param INDEX 1.
      gv_hkont = gs_param-param1.
      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
        EXPORTING
          input  = gv_hkont
        IMPORTING
          output = gv_hkont.

      IF bseg-hkont = gv_hkont. "gs_param-param1. " '0000121001'.
        lv_gl_flag = 'X'.
        EXPORT lv_gl_flag FROM lv_gl_flag TO MEMORY ID 'LV_GL_FLAG'.
        EXIT.
      ELSE.
        IMPORT lv_gl_flag TO lv_gl_flag FROM MEMORY ID 'LV_GL_FLAG'.
      ENDIF.
    ENDIF.
  ENDIF.
* End of Inclusion by Karthikeyan M P 23.06.2015

  IF sy-ucomm = 'BU' AND sy-tcode NE 'FB08'.
**    Included by Karthikeyan M P on 15.07.2015
    IF sy-tcode NE 'FB08'.
      IMPORT gt_final TO gt_final FROM MEMORY ID 'REF_KEY'.
      REFRESH : gt_param.
      CALL FUNCTION 'ZGTTOOLSFM_PARAM'
        EXPORTING
          gs_param                = gs_param
        TABLES
          gt_param                = gt_param
        EXCEPTIONS
          import_parameters_empty = 1
          nodatafound             = 2
          OTHERS                  = 3.
      IF sy-subrc <> 0.
* Implement suitable error handling here
      ENDIF.
      IF gt_param IS NOT INITIAL.
        READ TABLE gt_param INTO gs_param INDEX 1.
        gv_hkont = gs_param-param1.
        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
          EXPORTING
            input  = gv_hkont
          IMPORTING
            output = gv_hkont.
        IF gt_final IS INITIAL AND bseg-hkont = gv_hkont. " gs_param-param1. " '0000121001'.
          CLEAR : sy-ucomm.
          MESSAGE e100(zgtfi_msg).
*        LEAVE TO CURRENT TRANSACTION.
        ENDIF.
      ENDIF.
    ENDIF.
**    End of Inclusion by Karthikeyan M P
    EXIT.
  ENDIF.

  IF lv_gl_flag = 'X' OR sy-tcode = 'FB08'..  " Inclusion on 23.06.2015
****For Reversal of Acc Documents through FB08 Pop up do not need to appear
    CLEAR lv_flag.
    IF sy-tcode = 'FB08'.
      lv_flag = abap_true.
    ENDIF.

    IMPORT gt_final TO gt_final FROM MEMORY ID 'REF_KEY'.

    IF lv_flag = abap_false.

****To Store Reference key details along with accounting info
      gs_final-gjahr = bkpf-gjahr.
      gs_final-bukrs = bkpf-bukrs.
      gs_final-belnr = bkpf-belnr.
      gs_final-blart = bkpf-blart.
      gs_final-bldat = bkpf-bldat.
      gs_final-budat = bkpf-budat.
      gs_final-monat = bkpf-monat.
      gs_final-waers = bkpf-waers.

      gs_final-hkont = bseg-hkont.
      gs_final-buzei = bseg-buzei.
      gs_final-prctr = bseg-prctr.
      gs_final-gsber = bseg-gsber.
      IF bseg-shkzg = 'H'.
        gs_final-dmbtr = bseg-dmbtr * -1.
      ELSE.
        gs_final-dmbtr = bseg-dmbtr.
      ENDIF.
    ENDIF.

    SET PARAMETER ID 'SAK' FIELD bseg-hkont.
*        SET PARAMETER ID 'SAK' FIELD space.

***Get the reference key details

***    IF sy-tcode EQ 'FBCJ'.          " Cash journal
***
***      IF sy-ucomm EQ 'POST'.        " Generation
***
***        lv_fcode = sy-ucomm.
***        IF gt_final[] IS INITIAL.
***          CALL FUNCTION 'ZPOPUP_GET_VALUES'
***            EXPORTING
***              bseg     = bseg
***            IMPORTING
***              lv_ans   = lv_ans
***            CHANGING
***              gs_final = gs_final.
***
***          IF lv_ans EQ 'J'.
***            LEAVE TO CURRENT TRANSACTION.
***          ENDIF.
***
***          IF lv_fcode EQ 'POST' AND bseg-belnr IS NOT INITIAL.
***            gs_final-belnr = bseg-belnr.
***            gs_final-prctr = bseg-prctr.
***            gs_final-gsber = bseg-gsber.
***            APPEND gs_final TO gt_final.
***            INSERT zgtfitr_refk FROM TABLE gt_final ACCEPTING DUPLICATE KEYS.
***          ENDIF.
***          CLEAR gs_final.
***        ENDIF.
***      ELSEIF sy-ucomm EQ 'OK30'.        " Cash Journal document cancellation
***
***        DATA: wa_bkpf TYPE bkpf,
***              lv_stblg TYPE bkpf-stblg.
***        REFRESH gt_final.
***        SELECT SINGLE * FROM bkpf INTO wa_bkpf WHERE bukrs EQ bkpf-bukrs
***                                                 AND belnr EQ bkpf-belnr
***                                                 AND gjahr EQ bkpf-gjahr
***                                                 AND blart EQ 'CJ'
***                                                 AND tcode EQ 'FBCJ'.
***        IF sy-subrc EQ 0.
***          lv_stblg = wa_bkpf-awkey+0(10).
***          SELECT SINGLE * FROM zgtfitr_refk INTO gs_refk WHERE gjahr = bkpf-stjah AND
***                                                               bukrs = bkpf-bukrs AND
***                                                               belnr = lv_stblg.
***          gs_refk-stblg = lv_stblg.
***          gs_refk-stjah = bkpf-stjah.
***          gs_refk-belnr = bkpf-awkey+0(10).
***          gs_refk-bukrs = bkpf-bukrs.
***          gs_refk-gjahr = bkpf-gjahr.
***          gs_refk-dmbtr = gs_refk-dmbtr * ( -1 ).
***          APPEND gs_refk TO gt_final.
***          INSERT zgtfitr_refk FROM TABLE gt_final ACCEPTING DUPLICATE KEYS.
***        ENDIF.
***      ENDIF.

***    ELSE.

    ON CHANGE OF bseg-buzei.
** Getting the refkey for other than Cash journal
      IF lv_flag = abap_false.
        READ TABLE gt_final INTO gs_final WITH KEY buzei = bseg-buzei.
        IF sy-subrc NE 0.
          CALL FUNCTION 'ZPOPUP_GET_VALUES'
            EXPORTING
              bseg     = bseg
            IMPORTING
              lv_ans   = lv_ans
            CHANGING
              gs_final = gs_final.

          IF lv_ans EQ 'J'.
            FREE MEMORY ID : lv_gl_flag.      " Inclusion by Karthikeyan M P 23.06.2015
            LEAVE TO CURRENT TRANSACTION.
          ENDIF.
          APPEND gs_final TO gt_final.
          CLEAR gs_final.
        ENDIF.
      ELSE.
*    **  For Reversing Documents getting reversal doc and reversal year
        CLEAR gs_final.
        SELECT SINGLE * FROM zgtfitr_refk INTO gs_final WHERE gjahr = bkpf-stjah AND
                                                             bukrs = bkpf-bukrs AND
                                                             belnr = bkpf-stblg AND
                                                             buzei = bseg-buzei.
        gs_final-stblg = bkpf-stblg.
        gs_final-stjah = bkpf-stjah.
*Start of change 4000000961 #TR-EPDK961930
        gs_final-budat = bkpf-budat.
        gs_final-gjahr = bkpf-gjahr.
        gs_final-monat = bkpf-monat.
*End of change   4000000961 #TR-EPDK961930
        gs_final-dmbtr = gs_final-dmbtr * ( -1 ).
        APPEND gs_final TO gt_final.
        CLEAR gs_final.
      ENDIF.
    ENDON.

***    ENDIF.


    SORT gt_final .
    DELETE ADJACENT DUPLICATES FROM gt_final COMPARING ALL FIELDS.

***Exporting to Memory ID since doc number is not generated yet
**Captured in FM FI_DOCUMENT_PROCESS after doc number is generated
    IF gt_final IS NOT INITIAL.
      EXPORT gt_final FROM gt_final TO MEMORY ID 'REF_KEY'.
    ENDIF.

  ENDIF.

ENDFORM.                                                    "z004

*&---------------------------------------------------------------------*
*&      Form  Z005
*&---------------------------------------------------------------------*
*       User exit for Vendor duplicate invoice check
*----------------------------------------------------------------------*

FORM z005 USING b_result.

  DATA : ls_bsik TYPE bsik,
         ls_bsak TYPE bsak.
*	check for duplicate check in vendor open items
  SELECT SINGLE * FROM bsik INTO ls_bsik
  WHERE bukrs EQ bkpf-bukrs
    AND gjahr EQ bkpf-gjahr
    AND lifnr EQ bseg-lifnr
    AND xblnr EQ bkpf-xblnr
    AND shkzg EQ 'H'.

  IF sy-subrc EQ 0.
*    message e901(zfi1) with i_xblnr i_belnr.
*    MESSAGE e002(zz) WITH bkpf-xblnr.
*    MESSAGE e039(zgtfi_msg) WITH bkpf-xblnr DISPLAY LIKE 'E'.
    b_result = b_false.

  ELSE.

*	check for duplicate check in vendor cleared items
    SELECT * FROM bsak INTO ls_bsak
    WHERE bukrs EQ bkpf-bukrs
      AND gjahr EQ bkpf-gjahr
      AND lifnr EQ bseg-lifnr
      AND xblnr EQ bkpf-xblnr
      AND shkzg EQ 'H'.
      IF sy-subrc EQ 0.
*        message e901(zfi1) with i_xblnr i_belnr.
*        MESSAGE e002(zz) WITH bkpf-xblnr.
*        MESSAGE e039(zgtfi_msg) WITH bkpf-xblnr DISPLAY LIKE 'E'.
        b_result = b_false.
      ENDIF.
    ENDSELECT.
  ENDIF.

ENDFORM.                                                    "Z005



*&---------------------------------------------------------------------*
*&      Form  Z006
*&---------------------------------------------------------------------*
*       User exit for Vendor duplicate invoice check
*----------------------------------------------------------------------*

FORM z006 USING b_result.

  TYPES: BEGIN OF ty_wrbtr,
           budat TYPE bsik-budat,
           waers TYPE bsik-waers,
           wrbtr TYPE bseg-wrbtr,
           shkzg TYPE bseg-shkzg,
         END OF ty_wrbtr.

  TYPES : BEGIN OF ty_tcurr,
            fcurr TYPE tcurr-fcurr,
            tcurr TYPE tcurr-tcurr,
            gdatu TYPE tcurr-gdatu,
            ukurs TYPE tcurr-ukurs,
          END OF ty_tcurr.

  TYPES : BEGIN OF ty_tcurr1,
            fcurr TYPE tcurr-fcurr,
            tcurr TYPE tcurr-tcurr,
            datum TYPE sy-datum,
            ukurs TYPE tcurr-ukurs,
          END OF ty_tcurr1,
          BEGIN OF ty_wyt3,
            lifnr TYPE wyt3-lifnr,
            ekorg TYPE  wyt3-ekorg,
            ltsnr TYPE  wyt3-ltsnr,
            werks TYPE  wyt3-werks,
            parvw TYPE  wyt3-parvw,
            parza TYPE wyt3-parza,
            lifn2 TYPE  wyt3-lifn2,
          END OF ty_wyt3,
          BEGIN OF ty_ekpa,
            ebeln	TYPE ebeln,
            ebelp	TYPE ebelp,
            ekorg	TYPE ekorg,
            ltsnr	TYPE ltsnr,
            werks	TYPE werks_d,
            parvw	TYPE parvw,
            parza	TYPE parza,
            lifn2	TYPE lifn2,
          END OF ty_ekpa.

  DATA : lv_bsart         TYPE ekko-bsart,
         lv_dpamt         TYPE ekpo-dpamt,
         lv_dpamt1        TYPE ekpo-dpamt,
         gt_wrbtr         TYPE TABLE OF ty_wrbtr,
         gt_wrbtr1        TYPE TABLE OF ty_wrbtr,
         gs_wrbtr         TYPE ty_wrbtr,
         lv_wrbtr         TYPE bseg-wrbtr,  lv_wrbtr1 TYPE bseg-wrbtr,  lv_wrbtr2 TYPE bseg-wrbtr,  lv_wrbtr3 TYPE bseg-wrbtr, "Essakki
         lv_message       TYPE string,
         lv_amt           TYPE char14,
         lv_waers         TYPE ekko-waers,
         gt_tcurr         TYPE TABLE OF ty_tcurr,
         gs_tcurr         TYPE ty_tcurr,
         gt_tcurr1        TYPE TABLE OF ty_tcurr1,
         gs_tcurr1        TYPE ty_tcurr1,
         ls_date(10),
         lv_ukurs         TYPE tcurr-ukurs,
         lv_zzpclv        TYPE lfm1-zzpclv,
         lv_waers1        TYPE lfm1-waers,
         lv_check         TYPE c,
         lv_divide(3)     TYPE c,
         lv_lifnr         TYPE ekko-lifnr,
         lv_ekorg         TYPE ekko-ekorg,
         gv_wrbtr(16)     TYPE p DECIMALS 2,
         gv_wrbtr_tot(16) TYPE p DECIMALS 2,
         gt_wyt3          TYPE TABLE OF ty_wyt3,
         gs_wyt3          TYPE ty_wyt3,
         gs_ekpa          TYPE ty_ekpa,
         lv_lifnr1        TYPE ekko-lifnr.

  DATA :   lt_param TYPE  TABLE OF zgtcatr_param,
           ls_param TYPE  zgtcatr_param.

**  IF sy-tcode = 'FBA7'
**     OR sy-tcode = 'FBA6'."  EPDK937276

  IF bseg-ebeln IS NOT INITIAL.


** Begin - Included for EPDK947201
    CLEAR : ls_param, lt_param.
    ls_param-prognam = sy-repid.      " ZRGGBR000
    ls_param-mapid = 'B'.
    ls_param-bukrs = bseg-bukrs.      " Company Code

    CALL FUNCTION 'ZGTTOOLSFM_PARAM'
      EXPORTING
        gs_param                = ls_param
      TABLES
        gt_param                = lt_param
      EXCEPTIONS
        import_parameters_empty = 1
        nodatafound             = 2
        OTHERS                  = 3.
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.
** End - Included for EPDK947201

    CLEAR: lv_wrbtr,lv_message,lv_check.
*      IF bseg-umskz = '+'.
*        SELECT SINGLE bsart waers FROM ekko INTO (lv_bsart,lv_waers) WHERE ebeln = bseg-ebeln AND bsart = 'Z002'.
*      ELSEIF bseg-umskz = 'A'.
    IF bseg-umskz = '+' OR bseg-umskz = 'A'.
      SELECT SINGLE bsart lifnr ekorg waers FROM ekko INTO (lv_bsart,lv_lifnr,lv_ekorg,lv_waers) WHERE ebeln = bseg-ebeln.
    ENDIF.

    IF sy-subrc = 0." AND ( lv_bsart = 'Z001' OR lv_bsart = 'Z002' OR lv_bsart = 'Z003'). " 1.04.2015

      SELECT SINGLE dpamt FROM ekpo INTO lv_dpamt WHERE ebeln = bseg-ebeln AND ebelp = bseg-ebelp.
      " Nijin 21.04.2015 Start
*** Begin of changes for EPDK939922
*        SELECT SINGLE dpamt FROM ekko INTO lv_dpamt1 WHERE ebeln = bseg-ebeln.
*        IF lv_dpamt IS INITIAL AND lv_dpamt1 IS NOT INITIAL.
*          lv_dpamt = lv_dpamt1.
*          CLEAR lv_dpamt1.
*        ELSEIF lv_dpamt IS NOT INITIAL AND lv_dpamt1 IS NOT INITIAL.
*          IF lv_dpamt NE lv_dpamt1.
*            MESSAGE 'Down Payment Amount Missmatch at Header and Item level' TYPE 'E'.
*          ENDIF.
*        ENDIF.
*** End of changes for EPDK939922
      " Nijin 21.04.2015 End
      IF lv_dpamt IS NOT INITIAL." Nijin 21.04.2015
        SELECT budat waers wrbtr shkzg FROM bsik INTO TABLE gt_wrbtr WHERE ebeln = bseg-ebeln AND ebelp = bseg-ebelp. "#EC CI_NOFIELD
        SELECT budat waers wrbtr shkzg FROM bsak APPENDING TABLE gt_wrbtr WHERE ebeln = bseg-ebeln AND ebelp = bseg-ebelp. "#EC CI_NOFIELD
*** Begin of changes for EPDK941078

        IF lv_lifnr NE bseg-lifnr.
*** Begin of changes for EPDK941886
*            SELECT lifnr ekorg ltsnr werks parvw parza lifn2 FROM wyt3 INTO TABLE gt_wyt3
*                                                                       WHERE lifnr = lv_lifnr
*                                                                         AND ekorg = lv_ekorg
**                                                                         AND parvw = 'RS'.
*            IF sy-subrc = 0.
*              READ TABLE gt_wyt3 INTO gs_wyt3 WITH KEY lifn2 = bseg-lifnr.

** Begin - Changed for EPDK947201
** Credit limit check system should check only credit limit of supplying vendor not the invoicing vendor **


**            SELECT SINGLE ebeln
**                          ebelp
**                          ekorg
**                          ltsnr
**                          werks
**                          parvw
**                          parza
**                          lifn2
**                          FROM ekpa INTO gs_ekpa WHERE ebeln = bseg-ebeln
**                                                   AND ekorg = lv_ekorg
**                                                   AND parvw = 'RS'.
**            IF sy-subrc = 0.
**              IF gs_ekpa-lifn2 = bseg-lifnr.
***            IF sy-subrc = 0.  " a~zzwaers_pv commented from select in tr EPDK941078
          SELECT SINGLE a~zzpclv a~waers INTO (lv_zzpclv,lv_waers1) FROM lfm1 AS a INNER JOIN ekko AS b ON
                        a~ekorg = b~ekorg WHERE a~lifnr = lv_lifnr AND b~ebeln = bseg-ebeln.
          CLEAR lv_lifnr1.
          lv_lifnr1 = lv_lifnr.

**              ELSE.
**                MESSAGE 'Vendor Code is not matching with Purchase order' TYPE 'E'.
**              ENDIF.
**            ENDIF.
** End - Changed for EPDK947201
*** End of changes for EPDK941886
        ELSE.
          SELECT SINGLE a~zzpclv a~waers INTO (lv_zzpclv,lv_waers1) FROM lfm1 AS a INNER JOIN ekko AS b ON
                        a~ekorg = b~ekorg WHERE a~lifnr = bseg-lifnr AND b~ebeln = bseg-ebeln.
        ENDIF.
*          SELECT SINGLE a~zzpclv a~zzwaers_pv INTO (lv_zzpclv,lv_waers1) FROM lfm1 AS a INNER JOIN ekko AS b ON
*            a~ekorg = b~ekorg WHERE a~lifnr = bseg-lifnr AND b~ebeln = bseg-ebeln.
*** End of changes for EPDK941078
        IF lv_waers NE bseg-pswsl.
          lv_check = 1.
        ELSEIF lv_waers1 IS NOT INITIAL AND lv_waers1 NE bseg-pswsl.
          lv_check = 1.
        ELSE.
          LOOP AT gt_wrbtr INTO gs_wrbtr WHERE waers NE bseg-pswsl.
            lv_check = 1.
            EXIT.
          ENDLOOP.
        ENDIF.
        IF lv_check = 1.
          SELECT fcurr tcurr gdatu ukurs INTO TABLE gt_tcurr
            FROM tcurr WHERE fcurr = lv_waers
            AND tcurr = bseg-pswsl.                     "#EC CI_GENBUFF
          IF lv_waers1 IS NOT INITIAL AND lv_waers1 NE bseg-pswsl.
            SELECT fcurr tcurr gdatu ukurs APPENDING TABLE gt_tcurr
               FROM tcurr WHERE fcurr = lv_waers1
               AND tcurr = bseg-pswsl.                  "#EC CI_GENBUFF
          ENDIF.
          IF gt_wrbtr IS NOT INITIAL.
            SELECT fcurr tcurr gdatu ukurs APPENDING TABLE gt_tcurr
               FROM tcurr FOR ALL ENTRIES IN gt_wrbtr WHERE fcurr = gt_wrbtr-waers
               AND tcurr = bseg-pswsl.                  "#EC CI_GENBUFF
          ENDIF.
*          IF sy-subrc EQ 0.
          IF gt_tcurr IS NOT INITIAL.
            LOOP AT gt_tcurr INTO gs_tcurr.
              gs_tcurr1-fcurr = gs_tcurr-fcurr.
              gs_tcurr1-tcurr = gs_tcurr-tcurr.
              CLEAR ls_date.
              CALL FUNCTION 'CONVERSION_EXIT_INVDT_OUTPUT'
                EXPORTING
                  input  = gs_tcurr-gdatu
                IMPORTING
                  output = ls_date.
              CALL FUNCTION 'CONVERT_DATE_TO_INTERNAL'
                EXPORTING
                  date_external            = ls_date
                IMPORTING
                  date_internal            = gs_tcurr1-datum
                EXCEPTIONS
                  date_external_is_invalid = 1
                  OTHERS                   = 2.
              IF sy-subrc <> 0.
* Implement suitable error handling here
              ENDIF.
              gs_tcurr1-ukurs = gs_tcurr-ukurs.
              APPEND gs_tcurr1 TO gt_tcurr1.
              CLEAR : gs_tcurr1,gs_tcurr.
            ENDLOOP.

            DELETE gt_tcurr1 WHERE datum GT bkpf-bldat.
            SORT gt_tcurr1 BY datum DESCENDING.

            IF lv_waers NE bseg-pswsl.
              READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = lv_waers
                                                          tcurr = bseg-pswsl.
              lv_ukurs = gs_tcurr1-ukurs.
              IF lv_ukurs < 0.
                lv_dpamt = ( lv_dpamt / lv_ukurs ) * ( -1 ).
              ELSE.
                lv_dpamt = lv_dpamt * lv_ukurs.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        " For check of Vendor Credit limit(maintained in Vendor master) with current document amount.
        IF lv_waers1 IS NOT INITIAL AND bseg-umskz = '+'.
          IF lv_waers1 NE bseg-pswsl.
            READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = lv_waers1
                                                       tcurr = bseg-pswsl.
            lv_ukurs = gs_tcurr1-ukurs.
            IF lv_ukurs < 0.
              lv_zzpclv = ( lv_zzpclv / lv_ukurs ) * ( -1 ).
            ELSE.
              lv_zzpclv = lv_zzpclv * lv_ukurs.
            ENDIF.
          ENDIF.
*** Begin of changes for EPDK941078
          CLEAR : lv_wrbtr.
          LOOP AT gt_wrbtr INTO gs_wrbtr.
            IF gs_wrbtr-waers NE bseg-pswsl.
*                READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = gs_wrbtr-waers
*                                                             tcurr = bseg-pswsl.
              LOOP AT gt_tcurr1 INTO gs_tcurr1 WHERE fcurr = gs_wrbtr-waers
                                                AND  tcurr = bseg-pswsl
                                                AND  datum LE gs_wrbtr-budat.
                IF sy-subrc = 0.
                  lv_ukurs = gs_tcurr1-ukurs.
                  IF lv_ukurs < 0.
                    gs_wrbtr-wrbtr = ( gs_wrbtr-wrbtr / lv_ukurs ) * ( -1 ).
                  ELSE.
                    gs_wrbtr-wrbtr = gs_wrbtr-wrbtr * lv_ukurs.
                  ENDIF.
                  EXIT.
                ENDIF.
              ENDLOOP.
            ENDIF.
            IF gs_wrbtr-shkzg = 'S'.
              lv_wrbtr = gs_wrbtr-wrbtr + lv_wrbtr.
            ELSEIF gs_wrbtr-shkzg = 'H'.
              lv_wrbtr = lv_wrbtr - gs_wrbtr-wrbtr.
            ENDIF.
            CLEAR : gs_wrbtr.
          ENDLOOP.
          lv_wrbtr = lv_wrbtr + bseg-wrbtr .
          IF lv_wrbtr < lv_zzpclv.                   " New for EPDK941078
*** End of changes for EPDK941078
*            IF bseg-wrbtr <= lv_zzpclv.                " commented for EPDK939174
*            gv_wrbtr_tot = gv_wrbtr + bseg-wrbtr.       " changes for EPDK939174
*            IF gv_wrbtr_tot <= lv_zzpclv .              " changes for EPDK939174
*            MESSAGE 'Please use Special G/L ind A' TYPE 'E'.
            MESSAGE 'Payment amount is less than the Vendor Credit Limit, so use Spl GL Indi ‘A’ for Down payment' TYPE 'E'.
          ENDIF.
*** Begin of changes EPDK939174
          IF bseg-wrbtr > lv_dpamt.
            lv_dpamt = bseg-wrbtr - lv_dpamt.
            lv_amt = lv_dpamt.
            CONDENSE lv_amt.
** Begin - Changed for EPDK947201 for message in ES
            IF lv_lifnr1 IS INITIAL.
              lv_lifnr1 = bseg-lifnr.
            ENDIF.

            CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
              EXPORTING
                input  = lv_lifnr1
              IMPORTING
                output = lv_lifnr1.

            IF sy-langu = 'S'.
              CONCATENATE 'Importe del pago es mayor que el pago inicial mencionado en PO por' lv_amt bseg-pswsl 'para el proveedor' lv_lifnr1 INTO lv_message SEPARATED BY space.
            ELSE.
              CONCATENATE 'Payment amount is greater than the down payment mentioned in PO by' lv_amt bseg-pswsl 'for PO vendor' lv_lifnr1 INTO lv_message SEPARATED BY space.
            ENDIF.
** End - Changed for EPDK947201 for message in ES

            MESSAGE lv_message TYPE 'E' DISPLAY LIKE 'I'.
          ENDIF.
*** End of changes EPDK939174
        ENDIF.

        IF  bseg-umskz = 'A' . " If statement added for EPDK939174
*** Begin of changes for EPDK939174
          SELECT budat waers wrbtr shkzg FROM bsik INTO TABLE gt_wrbtr1 WHERE bukrs = bseg-bukrs AND lifnr = bseg-lifnr.
          LOOP AT gt_wrbtr1 INTO gs_wrbtr.
            IF gs_wrbtr-waers NE bseg-pswsl.
*                READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = gs_wrbtr-waers
*                                                             tcurr = bseg-pswsl.
              LOOP AT gt_tcurr1 INTO gs_tcurr1 WHERE fcurr = gs_wrbtr-waers
                                                AND  tcurr = bseg-pswsl
                                                AND  datum LE gs_wrbtr-budat.
                IF sy-subrc = 0.
                  lv_ukurs = gs_tcurr1-ukurs.
                  IF lv_ukurs < 0.
                    gs_wrbtr-wrbtr = ( gs_wrbtr-wrbtr / lv_ukurs ) * ( -1 ).
                  ELSE.
                    gs_wrbtr-wrbtr = gs_wrbtr-wrbtr * lv_ukurs.
                  ENDIF.
                  EXIT.
                ENDIF.
              ENDLOOP.
            ENDIF.
            IF gs_wrbtr-shkzg = 'S'.
              gv_wrbtr = gv_wrbtr + gs_wrbtr-wrbtr .
            ELSEIF gs_wrbtr-shkzg = 'H'.
              gv_wrbtr = gv_wrbtr + gs_wrbtr-wrbtr * -1.
            ENDIF.
          ENDLOOP.

*            gv_wrbtr = gv_wrbtr - lv_dpamt.     " changes done for EPDK939922 " commented for EPDK941078
          IF gv_wrbtr GT 0.
            lv_amt = gv_wrbtr.
            CONDENSE lv_amt.

** Begin - Changed for EPDK947201 for message in ES
            IF sy-langu = 'S'.
              CONCATENATE 'De cuenta del vendedor tiene Dr.balance' lv_amt bseg-pswsl INTO lv_message SEPARATED BY space.
            ELSE.
              CONCATENATE 'Vendor has DR balance' lv_amt bseg-pswsl INTO lv_message SEPARATED BY space.
            ENDIF.
** End - Changed for EPDK947201 for message in ES

*              MESSAGE lv_message TYPE 'E'. " changes done for EPDK941078 lv_waers1
            MESSAGE lv_message TYPE 'W'. " changes done for EPDK941078
          ENDIF.
*** End of changes for EPDK939174
          LOOP AT gt_wrbtr INTO gs_wrbtr.
            IF gs_wrbtr-waers NE bseg-pswsl.
*                READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = gs_wrbtr-waers
*                                                             tcurr = bseg-pswsl.
              LOOP AT gt_tcurr1 INTO gs_tcurr1 WHERE fcurr = gs_wrbtr-waers
                                                AND  tcurr = bseg-pswsl
                                                AND  datum LE gs_wrbtr-budat.
                lv_ukurs = gs_tcurr1-ukurs.
                IF lv_ukurs < 0.
                  gs_wrbtr-wrbtr = ( gs_wrbtr-wrbtr / lv_ukurs ) * ( -1 ).
                ELSE.
                  gs_wrbtr-wrbtr = gs_wrbtr-wrbtr * lv_ukurs.
                ENDIF.
                EXIT.
              ENDLOOP.
            ENDIF.
            IF gs_wrbtr-shkzg = 'S'.
              lv_wrbtr = gs_wrbtr-wrbtr + lv_wrbtr.
            ELSEIF gs_wrbtr-shkzg = 'H'.
              lv_wrbtr = lv_wrbtr - gs_wrbtr-wrbtr.
            ENDIF.
*          lv_divide = '3.4'.  "Essakki
*          lv_wrbtr1 = gs_wrbtr-wrbtr / lv_divide .   "Essakki

            CLEAR : gs_wrbtr.
          ENDLOOP.
          lv_wrbtr = lv_wrbtr + bseg-wrbtr .
*        lv_wrbtr2 = lv_wrbtr. "Essakki
          IF lv_wrbtr > lv_dpamt.
            lv_dpamt = lv_wrbtr - lv_dpamt.
            lv_amt = lv_dpamt.
*        lv_dpamt1  = lv_dpamt * '3.4'.
*        IF lv_dpamt1 > lv_wrbtr.
*          lv_dpamt1 = lv_dpamt1 - lv_wrbtr.
*          lv_dpamt1 = lv_dpamt1 - bseg-wrbtr.
*          lv_amt = lv_dpamt1.
            CONDENSE lv_amt.

** Begin - Changed for EPDK947201 for message in ES

            IF lv_lifnr1 IS INITIAL.
              lv_lifnr1 = bseg-lifnr.
            ENDIF.

            CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
              EXPORTING
                input  = lv_lifnr1
              IMPORTING
                output = lv_lifnr1.

            IF sy-langu = 'S'.
              CONCATENATE 'Importe del pago es mayor que el pago inicial mencionado en PO por' lv_amt bseg-pswsl 'para el proveedor' lv_lifnr1 INTO lv_message SEPARATED BY space.
            ELSE.
              CONCATENATE 'Payment amount is greater than the down payment mentioned in PO by' lv_amt bseg-pswsl 'for vendor' lv_lifnr1 INTO lv_message SEPARATED BY space.
            ENDIF.
** Begin - Changed for EPDK947201 for message in ES

            MESSAGE lv_message TYPE 'E' DISPLAY LIKE 'I'.
          ENDIF.
*** Begin of changes for EPDK939174
          IF lv_waers1 IS NOT INITIAL.
            IF lv_waers1 NE bseg-pswsl.
              READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = lv_waers1
                                                           tcurr = bseg-pswsl.
              lv_ukurs = gs_tcurr1-ukurs.
              IF lv_ukurs < 0.
                lv_zzpclv = ( lv_zzpclv / lv_ukurs ) * ( -1 ).
              ELSE.
                lv_zzpclv = lv_zzpclv * lv_ukurs.
              ENDIF.
            ENDIF.
          ENDIF.
** Begin - Changed for EPDK947201 VENDOR DOWN PAYMENT RESTRICTION AS PER D
** Vendor credit limit should be checked only if the PO- type is = Z001 **
** And also it should check the credit limit only to vendor account created in purchase org. PE11, PE01, PE04 and  PE14 **
** IF lv_bsart = 'Z001' AND ( lv_ekorg = 'PE01' OR lv_ekorg = 'PE04' OR lv_ekorg = 'PE11' OR lv_ekorg = 'PE14' ).
          CLEAR ls_param.
          READ TABLE lt_param INTO ls_param WITH KEY prognam = sy-repid
                                                     mapid   = 'B'
                                                     bukrs   = bseg-bukrs
                                                     param1  = lv_bsart
                                                     param2  = lv_ekorg.
          IF sy-subrc = 0.
            IF lv_wrbtr > lv_zzpclv.
              MESSAGE 'Payment amount is greater than the Vendor Credit Limit' TYPE 'E'.
            ENDIF.
          ENDIF.
** End - changed for EPDK947201 VENDOR DOWN PAYMENT RESTRICTION AS PER D
*** End of changes for EPDK939174
        ENDIF. "Endif for EPDK939174
      ELSE.
        MESSAGE 'No Down Payment Amount is maintained in PO' TYPE 'E'. " Nijin 21.04.2015
      ENDIF.
    ELSE.
*        IF bseg-umskz = '+'.
*          MESSAGE 'Purchase Order Type is not Z002' TYPE 'E'.
*        ELSEIF  bseg-umskz = 'A'.
      MESSAGE 'Purchase Order not available' TYPE 'E'.
*        ENDIF.
    ENDIF.
  ELSE.
    MESSAGE 'Enter PO number for Special GL indicator posting' TYPE 'E'.
  ENDIF.
**  ENDIF.

ENDFORM.                                                    "Z006

*&---------------------------------------------------------------------*
*&      Form  z007
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*FORM z007 USING b_result.
*
*
*ENDFORM.                                                    "z007
** Begin - Z008 removed for PERUFIENHA1-C6
***&---------------------------------------------------------------------*
***&      Form  Z008
***&---------------------------------------------------------------------*
***       User exit for Vendor Advance Restriction
***----------------------------------------------------------------------*
**
**FORM z008 USING b_result.
**
**  TYPES: BEGIN OF ty_wrbtr,
**           budat TYPE bsik-budat,
**           waers TYPE bsik-waers,
**           wrbtr TYPE bseg-wrbtr,
**           shkzg TYPE bseg-shkzg,
**         END OF ty_wrbtr.
**
**  TYPES : BEGIN OF ty_tcurr,
**            fcurr TYPE tcurr-fcurr,
**            tcurr TYPE tcurr-tcurr,
**            gdatu TYPE tcurr-gdatu,
**            ukurs TYPE tcurr-ukurs,
**          END OF ty_tcurr.
**
**  TYPES : BEGIN OF ty_tcurr1,
**            fcurr TYPE tcurr-fcurr,
**            tcurr TYPE tcurr-tcurr,
**            datum TYPE sy-datum,
**            ukurs TYPE tcurr-ukurs,
**          END OF ty_tcurr1,
**          BEGIN OF ty_wyt3,
**            lifnr TYPE wyt3-lifnr,
**            ekorg TYPE  wyt3-ekorg,
**            ltsnr TYPE  wyt3-ltsnr,
**            werks TYPE  wyt3-werks,
**            parvw TYPE  wyt3-parvw,
**            parza TYPE wyt3-parza,
**            lifn2 TYPE  wyt3-lifn2,
**          END OF ty_wyt3,
**          BEGIN OF ty_ekpa,
**            ebeln	TYPE ebeln,
**            ebelp	TYPE ebelp,
**            ekorg	TYPE ekorg,
**            ltsnr	TYPE ltsnr,
**            werks	TYPE werks_d,
**            parvw	TYPE parvw,
**            parza	TYPE parza,
**            lifn2	TYPE lifn2,
**          END OF ty_ekpa.
**
**  DATA : lv_bsart         TYPE ekko-bsart,
**         lv_dpamt         TYPE ekpo-dpamt,
**         lv_dpamt1        TYPE ekpo-dpamt,
**         gt_wrbtr         TYPE TABLE OF ty_wrbtr,
**         gt_wrbtr1        TYPE TABLE OF ty_wrbtr,
**         gs_wrbtr         TYPE ty_wrbtr,
**         lv_wrbtr         TYPE bseg-wrbtr,  lv_wrbtr1 TYPE bseg-wrbtr,  lv_wrbtr2 TYPE bseg-wrbtr,  lv_wrbtr3 TYPE bseg-wrbtr, "Essakki
**         lv_message       TYPE string,
**         lv_amt           TYPE char14,
**         lv_waers         TYPE ekko-waers,
**         gt_tcurr         TYPE TABLE OF ty_tcurr,
**         gs_tcurr         TYPE ty_tcurr,
**         gt_tcurr1        TYPE TABLE OF ty_tcurr1,
**         gs_tcurr1        TYPE ty_tcurr1,
**         ls_date(10),
**         lv_ukurs         TYPE tcurr-ukurs,
**         lv_zzpclv        TYPE lfm1-zzpclv,
**         lv_waers1        TYPE lfm1-waers,
**         lv_check         TYPE c,
**         lv_divide(3)     TYPE c,
**         lv_lifnr         TYPE ekko-lifnr,
**         lv_ekorg         TYPE ekko-ekorg,
**         gv_wrbtr(16)     TYPE p DECIMALS 2,
**         gv_wrbtr_tot(16) TYPE p DECIMALS 2,
**         gt_wyt3          TYPE TABLE OF ty_wyt3,
**         gs_wyt3          TYPE ty_wyt3,
**         gs_ekpa          TYPE ty_ekpa.
**
**  IF sy-tcode = 'FBA7'
**     OR sy-tcode = 'FBA6'."  EPDK937276
**
**    IF bseg-ebeln IS NOT INITIAL.
**      CLEAR: lv_wrbtr,lv_message,lv_check.
**      IF bseg-umskz = '+' OR bseg-umskz = 'A' OR bseg-umskz = 'B'. " Coding Added by Murugesan Thavasi.
**        SELECT SINGLE bsart lifnr ekorg waers FROM ekko INTO (lv_bsart,lv_lifnr,lv_ekorg,lv_waers) WHERE ebeln = bseg-ebeln.
**      ENDIF.
**      IF sy-subrc = 0." AND ( lv_bsart = 'Z001' OR lv_bsart = 'Z002' OR lv_bsart = 'Z003'). " 1.04.2015
**        SELECT SINGLE dpamt FROM ekpo INTO lv_dpamt WHERE ebeln = bseg-ebeln AND ebelp = bseg-ebelp.
**        IF lv_dpamt IS NOT INITIAL." Nijin 21.04.2015
**          SELECT budat waers wrbtr shkzg FROM bsik INTO TABLE gt_wrbtr WHERE ebeln = bseg-ebeln AND ebelp = bseg-ebelp.
**          SELECT budat waers wrbtr shkzg FROM bsak APPENDING TABLE gt_wrbtr WHERE ebeln = bseg-ebeln AND ebelp = bseg-ebelp.
**          IF lv_lifnr NE bseg-lifnr.
**            SELECT SINGLE ebeln
**                          ebelp
**                          ekorg
**                          ltsnr
**                          werks
**                          parvw
**                          parza
**                          lifn2
**                          FROM ekpa INTO gs_ekpa WHERE ebeln = bseg-ebeln
**                                                   AND ekorg = lv_ekorg
**                                                   AND parvw = 'RS'.
**            IF sy-subrc = 0.
**              IF gs_ekpa-lifn2 = bseg-lifnr.
**                SELECT SINGLE a~zzpclv a~waers INTO (lv_zzpclv,lv_waers1) FROM lfm1 AS a INNER JOIN ekko AS b ON
**                              a~ekorg = b~ekorg WHERE a~lifnr = lv_lifnr AND b~ebeln = bseg-ebeln.
**              ELSE.
**                MESSAGE 'Vendor Code is not matching with Purchase order' TYPE 'E'.
**              ENDIF.
**            ENDIF.
**          ELSE.
**            SELECT SINGLE a~zzpclv a~waers INTO (lv_zzpclv,lv_waers1) FROM lfm1 AS a INNER JOIN ekko AS b ON
**                          a~ekorg = b~ekorg WHERE a~lifnr = bseg-lifnr AND b~ebeln = bseg-ebeln.
**          ENDIF.
**          IF lv_waers NE bseg-pswsl.
**            lv_check = 1.
**          ELSEIF lv_waers1 IS NOT INITIAL AND lv_waers1 NE bseg-pswsl.
**            lv_check = 1.
**          ELSE.
**            LOOP AT gt_wrbtr INTO gs_wrbtr WHERE waers NE bseg-pswsl.
**              lv_check = 1.
**              EXIT.
**            ENDLOOP.
**          ENDIF.
**          IF lv_check = 1.
**            SELECT fcurr tcurr gdatu ukurs INTO TABLE gt_tcurr
**              FROM tcurr WHERE fcurr = lv_waers
**              AND tcurr = bseg-pswsl.
**            IF lv_waers1 IS NOT INITIAL AND lv_waers1 NE bseg-pswsl.
**              SELECT fcurr tcurr gdatu ukurs APPENDING TABLE gt_tcurr
**                 FROM tcurr WHERE fcurr = lv_waers1
**                 AND tcurr = bseg-pswsl.
**            ENDIF.
**            IF gt_wrbtr IS NOT INITIAL.
**              SELECT fcurr tcurr gdatu ukurs APPENDING TABLE gt_tcurr
**                 FROM tcurr FOR ALL ENTRIES IN gt_wrbtr WHERE fcurr = gt_wrbtr-waers
**                 AND tcurr = bseg-pswsl.
**            ENDIF.
**            IF gt_tcurr IS NOT INITIAL.
**              LOOP AT gt_tcurr INTO gs_tcurr.
**                gs_tcurr1-fcurr = gs_tcurr-fcurr.
**                gs_tcurr1-tcurr = gs_tcurr-tcurr.
**                CLEAR ls_date.
**                CALL FUNCTION 'CONVERSION_EXIT_INVDT_OUTPUT'
**                  EXPORTING
**                    input  = gs_tcurr-gdatu
**                  IMPORTING
**                    output = ls_date.
**                CALL FUNCTION 'CONVERT_DATE_TO_INTERNAL'
**                  EXPORTING
**                    date_external            = ls_date
**                  IMPORTING
**                    date_internal            = gs_tcurr1-datum
**                  EXCEPTIONS
**                    date_external_is_invalid = 1
**                    OTHERS                   = 2.
**                IF sy-subrc <> 0.
*** Implement suitable error handling here
**                ENDIF.
**                gs_tcurr1-ukurs = gs_tcurr-ukurs.
**                APPEND gs_tcurr1 TO gt_tcurr1.
**                CLEAR : gs_tcurr1,gs_tcurr.
**              ENDLOOP.
**
**              DELETE gt_tcurr1 WHERE datum GT bkpf-bldat.
**              SORT gt_tcurr1 BY datum DESCENDING.
**
**              IF lv_waers NE bseg-pswsl.
**                READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = lv_waers
**                                                            tcurr = bseg-pswsl.
**                lv_ukurs = gs_tcurr1-ukurs.
**                IF lv_ukurs < 0.
**                  lv_dpamt = ( lv_dpamt / lv_ukurs ) * ( -1 ).
**                ELSE.
**                  lv_dpamt = lv_dpamt * lv_ukurs.
**                ENDIF.
**              ENDIF.
**            ENDIF.
**          ENDIF.
**          " For check of Vendor Credit limit(maintained in Vendor master) with current document amount.
**          IF lv_waers1 IS NOT INITIAL AND bseg-umskz = '+'.
**            IF lv_waers1 NE bseg-pswsl.
**              READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = lv_waers1
**                                                         tcurr = bseg-pswsl.
**              lv_ukurs = gs_tcurr1-ukurs.
**              IF lv_ukurs < 0.
**                lv_zzpclv = ( lv_zzpclv / lv_ukurs ) * ( -1 ).
**              ELSE.
**                lv_zzpclv = lv_zzpclv * lv_ukurs.
**              ENDIF.
**            ENDIF.
**            CLEAR : lv_wrbtr.
**            LOOP AT gt_wrbtr INTO gs_wrbtr.
**              IF gs_wrbtr-waers NE bseg-pswsl.
**                LOOP AT gt_tcurr1 INTO gs_tcurr1 WHERE fcurr = gs_wrbtr-waers
**                                                  AND  tcurr = bseg-pswsl
**                                                  AND  datum LE gs_wrbtr-budat.
**                  IF sy-subrc = 0.
**                    lv_ukurs = gs_tcurr1-ukurs.
**                    IF lv_ukurs < 0.
**                      gs_wrbtr-wrbtr = ( gs_wrbtr-wrbtr / lv_ukurs ) * ( -1 ).
**                    ELSE.
**                      gs_wrbtr-wrbtr = gs_wrbtr-wrbtr * lv_ukurs.
**                    ENDIF.
**                    EXIT.
**                  ENDIF.
**                ENDLOOP.
**              ENDIF.
**              IF gs_wrbtr-shkzg = 'S'.
**                lv_wrbtr = gs_wrbtr-wrbtr + lv_wrbtr.
**              ELSEIF gs_wrbtr-shkzg = 'H'.
**                lv_wrbtr = lv_wrbtr - gs_wrbtr-wrbtr.
**              ENDIF.
**              CLEAR : gs_wrbtr.
**            ENDLOOP.
**            lv_wrbtr = lv_wrbtr + bseg-wrbtr .
**            IF lv_wrbtr < lv_zzpclv.                   " New for EPDK941078
**              MESSAGE 'Payment amount is less than the Vendor Credit Limit, so use Spl GL Indi ‘A’ for Down payment' TYPE 'E'.
**            ENDIF.
**            IF bseg-wrbtr > lv_dpamt.
**              lv_dpamt = bseg-wrbtr - lv_dpamt.
**              lv_amt = lv_dpamt.
**              CONDENSE lv_amt.
**              CONCATENATE 'Payment amount is greater than the down payment mentioned in PO by' lv_amt bseg-pswsl INTO lv_message SEPARATED BY space.
**              MESSAGE lv_message TYPE 'E'.
**            ENDIF.
**          ENDIF.
**          IF  bseg-umskz = 'A' OR bseg-umskz = 'B' . " Coding Added by Murugesan Thavasi.
**            SELECT budat waers wrbtr shkzg FROM bsik INTO TABLE gt_wrbtr1 WHERE bukrs = bseg-bukrs AND lifnr = bseg-lifnr.
**            LOOP AT gt_wrbtr1 INTO gs_wrbtr.
**              IF gs_wrbtr-waers NE bseg-pswsl.
**                LOOP AT gt_tcurr1 INTO gs_tcurr1 WHERE fcurr = gs_wrbtr-waers
**                                                  AND  tcurr = bseg-pswsl
**                                                  AND  datum LE gs_wrbtr-budat.
**                  IF sy-subrc = 0.
**                    lv_ukurs = gs_tcurr1-ukurs.
**                    IF lv_ukurs < 0.
**                      gs_wrbtr-wrbtr = ( gs_wrbtr-wrbtr / lv_ukurs ) * ( -1 ).
**                    ELSE.
**                      gs_wrbtr-wrbtr = gs_wrbtr-wrbtr * lv_ukurs.
**                    ENDIF.
**                    EXIT.
**                  ENDIF.
**                ENDLOOP.
**              ENDIF.
**              IF gs_wrbtr-shkzg = 'S'.
**                gv_wrbtr = gv_wrbtr + gs_wrbtr-wrbtr .
**              ELSEIF gs_wrbtr-shkzg = 'H'.
**                gv_wrbtr = gv_wrbtr + gs_wrbtr-wrbtr * -1.
**              ENDIF.
**            ENDLOOP.
**            IF gv_wrbtr GT 0.
**              lv_amt = gv_wrbtr.
**              CONDENSE lv_amt.
**              CONCATENATE 'Vendor has DR balance' lv_amt bseg-pswsl INTO lv_message SEPARATED BY space.
**              MESSAGE lv_message TYPE 'W'.
**            ENDIF.
**            LOOP AT gt_wrbtr INTO gs_wrbtr.
**              IF gs_wrbtr-waers NE bseg-pswsl.
**                LOOP AT gt_tcurr1 INTO gs_tcurr1 WHERE fcurr = gs_wrbtr-waers
**                                                  AND  tcurr = bseg-pswsl
**                                                  AND  datum LE gs_wrbtr-budat.
**                  lv_ukurs = gs_tcurr1-ukurs.
**                  IF lv_ukurs < 0.
**                    gs_wrbtr-wrbtr = ( gs_wrbtr-wrbtr / lv_ukurs ) * ( -1 ).
**                  ELSE.
**                    gs_wrbtr-wrbtr = gs_wrbtr-wrbtr * lv_ukurs.
**                  ENDIF.
**                  EXIT.
**                ENDLOOP.
**              ENDIF.
**              IF gs_wrbtr-shkzg = 'S'.
**                lv_wrbtr = gs_wrbtr-wrbtr + lv_wrbtr.
**              ELSEIF gs_wrbtr-shkzg = 'H'.
**                lv_wrbtr = lv_wrbtr - gs_wrbtr-wrbtr.
**              ENDIF.
**              CLEAR : gs_wrbtr.
**            ENDLOOP.
**            lv_wrbtr = lv_wrbtr + bseg-wrbtr .
**            IF lv_wrbtr > lv_dpamt.
**              lv_dpamt = lv_wrbtr - lv_dpamt.
**              lv_amt = lv_dpamt.
**              CONDENSE lv_amt.
**              CONCATENATE 'Payment amount is greater than the down payment mentioned in PO by' lv_amt bseg-pswsl INTO lv_message SEPARATED BY space.
**              MESSAGE lv_message TYPE 'E'.
**            ENDIF.
**            IF lv_waers1 IS NOT INITIAL.
**              IF lv_waers1 NE bseg-pswsl.
**                READ TABLE gt_tcurr1 INTO gs_tcurr1 WITH KEY fcurr = lv_waers1
**                                                             tcurr = bseg-pswsl.
**                lv_ukurs = gs_tcurr1-ukurs.
**                IF lv_ukurs < 0.
**                  lv_zzpclv = ( lv_zzpclv / lv_ukurs ) * ( -1 ).
**                ELSE.
**                  lv_zzpclv = lv_zzpclv * lv_ukurs.
**                ENDIF.
**              ENDIF.
**            ENDIF.
**            IF lv_wrbtr > lv_zzpclv.
**              MESSAGE 'Payment amount is greater than the Vendor Credit Limit' TYPE 'E'.
**            ENDIF.
**          ENDIF.
**        ELSE.
**          MESSAGE 'No Down Payment Amount is maintained in PO' TYPE 'E'. " Nijin 21.04.2015
**        ENDIF.
**      ELSE.
**        MESSAGE 'Purchase Order not available' TYPE 'E'.
**      ENDIF.
**    ELSE.
**      MESSAGE 'Enter PO number for Special GL indicator posting' TYPE 'E'.
**    ENDIF.
**  ENDIF.
**
**ENDFORM.                                                    "Z008
** End - Z008 removed for PERUFIENHA1-C6

* Start of Insert - EPDK953677

*&---------------------------------------------------------------------*
*&      Form  Z009
*&---------------------------------------------------------------------*
*       This user exit is used to check Vendor Credit Limit check
*       while making downpayment to the Invoicing Vendor
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z009 USING b_result.

*--------------------------------------------------------------------*
* Types Declaration
*--------------------------------------------------------------------*
  TYPES:

    BEGIN OF  ty_ekko,
      ebeln	TYPE                    ebeln,      "Purchase Order
      bukrs	TYPE                    bukrs,      "Company Code
      bsart	TYPE                    esart,      "Doc. Type
      ekorg	TYPE                    ekorg,      "Purchasing Org.
      waers	TYPE                    waers,      "Currency
    END OF    ty_ekko,

    BEGIN OF  ty_ekpo,
      ebeln	TYPE                    ebeln,      "Purchase Order
      ebelp	TYPE                    ebelp,      "Item
      werks	TYPE                    ewerk,      "Plant "EPDK958332
      dppct	TYPE                    me_dppcnt,  "Down Payment Percent
      "Down Payment Amount in Doc. Currency
      dpamt	TYPE                    me_dpamnt,
    END OF    ty_ekpo,

    BEGIN OF  ty_ekbe,
      ebeln	TYPE                    ebeln,  "Purchasing Doc.
      ebelp	TYPE                    ebelp,  "Purchasing Doc. Item
      zekkn	TYPE                    dzekkn, "Sequential No.
      vgabe	TYPE                    vgabe,  "Transaction Type
      gjahr	TYPE                    mjahr,  "Material Doc. Year
      belnr	TYPE                    mblnr,  "Material Doc.
      buzei	TYPE                    mblpo,  "Material Doc. Item
      bewtp	TYPE                    bewtp,  "PO History Category
      bwart	TYPE                    bwart,  "Movement Type
      dmbtr	TYPE                    dmbtr,  "Amount in LC
      shkzg	TYPE                    shkzg,  "Debit/Credit Indicator
    END OF    ty_ekbe,

    BEGIN OF  ty_ekpa,
      ebeln	TYPE                    ebeln,      "Purchase Order
      ebelp	TYPE                    ebelp,      "Purchase Order Item
      ekorg	TYPE                    ekorg,      "Purchasing Group
      ltsnr	TYPE                    ltsnr,      "Vendor Subrange
      werks	TYPE                    werks_d,    "Plant
      parvw	TYPE                    parvw,      "Partner Role
      parza	TYPE                    parza,      "Partner Counter
      lifn2	TYPE                    lifn2,      "Vendor
    END OF    ty_ekpa,

    BEGIN OF  ty_lfm1,
      lifnr	 TYPE                  elifn,      "Vendor
      ekorg	 TYPE                  ekorg,      "Purchasing Org.
      zzpclv TYPE                  zdt_zzpclv, "Credit Limit Value
    END OF    ty_lfm1,

    BEGIN OF  ty_t001,
      bukrs	TYPE                  bukrs,      "Company Code
      waers	TYPE                  waers,      "Currency Key
    END OF    ty_t001,

    ty_t_ekbe TYPE STANDARD TABLE OF  ty_ekbe,
    ty_t_ekpa TYPE STANDARD TABLE OF  ty_ekpa,
    ty_t_lfm1 TYPE STANDARD TABLE OF  ty_lfm1.

*--------------------------------------------------------------------*
* Constants Declaration
*--------------------------------------------------------------------*
  CONSTANTS:
    c_a    TYPE                  char1 VALUE 'A',           "EPDK956279
    c_c    TYPE                  char1 VALUE 'C',
    c_s    TYPE                  char1 VALUE 'S',
    c_h    TYPE                  char1 VALUE 'H',
    c_vn   TYPE                  char2 VALUE 'VN',
    c_pi   TYPE                  char2 VALUE 'PI',          "EPDK958332
    c_z001 TYPE                  char4 VALUE 'Z001',
    c_co01 TYPE                  char4 VALUE 'CO01',        "EPDK956279
    c_co02 TYPE                  char4 VALUE 'CO02'.        "EPDK956279
*    c_z003 TYPE                  char4 VALUE 'Z003'."Delete - EPDK956279

*--------------------------------------------------------------------*
* Local Data Declarations
*--------------------------------------------------------------------*
  DATA:

* Local Variable Declarations
    lv_dpamt(16)        TYPE                    p DECIMALS 2,
    lv_wrbtr(16)        TYPE                    p DECIMALS 2,
    lv_amount_int       TYPE                    bapicurr_d,
    lv_amount_ext       TYPE                    bapicurr_d,
    lv_dp_amt(16)       TYPE                    p DECIMALS 2,
    lv_dpreq_amt(16)    TYPE                    p DECIMALS 2,
    lv_amt_diff(16)     TYPE                    p DECIMALS 2,
    lv_tot_dpamt(16)    TYPE                    p DECIMALS 2,
    lv_dppo_diff(16)    TYPE                    p DECIMALS 2,
    lv_dpr_diff(16)     TYPE                    p DECIMALS 2,
    lv_crlimit_msg      TYPE                    char50,
    lv_parvw_vn         TYPE                    parvw,      "EPDK956279
    lv_parvw_pi         TYPE                    parvw,      "EPDK958332
    lv_pclv(16)         TYPE                    p DECIMALS 2, "EPDK956279
    lv_zzpclv(16)       TYPE                    p DECIMALS 2, "EPDK956279
    lv_dpreq_poh(16)    TYPE                    p DECIMALS 2, "EPDK958332
    lv_msg              TYPE                    string,     "EPDK958332
    lv_count            TYPE                    i,          "EPDK958332
    lv_count_c          TYPE                    char10,     "EPDK958332
    lv_result           TYPE                    os_boolean, "EPDK958332
    lv_email            TYPE                    ad_smtpadr, "EPDK958332
    lv_lifnr            TYPE                    lifn2,      "EPDK958332
    lv_ebeln            TYPE                    ebeln,      "EPDK958332
    lv_dpamt_c          TYPE                    char30,     "EPDK958332
    lv_sender_name      TYPE                    string,     "EPDK958332
    lv_subject          TYPE                    so_obj_des, "EPDK958332

* Local Work Area Declarations
    ls_ekko             TYPE                    ty_ekko,
    ls_ekpo             TYPE                    ty_ekpo,
    ls_ekbe             TYPE                    ty_ekbe,
    ls_t001             TYPE                    ty_t001,
    ls_ekpa             TYPE                    ty_ekpa,    "EPDK956279
    ls_lfm1             TYPE                    ty_lfm1,    "EPDK956279
    ls_zcofitr_crdlimit TYPE                    zcofitr_crdlimit, "EPDK956279
    ls_text             TYPE                    soli,       "EPDK958332
    ls_email            TYPE                    zgtfitb_email, "EPDK958332

* Local Object Reference Declarations
    lo_exc_bcs          TYPE REF TO             cx_bcs,     "EPDK958332
    lo_send_req         TYPE REF TO             cl_bcs,     "EPDK958332
    lo_sender           TYPE REF TO             cl_sapuser_bcs, "EPDK958332
    lo_recipient        TYPE REF TO             if_recipient_bcs, "EPDK958332
    lo_document         TYPE REF TO             cl_document_bcs, "EPDK958332

* Local Internal Table Declarations
    lt_ekbe             TYPE                    ty_t_ekbe,
    lt_ekpa             TYPE                    ty_t_ekpa,  "EPDK956279
    lt_lfm1             TYPE                    ty_t_lfm1,  "EPDK956279
    lt_text             TYPE                    soli_tab,   "EPDK958332
    lt_zgtmmtr_limit    TYPE STANDARD TABLE OF  zgtmmtr_limit, "EPDK956279
    lt_email            TYPE STANDARD TABLE OF  zgtfitb_email. "EPDK958332

*--------------------------------------------------------------------*
* Field Symbols Declaration
*--------------------------------------------------------------------*
  FIELD-SYMBOLS:

* Field Symbols - Variable Declarations
      <fs_value>     TYPE                    any.


* Start of Insert - EPDK956279
  SELECT      *
  FROM        zgtmmtr_limit
  INTO TABLE  lt_zgtmmtr_limit
  WHERE       bukrs =   bkpf-bukrs
  AND         ekorg IN  (c_co01, c_co02).
  IF sy-subrc = 0.
    SORT: lt_zgtmmtr_limit BY bukrs ekorg.

  ELSE.
    RETURN.
  ENDIF.
* End of Insert - EPDK956279

  IF bseg-ebeln IS NOT INITIAL
  OR bseg-zumsk <> c_a.                                     "EPDK958332

    "To convert currency in External Format - Amount
    lv_amount_int = bseg-wrbtr.

    CALL FUNCTION 'BAPI_CURRENCY_CONV_TO_EXTERNAL'
      EXPORTING
        currency        = bkpf-waers
        amount_internal = lv_amount_int
      IMPORTING
        amount_external = lv_amount_ext.

    lv_wrbtr = lv_amount_ext.
    CLEAR: lv_amount_int, lv_amount_ext.

    "To get Purchase Order Header details
    SELECT SINGLE ebeln bukrs bsart ekorg waers
    FROM          ekko
    INTO          ls_ekko
    WHERE         ebeln = bseg-ebeln.
    IF sy-subrc = 0.

* Start of Insert - EPDK956279

* To check whether the Credit Limit check is to be performed for the
* Company Code and Purchasing Organization
      READ TABLE  lt_zgtmmtr_limit TRANSPORTING NO FIELDS
      WITH KEY    bukrs = ls_ekko-bukrs
                  ekorg = ls_ekko-ekorg
      BINARY SEARCH.
      IF sy-subrc <> 0.
        RETURN.
      ENDIF.
* End of Insert - EPDK956279

      "To get Company Code details
      SELECT SINGLE bukrs waers
      FROM          t001
      INTO          ls_t001
      WHERE         bukrs = ls_ekko-bukrs.
      IF sy-subrc <> 0.
        CLEAR: ls_t001.
      ENDIF.

      IF ls_ekko-bsart = c_z001.
*      OR ls_ekko-bsart = c_z003.  "Delete - EPDK956279

        "To get Purchase Order Item details
        SELECT SINGLE ebeln ebelp werks dppct dpamt         "EPDK958332
        FROM          ekpo
        INTO          ls_ekpo
        WHERE         ebeln = bseg-ebeln
        AND           ebelp = bseg-ebelp.
        IF sy-subrc = 0.

          IF ls_ekpo-dpamt IS NOT INITIAL.

* To convert currency in External Format - Down Payment Amount from PO
            lv_amount_int = ls_ekpo-dpamt.

            CALL FUNCTION 'BAPI_CURRENCY_CONV_TO_EXTERNAL'
              EXPORTING
                currency        = ls_ekko-waers
                amount_internal = lv_amount_int
              IMPORTING
                amount_external = lv_amount_ext.

            lv_dpamt = lv_amount_ext.
            CLEAR: lv_amount_int, lv_amount_ext.

            IF  lv_wrbtr > lv_dpamt.
              lv_dppo_diff    = lv_wrbtr - lv_dpamt.
              lv_crlimit_msg  = lv_dppo_diff.

              CONDENSE: lv_crlimit_msg NO-GAPS.

              MESSAGE e398(00)
              WITH
              'La cantidad del pago de Down es el exceso de'(013)
              lv_crlimit_msg space space.
            ENDIF.

          ELSE.
            MESSAGE e398(00)
            WITH    'No Pago Monto mantenido en PO'(001) space space
                    space.
          ENDIF.

* To get details of Down Payment Request and Down Payment for PO
          SELECT      ebeln ebelp zekkn vgabe gjahr belnr buzei bewtp
                      bwart dmbtr shkzg
          FROM        ekbe
          INTO TABLE  lt_ekbe
          WHERE       ebeln = ls_ekpo-ebeln
          AND         ebelp = ls_ekpo-ebelp.
          IF sy-subrc = 0.
            SORT: lt_ekbe BY ebeln ebelp zekkn vgabe.

            LOOP AT lt_ekbe INTO ls_ekbe.

              CASE ls_ekbe-shkzg.
                WHEN c_s.   "Debit

                  CASE ls_ekbe-vgabe.
                    WHEN '4'.   "Down Payment
                      lv_dp_amt = lv_dp_amt + ls_ekbe-dmbtr.

                    WHEN 'A'.   "Down Payment Request
                      lv_dpreq_amt = lv_dpreq_amt + ls_ekbe-dmbtr.
                  ENDCASE.

                WHEN c_h.   "Credit

                  CASE ls_ekbe-vgabe.
                    WHEN '4'.   "Down Payment
                      lv_dp_amt = lv_dp_amt - ls_ekbe-dmbtr.

                    WHEN 'A'.   "Down Payment Request
                      lv_dpreq_amt = lv_dpreq_amt - ls_ekbe-dmbtr.
                  ENDCASE.
              ENDCASE.
            ENDLOOP.

* To convert currency to External Format - Amount from Down Payment
            lv_amount_int = lv_dp_amt.

            CALL FUNCTION 'BAPI_CURRENCY_CONV_TO_EXTERNAL'
              EXPORTING
                currency        = ls_t001-waers
                amount_internal = lv_amount_int
              IMPORTING
                amount_external = lv_amount_ext.

            lv_dp_amt = lv_amount_ext.
            CLEAR: lv_amount_int, lv_amount_ext.

* To convert currency in External Format - Amount from Down Payment
* Request
            lv_amount_int = lv_dpreq_amt.

            CALL FUNCTION 'BAPI_CURRENCY_CONV_TO_EXTERNAL'
              EXPORTING
                currency        = ls_t001-waers
                amount_internal = lv_amount_int
              IMPORTING
                amount_external = lv_amount_ext.

            lv_dpreq_amt = lv_amount_ext.
            CLEAR: lv_amount_int, lv_amount_ext.
          ENDIF.

* To calculate the remaining amounts in Down Payment Request and Down
* Payment
          lv_amt_diff   = lv_dpreq_amt - lv_dp_amt.
          lv_dpreq_poh  = lv_wrbtr + lv_dpreq_amt.          "EPDK958332
          lv_dpreq_amt  = lv_dpamt - lv_dpreq_amt.
          lv_dp_amt     = lv_dpamt - lv_dp_amt.
          lv_dpr_diff   = lv_dpreq_amt.                     "EPDK956279

          CASE sy-tcode.
            WHEN 'FBA6'.

              IF lv_wrbtr > lv_dpreq_amt.
                lv_crlimit_msg  = lv_dpr_diff.

                CONDENSE: lv_crlimit_msg NO-GAPS.

                CONCATENATE:  'cantidad restante'(015) lv_crlimit_msg
                INTO          lv_crlimit_msg
                SEPARATED BY  space.

                MESSAGE e398(00)
                WITH
                'DP solicitud puede ser creado para'(014)
                lv_crlimit_msg 'para el PO'(016) bseg-ebeln.
              ENDIF.

* Start of Insert - EPDK956279

              "To get Partners of Purchasing Document
              SELECT      ebeln ebelp ekorg ltsnr werks parvw parza lifn2
              FROM        ekpa
              INTO TABLE  lt_ekpa
              WHERE       ebeln = ls_ekko-ebeln.
              IF sy-subrc = 0.
                SORT: lt_ekpa BY ebeln parvw.

* Conversion Routine using 'PARVW' - Internal Format
                CALL FUNCTION 'CONVERSION_EXIT_PARVW_INPUT'
                  EXPORTING
                    input  = c_vn
                  IMPORTING
                    output = lv_parvw_vn.

                "To get PO Vendor
                READ TABLE  lt_ekpa INTO ls_ekpa
                WITH KEY    ebeln = ls_ekko-ebeln
                            parvw = lv_parvw_vn
                BINARY SEARCH.
                IF sy-subrc = 0.

                  "To get Credit Limit Value of PO Vendor
                  SELECT      lifnr ekorg zzpclv
                  FROM        lfm1
                  INTO TABLE  lt_lfm1
                  WHERE       lifnr =  ls_ekpa-lifn2
                  AND         ekorg IN (c_co01, c_co02).
                  IF sy-subrc = 0.
                    SORT: lt_lfm1 BY lifnr ekorg.

                    READ TABLE  lt_lfm1 INTO ls_lfm1
                    WITH KEY    lifnr = ls_ekpa-lifn2
                                ekorg = c_co01
                    BINARY SEARCH.
                    IF sy-subrc = 0.

                      IF ls_lfm1-zzpclv IS NOT INITIAL.

                        "Currency in External Format - Credit Limit Value
                        lv_amount_int = ls_lfm1-zzpclv.  "Internal Format

                        "To convert currency in External Format
                        CALL FUNCTION 'BAPI_CURRENCY_CONV_TO_EXTERNAL'
                          EXPORTING
                            currency        = ls_t001-waers
                            amount_internal = lv_amount_int
                          IMPORTING
                            amount_external = lv_amount_ext.

                        lv_zzpclv = lv_amount_ext. "External Format

                        CLEAR: lv_amount_int, lv_amount_ext.

                      ELSE.

                        CLEAR: ls_lfm1.

                        READ TABLE  lt_lfm1 INTO ls_lfm1
                        WITH KEY    lifnr = ls_ekpa-lifn2
                                    ekorg = c_co02
                        BINARY SEARCH.
                        IF sy-subrc = 0.

                          "Currency in External Format - Credit Limit Value
                          lv_amount_int = ls_lfm1-zzpclv.  "Internal Format

                          "To convert currency in External Format
                          CALL FUNCTION 'BAPI_CURRENCY_CONV_TO_EXTERNAL'
                            EXPORTING
                              currency        = ls_t001-waers
                              amount_internal = lv_amount_int
                            IMPORTING
                              amount_external = lv_amount_ext.

                          lv_zzpclv = lv_amount_ext. "External Format
                          CLEAR: lv_amount_int, lv_amount_ext.
                        ENDIF.
                      ENDIF.
                    ENDIF.

* To check whether the amount entered in the Down Payment exceeds the
* Credit Limit Value of PO Vendor
                    IF lv_zzpclv IS NOT INITIAL.

                      IF  lv_dpreq_poh > lv_zzpclv.
                        lv_amt_diff     = lv_dpreq_poh - lv_zzpclv.
                        lv_crlimit_msg  = lv_amt_diff.
                        CONDENSE: lv_crlimit_msg.

                        CONCATENATE:  'de LBA por'(011) lv_crlimit_msg
                        INTO          lv_crlimit_msg
                        SEPARATED BY  space.

                        CONDENSE: lv_crlimit_msg.

                        MESSAGE e398(00)
                        WITH
                        'Cantidad de pago supera el valor límite de crédito'(004)
                        lv_crlimit_msg space space.
                      ENDIF.

                    ELSE.

                      "To get Credit Limit Value based on PO and PO Vendor
                      SELECT SINGLE *
                      FROM          zcofitr_crdlimit
                      INTO          ls_zcofitr_crdlimit
                      WHERE         lifnr = ls_ekpa-lifn2
                      AND           ebeln = ls_ekko-ebeln.
                      IF sy-subrc = 0.

                        "Currency in External Format - Credit Limit Value
                        lv_amount_int = ls_zcofitr_crdlimit-pclv.  "Internal Format

                        "To convert currency in External Format
                        CALL FUNCTION 'BAPI_CURRENCY_CONV_TO_EXTERNAL'
                          EXPORTING
                            currency        = ls_t001-waers
                            amount_internal = lv_amount_int
                          IMPORTING
                            amount_external = lv_amount_ext.

                        lv_pclv = lv_amount_ext. "External Format
                        CLEAR: lv_amount_int, lv_amount_ext.

* If Credit Limit value is not maintained in both tables - LFM1 and
* ZCOFITR_CRDLIMIT, display an error message
                        IF lv_pclv IS INITIAL.

* Start of Insert - EPDK958332

                          "To get E-mail addresses
                          SELECT      *
                          FROM        zgtfitb_email
                          INTO TABLE  lt_email
                          WHERE       bukrs = ls_ekko-bukrs
                          AND         gsber = ls_ekpo-werks.
                          IF sy-subrc = 0.
                            SORT: lt_email BY bukrs gsber.
                          ENDIF.

                          TRY.

                              "To create Send Request
                              lo_send_req = cl_bcs=>create_persistent( ).

                              "To create Sender
                              lo_sender = cl_sapuser_bcs=>create( sy-uname ).

                              IF  lo_send_req IS BOUND
                              AND lo_sender   IS BOUND.
                                lo_send_req->set_sender( lo_sender ).
                              ENDIF.

                              LOOP AT lt_email INTO ls_email.
                                lv_email = ls_email-email_addr.

                                "E-mail address of the Recipient
                                lo_recipient =
                                cl_cam_address_bcs=>create_internet_address(
                                lv_email ).

                                "To add Recipient
                                IF lo_send_req IS BOUND.
                                  lo_send_req->add_recipient(
                                  i_recipient = lo_recipient i_express = abap_true ).
                                ENDIF.

                                CLEAR: lv_email.
                              ENDLOOP.

                              APPEND: '<HTML> <BODY>' TO  lt_text.

                              CONCATENATE: '<P>' 'Querido Equipo,'(027) '</P>'
                              INTO         ls_text.

                              APPEND ls_text TO  lt_text.
                              CLEAR: ls_text.

                              CONCATENATE '<P>'
              'Límite de crédito de venta no se mantiene para el proveedor en el maestro de proveedores.'(017)
                              '</P>'
                              INTO        ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CONCATENATE: '<P>'
              'Por favor, aprobar para hacer el pago inicial según los detalles a continuación.'(018)
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              APPEND '<TABLE BORDER = ''1'' >' TO lt_text.

                              CONCATENATE:  '<TR> <TH>' 'S.No.'(022) '</TH>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CONCATENATE:  '<TH>' 'Orden de Compra'(023) '</TH>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CONCATENATE:  '<TH>' 'Vendedor del PO'(024) '</TH>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CONCATENATE:  '<TH>' 'Facturas de Proveedores'(025) '</TH>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CONCATENATE:  '<TH>' 'DP en el PO'(026) '</TH>' '</TR>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              "Serial No.
                              lv_count    = lv_count + 1.
                              lv_count_c  = lv_count.

                              CONCATENATE:  lv_count_c '.'
                              INTO          lv_count_c.

                              CONDENSE: lv_count_c NO-GAPS.

                              CONCATENATE:  '<TR> <TD>' lv_count_c '</TD>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

* Conversion Routine using "ALPHA" - PO Number
                              CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
                                EXPORTING
                                  input  = ls_ekko-ebeln
                                IMPORTING
                                  output = lv_ebeln.

                              CONCATENATE:  '<TD>' lv_ebeln '</TD>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

* Conversion Routine using "ALPHA" - PO Vendor
                              CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
                                EXPORTING
                                  input  = ls_ekpa-lifn2
                                IMPORTING
                                  output = lv_lifnr.

                              CONCATENATE:  '<TD>' lv_lifnr '</TD>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CLEAR: ls_ekpa, lv_lifnr.

* Conversion Routine using 'PARVW' - Internal Format
                              CALL FUNCTION 'CONVERSION_EXIT_PARVW_INPUT'
                                EXPORTING
                                  input  = c_pi
                                IMPORTING
                                  output = lv_parvw_pi.

                              "To get Invoicing Vendor
                              READ TABLE  lt_ekpa INTO ls_ekpa
                              WITH KEY    ebeln = ls_ekko-ebeln
                                          parvw = lv_parvw_pi
                              BINARY SEARCH.
                              IF sy-subrc = 0.

* Conversion Routine using "ALPHA" - Invoicing Vendor
                                CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
                                  EXPORTING
                                    input  = ls_ekpa-lifn2
                                  IMPORTING
                                    output = lv_lifnr.
                              ENDIF.

                              CONCATENATE:  '<TD>' lv_lifnr '</TD>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              lv_dpamt_c = lv_dpamt.
                              CONDENSE: lv_dpamt_c NO-GAPS.

                              CONCATENATE:  '<TD>' lv_dpamt_c '</TD> </TR>'
                              INTO          ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              APPEND '</TABLE>' TO lt_text.

                              CONCATENATE: '<P>'
              'Por favor, utilice el código de transacción ZFI5014 para aprobar o aumentar el límite de crédito temporal.'(020)
                              '</P>'
                              INTO          ls_text
                              SEPARATED BY  space.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CONCATENATE: '<P>'
              'Aprobación cantidad no debe exceder ''''DP en PO'''' cantidad.'(021)
                              '</P>'
                              INTO          ls_text
                              SEPARATED BY  space.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              CONCATENATE: '<P>'  'Gracias y Saludos,'(028) '</P>'
                              INTO         ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.

                              IF lo_sender IS BOUND.
                                "To get name of Sender
                                lv_sender_name =
                                lo_sender->if_sender_bcs~address_name( ).

                                CONCATENATE: '<P>' lv_sender_name '</P>'
                                INTO         ls_text.

                                APPEND ls_text TO lt_text.
                                CLEAR: ls_text.
                              ENDIF.

                              APPEND '</BODY> </HTML>' TO  lt_text.

                              lv_subject = 'Proveedor Límite de Crédito - En lo que respecta'(029).

                              "To create Mail Content
                              lo_document = cl_document_bcs=>create_document(
                                EXPORTING
                                  i_type         = 'HTM'
                                  i_subject      = lv_subject
                                  i_text         = lt_text ).

                              IF lo_send_req IS BOUND.

                                "To set Mail subject and content
                                IF lo_document IS BOUND.
                                  lo_send_req->set_document( lo_document ).
                                ENDIF.

                                "To set settings for Status Confirmation
                                lo_send_req->set_status_attributes(
                                i_requested_status = 'N' i_status_mail = 'N' ).

                                "To activate immediate sending without send process
                                lo_send_req->set_send_immediately( abap_true ).

                                "To send E-mail
                                lv_result = lo_send_req->send( ).

                                COMMIT WORK AND WAIT.
                              ENDIF.

                            CATCH cx_send_req_bcs INTO lo_exc_bcs.
                              lv_msg = lo_exc_bcs->if_message~get_text( ).
                              MESSAGE lv_msg TYPE 'S'.

                            CATCH cx_document_bcs INTO lo_exc_bcs.
                              lv_msg = lo_exc_bcs->if_message~get_text( ).
                              MESSAGE lv_msg TYPE 'S'.

                            CATCH cx_address_bcs INTO lo_exc_bcs.
                              lv_msg = lo_exc_bcs->if_message~get_text( ).
                              MESSAGE lv_msg TYPE 'S'.
                          ENDTRY.
* End of Insert - EPDK958332

                          MESSAGE e398(00)
                          WITH    'Proveedor límite de crédito es "CERO"'(019)
                                  space space space.

                        ELSEIF lv_dpreq_poh > lv_pclv.
                          lv_amt_diff     = lv_dpreq_poh - lv_pclv.
                          lv_crlimit_msg  = lv_amt_diff.
                          CONDENSE: lv_crlimit_msg.

                          CONCATENATE:  'de LBA por'(011) lv_crlimit_msg
                          INTO          lv_crlimit_msg
                          SEPARATED BY  space.

                          CONDENSE: lv_crlimit_msg.

                          MESSAGE e398(00)
                          WITH
                          'Cantidad de pago supera el valor límite de crédito'(004)
                          lv_crlimit_msg space space.
                        ENDIF.

                      ELSE.

* Start of Insert - EPDK958332
                        "To get E-mail addresses
                        SELECT      *
                        FROM        zgtfitb_email
                        INTO TABLE  lt_email
                        WHERE       bukrs = ls_ekko-bukrs
                        AND         gsber = ls_ekpo-werks.
                        IF sy-subrc = 0.
                          SORT: lt_email BY bukrs gsber.
                        ENDIF.

                        TRY.

                            "To create Send Request
                            lo_send_req = cl_bcs=>create_persistent( ).

                            "To create Sender
                            lo_sender = cl_sapuser_bcs=>create( sy-uname ).

                            IF  lo_send_req IS BOUND
                            AND lo_sender   IS BOUND.
                              lo_send_req->set_sender( lo_sender ).
                            ENDIF.

                            LOOP AT lt_email INTO ls_email.
                              lv_email = ls_email-email_addr.

                              "E-mail address of the Recipient
                              lo_recipient =
                              cl_cam_address_bcs=>create_internet_address(
                              lv_email ).

                              "To add Recipient
                              IF lo_send_req IS BOUND.
                                lo_send_req->add_recipient(
                                i_recipient = lo_recipient i_express = abap_true ).
                              ENDIF.

                              CLEAR: lv_email.
                            ENDLOOP.

                            APPEND: '<HTML> <BODY>' TO  lt_text.

                            CONCATENATE: '<P>' 'Querido Equipo,'(027) '</P>'
                            INTO         ls_text.

                            APPEND ls_text TO  lt_text.
                            CLEAR: ls_text.

                            CONCATENATE '<P>'
            'Límite de crédito de venta no se mantiene para el proveedor en el maestro de proveedores.'(017)
                            '</P>'
                            INTO        ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CONCATENATE: '<P>'
            'Por favor, aprobar para hacer el pago inicial según los detalles a continuación.'(018)
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            APPEND '<TABLE BORDER = ''1'' >' TO lt_text.

                            CONCATENATE:  '<TR> <TH>' 'S.No.'(022) '</TH>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CONCATENATE:  '<TH>' 'Orden de Compra'(023) '</TH>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CONCATENATE:  '<TH>' 'Vendedor del PO'(024) '</TH>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CONCATENATE:  '<TH>' 'Facturas de Proveedores'(025) '</TH>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CONCATENATE:  '<TH>' 'DP en el PO'(026) '</TH>' '</TR>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            "Serial No.
                            lv_count    = lv_count + 1.
                            lv_count_c  = lv_count.

                            CONCATENATE:  lv_count_c '.'
                            INTO          lv_count_c.

                            CONDENSE: lv_count_c NO-GAPS.

                            CONCATENATE:  '<TR> <TD>' lv_count_c '</TD>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

* Conversion Routine using "ALPHA" - PO Number
                            CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
                              EXPORTING
                                input  = ls_ekko-ebeln
                              IMPORTING
                                output = lv_ebeln.

                            CONCATENATE:  '<TD>' lv_ebeln '</TD>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

* Conversion Routine using "ALPHA" - PO Vendor
                            CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
                              EXPORTING
                                input  = ls_ekpa-lifn2
                              IMPORTING
                                output = lv_lifnr.

                            CONCATENATE:  '<TD>' lv_lifnr '</TD>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CLEAR: ls_ekpa, lv_lifnr.

* Conversion Routine using 'PARVW' - Internal Format
                            CALL FUNCTION 'CONVERSION_EXIT_PARVW_INPUT'
                              EXPORTING
                                input  = c_pi
                              IMPORTING
                                output = lv_parvw_pi.

                            "To get Invoicing Vendor
                            READ TABLE  lt_ekpa INTO ls_ekpa
                            WITH KEY    ebeln = ls_ekko-ebeln
                                        parvw = lv_parvw_pi
                            BINARY SEARCH.
                            IF sy-subrc = 0.

* Conversion Routine using "ALPHA" - Invoicing Vendor
                              CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
                                EXPORTING
                                  input  = ls_ekpa-lifn2
                                IMPORTING
                                  output = lv_lifnr.
                            ENDIF.

                            CONCATENATE:  '<TD>' lv_lifnr '</TD>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            lv_dpamt_c = lv_dpamt.
                            CONDENSE: lv_dpamt_c NO-GAPS.

                            CONCATENATE:  '<TD>' lv_dpamt_c '</TD> </TR>'
                            INTO          ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            APPEND '</TABLE>' TO lt_text.

                            CONCATENATE: '<P>'
            'Por favor, utilice el código de transacción ZFI5014 para aprobar o aumentar el límite de crédito temporal.'(020)
                            '</P>'
                            INTO          ls_text
                            SEPARATED BY  space.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CONCATENATE: '<P>'
            'Aprobación cantidad no debe exceder ''''DP en PO'''' cantidad.'(021)
                            '</P>'
                            INTO          ls_text
                            SEPARATED BY  space.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            CONCATENATE: '<P>'  'Gracias y Saludos,'(028) '</P>'
                            INTO         ls_text.

                            APPEND ls_text TO lt_text.
                            CLEAR: ls_text.

                            IF lo_sender IS BOUND.
                              "To get name of Sender
                              lv_sender_name =
                              lo_sender->if_sender_bcs~address_name( ).

                              CONCATENATE: '<P>' lv_sender_name '</P>'
                              INTO         ls_text.

                              APPEND ls_text TO lt_text.
                              CLEAR: ls_text.
                            ENDIF.

                            APPEND '</BODY> </HTML>' TO  lt_text.

                            lv_subject = 'Proveedor Límite de Crédito - En lo que respecta'(029).

                            "To create Mail Content
                            lo_document = cl_document_bcs=>create_document(
                              EXPORTING
                                i_type         = 'HTM'
                                i_subject      = lv_subject
                                i_text         = lt_text ).

                            IF lo_send_req IS BOUND.

                              "To set Mail subject and content
                              IF lo_document IS BOUND.
                                lo_send_req->set_document( lo_document ).
                              ENDIF.

                              "To set settings for Status Confirmation
                              lo_send_req->set_status_attributes(
                              i_requested_status = 'N' i_status_mail = 'N' ).

                              "To activate immediate sending without send process
                              lo_send_req->set_send_immediately( abap_true ).

                              "To send E-mail
                              lv_result = lo_send_req->send( ).

                              COMMIT WORK AND WAIT.
                            ENDIF.

                          CATCH cx_send_req_bcs INTO lo_exc_bcs.
                            lv_msg = lo_exc_bcs->if_message~get_text( ).
                            MESSAGE lv_msg TYPE 'S'.

                          CATCH cx_document_bcs INTO lo_exc_bcs.
                            lv_msg = lo_exc_bcs->if_message~get_text( ).
                            MESSAGE lv_msg TYPE 'S'.

                          CATCH cx_address_bcs INTO lo_exc_bcs.
                            lv_msg = lo_exc_bcs->if_message~get_text( ).
                            MESSAGE lv_msg TYPE 'S'.
                        ENDTRY.
* End of Insert - EPDK958332

                        MESSAGE e398(00)
                        WITH    'Proveedor límite de crédito es "CERO"'(019)
                                space space space.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
* End of Insert - EPDK956279

            WHEN 'FBA7'.

              IF lv_wrbtr > lv_dp_amt.
                MESSAGE e398(00)
                WITH    'Importe del pago es mayor que'(005)
                'la cantidad que permanece en Pago Abajo'(003)
                        space space.

              ELSEIF  lv_wrbtr     > lv_amt_diff
              AND     lv_amt_diff  IS NOT INITIAL.
                MESSAGE e398(00)
                WITH    'Importe del pago es mayor que'(005)
                'la diferencia entre la solicitud de anticipo y el'(007)
                        'Pago Abajo'(008) space.
              ENDIF.
          ENDCASE.
        ENDIF.
      ENDIF.
    ENDIF.

  ELSE.

    IF  sy-tcode    = 'FBA7'
    AND bseg-koart  = 'S'
    AND bseg-shkzg  = 'H'.
      RETURN.
    ENDIF.

    MESSAGE e398(00)
    WITH    'Introduzca el número de orden de compra'(009) space space
            space.

  ENDIF.

ENDFORM.

* End of Insert - EPDK953677


* Start of Insert - EPDK962861
*&---------------------------------------------------------------------*
*&      Form  Z010
*&---------------------------------------------------------------------*
*       This user exit is used to check Vendor Credit Limit check
*       while making downpayment to the Invoicing Vendor
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z010 USING b_result.

ENDFORM.
* End of Insert - EPDK962861

*Start of change Charm ID 4000001294 #TR-EPDK966786
*&---------------------------------------------------------------------*
*&      Form  Z011
*&---------------------------------------------------------------------*
*       This user exit is used to check EDN cut off date in
*       OFS check table
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z011 USING b_result.

  DATA : gv_hkont TYPE bseg-hkont,
         gs_param TYPE zgtcatr_param,
         gt_param TYPE TABLE OF zgtcatr_param.

  CONSTANTS:lc_a     TYPE c VALUE 'A',
            lc_ucomm TYPE syst_ucomm VALUE 'BU'.

  gs_param-prognam = sy-repid.
  gs_param-mapid = lc_a.
  gs_param-bukrs = bseg-bukrs.

  IF sy-ucomm NE lc_ucomm.

    CALL FUNCTION 'ZGTTOOLSFM_PARAM'
      EXPORTING
        gs_param                = gs_param
      TABLES
        gt_param                = gt_param
      EXCEPTIONS
        import_parameters_empty = 1
        nodatafound             = 2
        OTHERS                  = 3.
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.

    IF gt_param IS NOT INITIAL.
      CLEAR : gs_param.
      READ TABLE gt_param INTO gs_param INDEX 1.
      gv_hkont = gs_param-param1.
      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
        EXPORTING
          input  = gv_hkont
        IMPORTING
          output = gv_hkont.

      IF bseg-hkont = gv_hkont.
        DATA:ls_date_check TYPE zgtfitr_ofs_chek.

        SELECT SINGLE  * FROM zgtfitr_ofs_chek INTO ls_date_check
        WHERE gjahr = bkpf-gjahr AND monat = bkpf-monat.

        IF sy-subrc = 0.

          IF sy-datum NOT BETWEEN ls_date_check-from_date AND ls_date_check-to_date
          OR sy-uzeit GT ls_date_check-time.

            MESSAGE e161(zgtfi_msg) WITH bkpf-monat.

          ENDIF.

        ENDIF.
        CLEAR:ls_date_check.
      ENDIF.
    ENDIF.
  ENDIF.
ENDFORM.
*End of change   Charm ID 4000001294 #TR-EPDK966786
*Start of change Charm ID 4000001532 #TR-EPDK969084
*&---------------------------------------------------------------------*
*&      Form  Z012
*&---------------------------------------------------------------------*
*       This user exit is used to Display popup Screen in FB60, FB65
*       and MIRO
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z012 USING b_result.
*&---------------------------------------------------------------------*
*& Author          : Paul Karunakar                                   &*
*& Requested by    : Melvin Dsouza                                    &*
*& Module Name     : FI                                               &*
*& Program Type    : Additional Fields - FB60 FB65                    &*
*& Create Date     : 24.11.2016                                       &*
*& Transport No    : EPDK969084  (Obj id - 4000001532)                &*
*&*-------------------------------------------------------------------&*
*& Author          : Dillibabu E                                      &*
*& Requested by    : Venkata Giri                                     &*
*& Module Name     : FI                                               &*
*& Program Type    : Validation for internal Order, SC and PO         &*
*& Change Date     : 06.11.2017                                       &*
*& Transport No    : EPDK992671  (Obj id - 4000002933)                &*
*&*-------------------------------------------------------------------&*
  TYPES: BEGIN OF ty_shipmnt,
           oil_cont     TYPE zsgevttr_shipmnt-oil_cont,
           oil_item     TYPE zsgevttr_shipmnt-oil_item,
           oil_po       TYPE zsgevttr_shipmnt-oil_po,
           oil_po_item  TYPE zsgevttr_shipmnt-oil_po_item,
           org_sal_inv  TYPE zsgevttr_shipmnt-org_sal_inv,
           org_sal_item TYPE zsgevttr_shipmnt-org_sal_item,
           bl_number    TYPE zsgevttr_shipmnt-bl_number,
           pos          TYPE zsgevttr_shipmnt-pos,
           pod          TYPE zsgevttr_shipmnt-pod,
           oil_so       TYPE zsgevttr_shipmnt-oil_so,
           oil_so_itm   TYPE zsgevttr_shipmnt-oil_so_itm,
         END OF ty_shipmnt,

         BEGIN OF ty_item,
           vbeln TYPE zsgevttr_sc_item-vbeln,
           posnr TYPE zsgevttr_sc_item-posnr,
           pos   TYPE zsgevttr_sc_item-pos,
           pod   TYPE zsgevttr_sc_item-pod,
         END OF ty_item,

         BEGIN OF ty_sc_hdr,
           vbeln TYPE zsgevttr_sc_hdr-vbeln,
           lcnum TYPE zsgevttr_sc_hdr-lcnum,
         END OF ty_sc_hdr,

         BEGIN OF ty_vbfa,
           vbelv TYPE vbfa-vbelv,
           posnv TYPE vbfa-posnv,
           vbeln TYPE vbfa-vbeln,
           posnn TYPE vbfa-posnn,
         END OF ty_vbfa.

  DATA: lt_dc_manl TYPE TABLE OF zsgevttr_dc_manl,
        ls_dc_manl TYPE          zsgevttr_dc_manl,
        ls_dcmanl  TYPE          zsgevttr_dc_manl,
        ls_manl    TYPE          zsgevttr_dc_manl,
        ls_vbfa    TYPE          ty_vbfa,
        lv_ans1    TYPE          xfeld,
        lt_shipmnt TYPE TABLE OF ty_shipmnt,
        ls_shipmnt TYPE          ty_shipmnt,
        lt_item    TYPE TABLE OF ty_item,
        ls_item    TYPE          ty_item,
        lt_sc_hdr  TYPE TABLE OF ty_sc_hdr,
        ls_sc_hdr  TYPE          ty_sc_hdr,
        lv_setid   TYPE          sethier-setid,
        lt_setleaf TYPE TABLE OF setleaf,
        ls_setleaf TYPE          setleaf,
        ls_param   TYPE          zgtcatr_param,
        ls_values  TYPE TABLE OF rgsbv.

  DATA : lv_ebeln       TYPE zsgevttr_poso-ebeln,
         lv_oil_sc      TYPE zsgevttr_poso-oil_sc,
         lv_oil_sc_item TYPE zsgevttr_poso-oil_sc_item.

  SELECT SINGLE *
    FROM zgtcatr_param
    INTO ls_param
   WHERE prognam EQ sy-repid      " ZRGGBR000
     AND mapid   EQ 'C'
     AND bukrs   EQ bseg-bukrs.    " SG00
*     AND param1  EQ sy-tcode.     " FB60 FB65  " Commented by IN_DILLIBABU on 06.11.2017
  IF sy-subrc EQ 0.
    IF sy-ucomm EQ 'BU' OR sy-ucomm EQ 'BS' OR sy-ucomm = space.
*     Check if reference number contains special character number
*      CLEAR sy-ucomm.  *-- Commented on 15.11.2017. If two Gl is posted in single docuemnt then validation is not working. bx of clearing the UCOMM
      IF bkpf-xblnr CA '/.,:;"[]\{}|<>?/~`!@#$%^&*()_-+='.
        MESSAGE e048(zsgevt_msg). " Special Characters not allowed
      ENDIF.
*    ELSE.
      SELECT *
        FROM setleaf
        INTO TABLE lt_setleaf
       WHERE setname IN ('ZSG00_SESAME_DC_GLS','ZSG00_SESAME_PRFTCTR'). "#EC CI_NOFIRST
      IF sy-subrc EQ 0.
*-- Start of added by IN_DILLIBABU on 06.11.2017
        READ TABLE lt_setleaf INTO ls_setleaf WITH KEY valfrom = bseg-hkont.   " Added by IN_DILLIBABU on 06.11.2017
        IF sy-subrc  = 0.
          CLEAR ls_setleaf.
          READ TABLE lt_setleaf INTO ls_setleaf WITH KEY valfrom = bseg-prctr. " Added by IN_DILLIBABU on 06.11.2017
          IF sy-subrc  = 0.
            CLEAR ls_setleaf.
*-- To check whether the internal order is entered or not. If not give error message
            IF bseg-aufnr EQ space.
              MESSAGE e043(zsgevt_msg).  " Please enter Internal Order number
            ELSE.
              TRANSLATE bseg-aufnr TO UPPER CASE.
*-- Check if SC is entered in internal order number then Sales order and item field is mandatory
*-- Note: Along with SO/Item user may allowed to enter PO/Item also
              IF bseg-aufnr+0(2) = 'SC' AND ( bseg-vbel2 EQ space OR bseg-posn2 EQ space ).
                MESSAGE e117(zsgevt_msg). " Please enter sales order and item
*-- Start of added on 02.01.2017 by IN_DILLIBABU
              ELSEIF bseg-aufnr+0(2) = 'SC' AND bseg-vbel2 IS NOT INITIAL OR bseg-posn2 IS NOT INITIAL.

                IF bseg-aufnr+2(10) NE bseg-vbel2.
                  MESSAGE e133(zsgevt_msg). " Please check SO w.r.t with internal order
                ENDIF.
*-- To check the SO/Item is available in the table ZSGEVTTR_PROV_DC
                SELECT SINGLE po_so FROM zsgevttr_prov_dc INTO @DATA(lv_po_so) WHERE po_so EQ @bseg-vbel2
                                                                               AND oil_sc_item EQ @bseg-posn2
                                                                               AND del_ind NE 'X'
                                                                               AND gsber EQ @bseg-gsber
                                                                               AND prctr EQ @bseg-prctr.
                IF sy-subrc NE 0.
                  MESSAGE e135(zsgevt_msg). " Please enter SO/Item for which budget posted
                ENDIF.
*-- End of added on 02.01.2017 by IN_DILLIBABU
              ENDIF.
*-- Check if PO is entered in internal order number then Purchasing Doc and item field is mandatory
*-- Note: Along with PO/Item user may allowed to enter SO/Item also
              IF bseg-aufnr+0(2) = 'PO' AND ( bseg-ebeln EQ space OR bseg-ebelp EQ space ).
                MESSAGE e118(zsgevt_msg). " Please enter Purchasing Doc. and item
              ELSEIF bseg-aufnr+0(2) = 'PO'.

                IF bseg-aufnr+2(10) NE bseg-ebeln.
                  MESSAGE e134(zsgevt_msg). " Please check PO w.r.t with Internal order
                ENDIF.

*-- Check if the PO is linked with any SC/item. If its linked then internal order should change to SC instead of PO
                SELECT SINGLE ebeln oil_sc oil_sc_item FROM zsgevttr_poso INTO (lv_ebeln,lv_oil_sc,lv_oil_sc_item) WHERE ebeln = bseg-ebeln
                                                                                                                   AND ebelp = bseg-ebelp.

                IF sy-subrc = 0.
                  MESSAGE e116(zsgevt_msg)." WITH lv_oil_sc. " PO linked with SC &. Please change PO to SC in order field
                ENDIF.
              ENDIF.
            ENDIF.
*-- End of added by IN_DILLIBABU on 06.11.2017
            IF ( bseg-vbel2 NE space AND bseg-posn2 NE space ) OR ( bseg-ebeln NE space AND bseg-ebelp NE space ).
              IF bseg-ebeln NE space AND bseg-ebelp NE space.
                SELECT oil_cont
                       oil_item
                       oil_po
                       oil_po_item
                       org_sal_inv
                       org_sal_item
                       bl_number
                       pos
                       pod
                       oil_so
                       oil_so_itm
                  FROM zsgevttr_shipmnt
                  INTO TABLE lt_shipmnt
                  WHERE oil_po  EQ bseg-ebeln
                    AND oil_po_item EQ bseg-ebelp.      "#EC CI_NOFIRST
              ENDIF.
              IF bseg-vbel2 NE space AND bseg-posn2 NE space.
                SELECT SINGLE vbelv
                              posnv
                              vbeln
                              posnn
                          FROM vbfa
                          INTO ls_vbfa
                         WHERE vbelv   EQ bseg-vbel2
                           AND posnv   EQ bseg-posn2
                           AND vbtyp_n EQ 'C'.
                IF sy-subrc EQ 0.
                  SELECT oil_cont
                         oil_item
                         oil_po
                         oil_po_item
                         org_sal_inv
                         org_sal_item
                         bl_number
                         pos
                         pod
                         oil_so
                         oil_so_itm
                    FROM zsgevttr_shipmnt
                    INTO TABLE lt_shipmnt
                    WHERE oil_so     = ls_vbfa-vbeln
                      AND oil_so_itm = ls_vbfa-posnn.   "#EC CI_NOFIELD
                ENDIF.
              ENDIF.

              SELECT vbeln
                     posnr
                     pos
                     pod
                FROM zsgevttr_sc_item
                INTO TABLE lt_item
                WHERE vbeln EQ bseg-ebeln
                  AND posnr EQ bseg-ebelp.
              IF sy-subrc NE 0.
                SELECT vbeln
                       posnr
                       pos
                       pod
                  FROM zsgevttr_sc_item
                  INTO TABLE lt_item
                  WHERE vbeln EQ ls_vbfa-vbeln
                    AND posnr EQ ls_vbfa-posnn.
              ENDIF.

              SELECT vbeln
                     lcnum
                FROM zsgevttr_sc_hdr
                INTO TABLE lt_sc_hdr
                WHERE vbeln EQ bseg-ebeln
                  AND vbeln NE space.
              IF sy-subrc NE 0.
                SELECT vbeln
                       lcnum
                  FROM zsgevttr_sc_hdr
                  INTO TABLE lt_sc_hdr
                  WHERE vbeln EQ bseg-vbel2.
              ENDIF.


              DELETE lt_item WHERE vbeln EQ space.
              CLEAR ls_setleaf.
              READ TABLE lt_setleaf INTO ls_setleaf WITH KEY valfrom = bseg-hkont.
              IF sy-subrc EQ 0.
                CLEAR ls_setleaf.
                READ TABLE lt_setleaf INTO ls_setleaf WITH KEY valfrom = bseg-prctr.
                IF sy-subrc EQ 0.
                  ls_dc_manl-bukrs  = bseg-bukrs.
                  ls_dc_manl-gjahr  = bseg-gjahr.
                  ls_dc_manl-buzei  = bseg-buzei.
                  ls_dc_manl-hkont  = bseg-hkont.
                  ls_dc_manl-aufnr  = bseg-aufnr.
                  ls_dc_manl-xblnr  = bkpf-xblnr.
*Start of change Charm ID:4000002481 #TR-EPDK984477*******************
*Based on the internal order type data will be update in ZSGEVTTR_DC_MANL table
                  IF ls_dc_manl-aufnr CA 'SC'.   "If the order with Sale contract
                    READ TABLE lt_shipmnt INTO ls_shipmnt WITH KEY  oil_so     = ls_vbfa-vbeln
                                                                    oil_so_itm = ls_vbfa-posnn.
                    IF sy-subrc EQ 0.
                      ls_dc_manl-refdoc       = ls_shipmnt-oil_cont.    "Sale contract no
                      ls_dc_manl-posnr        = ls_shipmnt-oil_item.
                      ls_dc_manl-pos          = ls_shipmnt-pos.
                      ls_dc_manl-pod          = ls_shipmnt-pod.
                      ls_dc_manl-bl_number    = ls_shipmnt-bl_number.
                      READ TABLE lt_sc_hdr INTO ls_sc_hdr WITH KEY vbeln = bseg-vbel2.
                      IF sy-subrc EQ 0.
                        ls_dc_manl-lcnum        = ls_sc_hdr-lcnum.
                      ENDIF.

*                  Get material document
                      SELECT SINGLE oil_ob_mat_doc
                               INTO ls_dc_manl-mblnr "oil_billingdoc
                               FROM zsgevttr_autodoc
                              WHERE oil_so = ls_vbfa-vbeln
                                AND oil_so_itm  = ls_vbfa-posnn. "#EC CI_NOFIELD
                    ENDIF.
                  ELSEIF ls_dc_manl-aufnr CA 'PO'.
                    READ TABLE lt_shipmnt INTO ls_shipmnt WITH KEY oil_po = bseg-ebeln
                                                                   oil_po_item = bseg-ebelp.
                    IF sy-subrc = 0.

                      ls_dc_manl-refdoc       = ls_shipmnt-oil_po.       "Purchase Order No
                      ls_dc_manl-posnr        = ls_shipmnt-oil_po_item.
                      ls_dc_manl-pos          = ls_shipmnt-pos.
                      ls_dc_manl-pod          = ls_shipmnt-pod.
                      ls_dc_manl-bl_number    = ls_shipmnt-bl_number.
                      READ TABLE lt_sc_hdr INTO ls_sc_hdr WITH KEY vbeln = bseg-ebeln.
                      IF sy-subrc EQ 0.
                        ls_dc_manl-lcnum        = ls_sc_hdr-lcnum.
                      ENDIF.
*                   Get material document
                      SELECT SINGLE mblnr
                               INTO ls_dc_manl-mblnr
                               FROM zsgevttr_gr_ir
                              WHERE ebeln = bseg-ebeln
                                AND ebelp = bseg-ebelp.

                    ENDIF.
*End Of   change Charm ID:4000002481 #TR-EPDK984477*******************
                  ENDIF.

                  IF lt_shipmnt IS INITIAL.
                    READ TABLE lt_item INTO ls_item WITH KEY vbeln = bseg-ebeln
                                                             posnr = bseg-ebelp.
                    IF sy-subrc NE 0.
                      READ TABLE lt_item INTO ls_item WITH KEY vbeln = ls_vbfa-vbeln
                                                               posnr = ls_vbfa-posnn.
                      IF sy-subrc EQ 0.
                        ls_dc_manl-refdoc       = ls_item-vbeln.
                        ls_dc_manl-posnr        = ls_item-posnr.
                        ls_dc_manl-pos          = ls_item-pos.
                        ls_dc_manl-pod          = ls_item-pod.
                        READ TABLE lt_sc_hdr INTO ls_sc_hdr WITH KEY vbeln = bseg-vbel2.
                        IF sy-subrc EQ 0.
                          ls_dc_manl-lcnum        = ls_sc_hdr-lcnum.
                        ENDIF.

*                 Get material document# Paul
                        SELECT SINGLE oil_ob_mat_doc
                                 INTO ls_dc_manl-mblnr "oil_billingdoc
                                 FROM zsgevttr_autodoc
                                WHERE oil_so = ls_vbfa-vbeln
                                  AND oil_so_itm  = ls_vbfa-posnn. "#EC CI_NOFIELD
                      ENDIF.
                    ELSE.
                      ls_dc_manl-refdoc       = ls_item-vbeln.
                      ls_dc_manl-posnr        = ls_item-posnr.
                      ls_dc_manl-pos          = ls_item-pos.
                      ls_dc_manl-pod          = ls_item-pod.
                      READ TABLE lt_sc_hdr INTO ls_sc_hdr WITH KEY vbeln = bseg-ebeln.
                      IF sy-subrc EQ 0.
                        ls_dc_manl-lcnum        = ls_sc_hdr-lcnum.
                      ENDIF.
*               Get material document# krish
                      SELECT SINGLE mblnr
                               INTO ls_dc_manl-mblnr
                               FROM zsgevttr_gr_ir
                              WHERE ebeln = bseg-ebeln
                                AND ebelp = bseg-ebelp.
                    ENDIF.
                  ENDIF.
                  CLEAR:ls_shipmnt,ls_sc_hdr,ls_item,ls_setleaf.
                  REFRESH: lt_shipmnt,lt_item,lt_sc_hdr,lt_setleaf.
                ENDIF.
              ENDIF.
            ENDIF.

            IF ls_dc_manl-refdoc IS NOT INITIAL.
              IF ( bseg-vbel2 NE space AND bseg-posn2 NE space ) OR ( bseg-ebeln NE space AND bseg-ebelp NE space ).
                IF bseg-aufnr NE space.
*             Exporting below in the same program as data is getting clear
                  IMPORT lt_dc_manl TO lt_dc_manl FROM MEMORY ID 'DC_MANL'.
                  READ TABLE lt_dc_manl INTO ls_dcmanl WITH KEY buzei  = bseg-buzei.
                  IF ls_dcmanl-sel EQ 'X'.
                    IF ( bseg-vbel2 NE space AND bseg-posn2 NE space ).
                      IF ( ls_dcmanl-aufnr NE bseg-aufnr ) OR ( ls_dcmanl-refdoc NE bseg-vbel2 ) OR ( ls_dcmanl-posnr NE bseg-posn2 ).
                        CLEAR ls_dcmanl-sel.
                        DELETE lt_dc_manl WHERE buzei  = bseg-buzei.
                      ENDIF.
                    ENDIF.

                    IF ( bseg-ebeln NE space AND bseg-ebelp NE space ).
                      IF ( ls_dcmanl-aufnr NE bseg-aufnr ) OR ( ls_dcmanl-refdoc NE bseg-ebeln ) OR ( ls_dcmanl-posnr NE bseg-ebelp ).
                        CLEAR ls_dcmanl-sel.
                        DELETE lt_dc_manl WHERE buzei  = bseg-buzei.
                      ENDIF.
                    ENDIF.
                  ENDIF.

                  IF ls_dcmanl-sel NE 'X'.
                    DATA(lv_ucomm) = sy-ucomm.

                    CALL FUNCTION 'ZSGEVTFM_DC_FIMANL'
                      EXPORTING
                        bseg    = bseg
                        dc_manl = ls_dc_manl
                      IMPORTING
                        lv_ans  = lv_ans1
                      CHANGING
                        gs_manl = ls_dc_manl.
*-- Start of added on 15.11.2017
*-- Due to POP UP screen inside the above FM the SY-UCOMM changed to YES. and change it to the original SY-UCOMM of the posting tcode
                    IF sy-ucomm EQ 'YES'.
                      sy-ucomm = lv_ucomm.
                    ENDIF.
*-- End of added on 15.11.2017
                    ls_dc_manl-sel = 'X'.
                    APPEND ls_dc_manl TO lt_dc_manl.
*               Importing above in the same program as data is getting clear
*               Same Importing at the time of save in FM: FI_DOCUMENT_PROCESS, Imp: ZSGEVTIMP_DC_MANL
                    EXPORT lt_dc_manl FROM lt_dc_manl TO MEMORY ID 'DC_MANL'.
                    CLEAR ls_dc_manl.
                  ENDIF.
                ELSE.
                  MESSAGE e043(zsgevt_msg). " Please enter Internal Order number
                ENDIF.
              ELSE.
                MESSAGE e044(zsgevt_msg). " Please enter either purchase order or sales order with line item
              ENDIF.
            ELSE.
              IF ( bseg-vbel2 NE space AND bseg-posn2 NE space ) OR ( bseg-ebeln NE space AND bseg-ebelp NE space ).
                MESSAGE e045(zsgevt_msg). " Purchase order or sales order with line item does not exist
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
ENDFORM.
*End of change   Charm ID 4000001532 #TR-EPDK969084

*Start of change Charm ID 4000002476
*&---------------------------------------------------------------------*
*&      Form  Z014
*&---------------------------------------------------------------------*
*       Vendor Classification validation for GST
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z014 USING b_result.
**BREAK-POINT.
  DATA :lv_stcd3     TYPE lfa1-stcd3,
        lv_ven_class TYPE j_1imovend-ven_class.

  SELECT SINGLE stcd3 FROM lfa1 INTO lv_stcd3 WHERE lifnr = bseg-lifnr.
  SELECT SINGLE ven_class FROM j_1imovend INTO lv_ven_class WHERE  lifnr = bseg-lifnr.

  IF lv_stcd3 IS INITIAL AND lv_ven_class IS INITIAL.
    MESSAGE e048(zinfi_msg).
  ELSEIF lv_stcd3 IS NOT INITIAL AND lv_ven_class NE 0.
    MESSAGE e049(zinfi_msg).
  ELSEIF lv_stcd3 IS NOT INITIAL AND lv_ven_class EQ ''.
    MESSAGE e051(zinfi_msg).
  ELSEIF lv_stcd3 IS INITIAL AND lv_ven_class EQ 0.
    MESSAGE e050(zinfi_msg).
  ENDIF.

ENDFORM.

*Start of change Charm ID 4000002476
*&---------------------------------------------------------------------*
*&      Form  Z016
*&---------------------------------------------------------------------*
*       Text Validation
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z016 USING b_result.

  TYPES: BEGIN OF ty_setleaf,
           setclass TYPE setclass,
           subclass TYPE setsubcls,
           setname  TYPE setnamenew,
           lineid   TYPE setline,
           valfrom  TYPE setvalmin,
         END OF ty_setleaf.

  DATA: lt_setleaf TYPE TABLE OF ty_setleaf,
        lt_anglo   TYPE TABLE OF zgtfitr_val_txt,
        lt_fran    TYPE TABLE OF zgtfitr_txt_fran,
        ls_setleaf TYPE ty_setleaf,
        ls_anglo   TYPE zgtfitr_val_txt,
        ls_fran    TYPE zgtfitr_txt_fran,
        lv_txt     TYPE bseg-sgtxt.

  IF bseg-sgtxt IS NOT INITIAL.

    lv_txt = bseg-sgtxt.

    TRANSLATE lv_txt TO LOWER CASE.

    CONDENSE lv_txt.

    SELECT setclass
           subclass
           setname
           lineid
           valfrom
      FROM setleaf
      INTO TABLE lt_setleaf
      WHERE setname = 'ZSG_BUKRS'.                      "#EC CI_NOFIRST

    IF sy-subrc = 0.

      SORT lt_setleaf BY setclass
                         subclass
                         setname
                         lineid
                         valfrom.

      CLEAR ls_setleaf.

      READ TABLE lt_setleaf INTO ls_setleaf
                            WITH KEY valfrom = bseg-bukrs.

      IF sy-subrc = 0.

        SELECT *
          FROM zgtfitr_val_txt
          INTO TABLE lt_anglo.

        IF sy-subrc = 0.

          SORT lt_anglo BY val_txt.

          CLEAR ls_anglo.

          LOOP AT lt_anglo INTO ls_anglo.

            IF lv_txt CS ls_anglo-val_txt.

              b_result = b_false.

            ENDIF.
          ENDLOOP.
        ENDIF.

      ELSE.

        SELECT *
          FROM zgtfitr_txt_fran
          INTO TABLE lt_fran.

        IF sy-subrc = 0.

          SORT lt_fran BY val_txt.

          CLEAR ls_fran.

          LOOP AT lt_fran INTO ls_fran.

            IF lv_txt CS ls_fran-val_txt.

              b_result = b_false.

            ENDIF.
          ENDLOOP.

        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
ENDFORM.
*Start of change Charm ID 4000002613
*&---------------------------------------------------------------------*
*&      Form  Z017
*&---------------------------------------------------------------------*
*       DMS Validation
*----------------------------------------------------------------------*
*  <--  B_RESULT    T = True  F = False                                *
*----------------------------------------------------------------------*
FORM z017 USING b_result.

  DATA : lv_bukrs TYPE bukrs.

  CALL FUNCTION 'ZGTDMSFM_BTE_Z017'
    EXPORTING
      im_bukrs = bkpf-bukrs
    IMPORTING
      ex_bukrs = lv_bukrs.

  IF lv_bukrs IS NOT INITIAL.

    CALL FUNCTION 'ZGTDMSFM_INITIALIZATION'
      EXPORTING
        im_save = 'X'.

*  *-Start of changes by Prabhakar - EPDK9A0J1Q 4000005478: Making DMS mandatory-certain tcodes

    DATA :lt_file  TYPE STANDARD TABLE OF zgtdmsst_file,
          ls_param TYPE zgtcatr_param.

    SELECT SINGLE *
         FROM
         zgtcatr_param
         INTO ls_param
         WHERE prognam EQ 'DMS' AND
               bukrs   EQ  lv_bukrs AND
               mapid   EQ 'E'       AND
               param1  EQ  sy-tcode AND
               param4  EQ 'X'.
    IF sy-subrc = 0.
      CALL FUNCTION 'ZGTDMSFM_FILE_CHECK'
        TABLES
          t_file = lt_file.

      IF lt_file IS INITIAL.
*         b_result = b_false.
        MESSAGE e000(zgtdms_msg).
      ENDIF.
      CLEAR ls_param.
    ENDIF.
*  *-End of changes by Prabhakar - EPDK9A0J1Q 4000005478: Making DMS mandatory-certain tcodes
  ENDIF.

ENDFORM.
FORM z018 USING b_result.
  DATA : lt_param TYPE TABLE OF zgtcatr_param,
         ls_param TYPE zgtcatr_param,
         lv_kunnr TYPE kunnr,
         lv_gsber TYPE gsber.
  CLEAR : ls_param.
  REFRESH lt_param.
*--Check parameter values
  ls_param-prognam = sy-repid.
  ls_param-bukrs   = bkpf-bukrs.
  ls_param-mapid   = 'E'.
  CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
    EXPORTING
      input  = bseg-kunnr
    IMPORTING
      output = lv_kunnr.
  ls_param-param1 = lv_kunnr.
  CALL FUNCTION 'ZGTTOOLSFM_PARAM'
    EXPORTING
      gs_param                = ls_param
    TABLES
      gt_param                = lt_param
    EXCEPTIONS
      import_parameters_empty = 1
      nodatafound             = 2
      OTHERS                  = 3.

  IF sy-subrc = 0.
    CLEAR ls_param.
    TRY.
        ls_param = lt_param[ param1 = lv_kunnr ].
        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
          EXPORTING
            input  = ls_param-param2
          IMPORTING
            output = lv_gsber.
        IF lv_gsber <> bseg-gsber.
          MESSAGE e021(zsgfi_msg) WITH bseg-kunnr lv_gsber.
        ENDIF.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.
  ENDIF.
ENDFORM.
FORM z019 USING b_result.

  DATA: lv_belnr TYPE belnr_d.
  CLEAR lv_belnr.

  SELECT bukrs,belnr,gjahr
    INTO TABLE @DATA(lt_bsik)
    FROM bsik
   WHERE bukrs = @bkpf-bukrs
     AND lifnr = @bseg-lifnr
     AND xblnr = @bkpf-xblnr.
*     AND xref1 = @bseg-xref1.

  SELECT bukrs belnr gjahr
APPENDING TABLE lt_bsik
   FROM bsak
  WHERE bukrs = bkpf-bukrs
    AND lifnr = bseg-lifnr
    AND xblnr = bkpf-xblnr.
*    AND xref1 = bseg-xref1.
  IF lt_bsik IS NOT INITIAL.
    SELECT bukrs,belnr,gjahr
      INTO TABLE @DATA(lt_bkpf)
      FROM bkpf
      FOR ALL ENTRIES IN @lt_bsik
    WHERE bukrs = @lt_bsik-bukrs
      AND belnr = @lt_bsik-belnr
      AND gjahr = @lt_bsik-gjahr
      AND bktxt = @bkpf-bktxt
      AND stblg = @space
      AND stgrd = @space.
    IF lt_bkpf IS NOT INITIAL.
      SELECT belnr,buzei,shkzg,wrbtr
        INTO TABLE @DATA(lt_bseg)
        FROM bseg
        FOR ALL ENTRIES IN @lt_bkpf
        WHERE bukrs = @lt_bkpf-bukrs
          AND belnr = @lt_bkpf-belnr
          AND gjahr = @lt_bkpf-gjahr
          AND lifnr = @bseg-lifnr.
      LOOP AT lt_bseg INTO DATA(ls_bseg).
        IF bseg-wrbtr = ls_bseg-wrbtr AND bseg-shkzg = ls_bseg-shkzg.
          MESSAGE e292(zgtfi_msg) WITH ls_bseg-belnr bkpf-gjahr bseg-lifnr.
        ENDIF.
      ENDLOOP.
    ENDIF.
  ENDIF.
ENDFORM.
***Begin of change Charm: 4000006424   TR: 	EPDK9A0U1O
FORM z020 USING b_result.
*  Types Declaration
  TYPES: ty_r_ktoks TYPE RANGE OF ska1-ktoks.
  TYPES: ty_r_prctr TYPE RANGE OF bseg-prctr.
  TYPES: ty_r_hkont TYPE RANGE OF bseg-hkont.
* Data declaration
  DATA: lt_bseg  TYPE STANDARD TABLE OF bseg,
        lv_prctr TYPE c,
        lv_ska1  TYPE c,
        lv_glac  TYPE c,
        lv_hkont TYPE bseg-hkont.
* Constants declaration
  CONSTANTS: lv_bukrs    TYPE bkpf-bukrs VALUE 'NG12',
             lv_memid(3) TYPE c VALUE 'BSG',
             lc_i        TYPE c VALUE 'I',
             lc_eq(2)    TYPE c VALUE 'EQ',
             lc_check    TYPE c VALUE 'X',
             lc_olam     TYPE ska1-ktopl VALUE 'OL10',
             lc_prog     TYPE zgtcatr_param-prognam VALUE 'ZRGGBS000',
             lc_mid      TYPE zgtcatr_param-mapid VALUE 'G'.

* Importing table from memory ID
  IMPORT lt_bseg FROM MEMORY ID lv_memid. " 'BSG'.
  APPEND bseg TO lt_bseg.
  SORT lt_bseg BY buzei.
  DELETE ADJACENT DUPLICATES FROM lt_bseg COMPARING buzei.
* Exporting table into memory ID
  EXPORT lt_bseg TO MEMORY ID lv_memid. "'BSG'.
* Getting profit center from bseg
  DATA(lt_r_prctr) = VALUE ty_r_prctr( FOR ls_bseg IN lt_bseg
                            ( sign = lc_i option = lc_eq low = ls_bseg-prctr ) ).
* Getting G/L Account from bseg
  DATA(lt_r_hkont) = VALUE ty_r_hkont( FOR ls_bseg_hk IN lt_bseg
                            ( sign = lc_i option = lc_eq low = ls_bseg_hk-hkont ) ).
* Fetching data from param table
  SELECT prognam,
         bukrs,
         werks,
         mapid,
         sno,
         modules,
         param1,
         param2,
         param3
  FROM zgtcatr_param
    INTO TABLE @DATA(lt_param)
  WHERE prognam = @lc_prog       AND
        mapid   = @lc_mid        AND
        bukrs   = @bkpf-bukrs.

  IF sy-subrc = 0.  " If there is no entry in param table skip the logic and post the document
    SORT lt_param BY param2.
*        Getting all Account group from Param table
    DATA(lt_r_ktoks) = VALUE ty_r_ktoks( FOR ls_param IN lt_param
                                         ( sign =  lc_i option = lc_eq low = ls_param-param3 ) ).
    DELETE lt_r_ktoks WHERE low IS INITIAL.
*    Fetching data from SKA1 to check whether there is any entry or not
    SELECT saknr,
       ktoks
  FROM  ska1
  INTO TABLE @DATA(lt_ska1)
  WHERE ktopl EQ @lc_olam     AND
        saknr IN @lt_r_hkont AND
        ktoks IN @lt_r_ktoks. "#EC CI_GENBUFF " = '340' , '3409' & '450'.
    IF sy-subrc EQ 0.
      SORT lt_ska1 BY saknr.
    ENDIF.
* Checking all three condition irespective to any line item
    LOOP AT lt_bseg ASSIGNING FIELD-SYMBOL(<fs_bseg>).
      IF <fs_bseg> IS ASSIGNED.
*  Check with GL account of any line item is available in param table or not
        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
          EXPORTING
            input  = <fs_bseg>-hkont
          IMPORTING
            output = lv_hkont.

        READ TABLE lt_param TRANSPORTING NO FIELDS WITH KEY param1 = lv_hkont.
        IF sy-subrc EQ 0.
          lv_glac = lc_check.
        ENDIF.
*  Check whether profit center of any line item is available in param table or not
        READ TABLE lt_param TRANSPORTING NO FIELDS WITH KEY param2 = <fs_bseg>-prctr.
        IF sy-subrc EQ 0.
          lv_prctr = lc_check.
        ENDIF.
*  Check whether any entry is there in ska1 for the GL Account with all available account group
        READ TABLE lt_ska1 TRANSPORTING NO FIELDS WITH KEY saknr = <fs_bseg>-hkont.
        IF sy-subrc EQ 0.
          lv_ska1 = lc_check.
        ENDIF.
      ENDIF.
    ENDLOOP.
* Logic to stop to posting
    IF lv_prctr EQ lc_check AND  lv_ska1 EQ lc_check AND lv_glac EQ lc_check.
      b_result = b_false.
      CLEAR: lv_prctr,
             lv_ska1.
    ENDIF.
  ENDIF.
*  ENDIF.

ENDFORM.
***End of change Charm: 4000006424   TR: 	EPDK9A0U1O
* Begin of change for charms 4000007812 / EPDK9A16J4
FORM z021 USING b_result.
  SELECT sno, system1, system2, maptype
    FROM zsgprfitr_ppaymt
    INTO TABLE @DATA(lt_ppaymt)
   WHERE gsber = @bseg-gsber
     AND lifnr = @bseg-lifnr.

  IF sy-subrc NE 0 .
    MESSAGE e326(zgtfi_msg) WITH bseg-lifnr.
  ENDIF .
ENDFORM .
* End of change for charms 4000007812 / EPDK9A16J4
*& Begin of + by Nooru on 04.10.2019 Charm: 4000008289
*--------------------------------------------------------------------*
*& Z022 is created for charm 4000008289 to validate broker account
*& Currency
*--------------------------------------------------------------------*
FORM z022 USING b_result.

  DATA lv_message TYPE bapi_msg.
  DATA: lv_lifnr TYPE bseg-zuonr,
        lv_filkd TYPE bseg-zuonr.

*& Not sure whether user will put 000 in front of vendor ac
*>>Begin of Change &&TR:EPDK9A1TEZ 4000010139 Madhivannan Senathipathi
  CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
    EXPORTING
      input  = bseg-filkd
    IMPORTING
      output = lv_filkd.
  CALL FUNCTION 'CONVERSION_EXIT_ALPHA_OUTPUT'
    EXPORTING
      input  = bseg-lifnr
    IMPORTING
      output = lv_lifnr.
*<<End of Change &&TR:EPDK9A1TEZ 4000010139 Madhivannan Senathipathi
*$Step 1 -->Check Vendor exists in broker table
  SELECT SINGLE lifnr, bukrs, zuonr, waers
    FROM zsgfitr_broker
    INTO @DATA(ls_broker)
    WHERE zuonr IN (@lv_filkd,@lv_lifnr).
  IF sy-subrc <> 0.
    IF lv_filkd IS INITIAL.
      lv_filkd = lv_lifnr.
    ENDIF.
    lv_message = 'Broker Account '(034) && lv_filkd && ' is not available in ZSGFITR_BROKER'(035).
    MESSAGE lv_message TYPE 'E'.
  ELSEIF ls_broker-waers IS NOT INITIAL AND ls_broker-waers NE bkpf-waers.
    lv_message = 'Broker Account '(034) && lv_filkd && ' can be posted only with the currency'(036) && ls_broker-waers.
    MESSAGE lv_message TYPE 'E'.
  ENDIF.

ENDFORM .
*& End of + by Nooru on 04.10.2019 Charm: 4000008289
*& Begin of + by Nooru on 24.10.2019 11:30:40 Charm: 4000008358
FORM z023 USING b_result.

  DATA: ls_dfpayv TYPE dfpayv.
  DATA lv_message TYPE bapi_msg.

  CHECK  bseg-bukrs IS NOT INITIAL
  AND    bseg-hbkid IS NOT INITIAL
  AND    bseg-hktid IS NOT INITIAL
  AND    bseg-zlsch IS NOT INITIAL.

*$Step1-->Payment Method Variant in OBPM4
  SELECT SINGLE *
    FROM dfpayv
    INTO ls_dfpayv
    WHERE zbukr = bseg-bukrs
    AND   hbkid = bseg-hbkid
    AND   hktid = bseg-hktid
    AND   rzawe = bseg-zlsch.
  IF sy-subrc <> 0 OR ls_dfpayv-vari IS INITIAL.
    lv_message = 'Payment method' && bseg-zlsch && '/ Bank' && bseg-hbkid && '/' && bseg-hktid && 'not linked to Pmt o/p variant in OBPM4'.
    MESSAGE lv_message TYPE 'E'.
  ENDIF.

  SELECT SINGLE *
    FROM t042a
    INTO @DATA(ls_t042a)
    WHERE zbukr = @bseg-bukrs
    AND   zlsch = @bseg-zlsch
    AND   hbkid = @bseg-hbkid.
  IF sy-subrc <> 0.
    lv_message = 'House bank' && bseg-hbkid && 'not assigned to pymt meth.' && bseg-zlsch && 'for co code' && bseg-bukrs && 'in OBVCU'.
    MESSAGE lv_message TYPE 'E'.
  ENDIF.

  SELECT SINGLE *
    FROM t042iy
    INTO @DATA(ls_t042iy)
    WHERE zbukr = @bseg-bukrs
    AND   hbkid = @bseg-hbkid
    AND   zlsch = @bseg-zlsch
    AND   waers = @bseg-pycur
    AND   hktid = @bseg-hktid.
  IF sy-subrc <> 0.
    SELECT SINGLE *
      FROM t042iy
      INTO ls_t042iy
      WHERE zbukr = bseg-bukrs
      AND   hbkid = bseg-hbkid
      AND   zlsch = bseg-zlsch
      AND   waers = ''
      AND   hktid = bseg-hktid.
    IF sy-subrc <> 0.
      lv_message = 'Bank Determination not done for' && bseg-hbkid && '/' && bseg-hktid && ',' && bseg-pycur && ',' && bseg-zlsch && ',' && bseg-bukrs && ' in OBVCU'.
      MESSAGE lv_message TYPE 'E'.
    ENDIF.

  ENDIF.
ENDFORM.
*& End of + by Nooru on 24.10.2019 11:31:09 Charm: 4000008358
*&---------------------------------------------------------------------*
*&      Form  Z024
*&---------------------------------------------------------------------*
*   Ghana GL PC Validation
*----------------------------------------------------------------------*
FORM z024 USING b_result.

  DATA : rt_hkont TYPE RANGE OF hkont.

*** validation to post a document only with the Profit center which is mapped against the bank GL in FAGL3KEH transaction.
  IF bseg-prctr IS NOT INITIAL.

*** Compare the Profit center and GL account with FAGL_T8A30
    SELECT
      SINGLE
      bukrs,
      konto_von,
      konto_bis,
      prctr FROM fagl_t8a30
      INTO @DATA(ls_t8a30) WHERE bukrs     EQ @bkpf-bukrs AND
                                 konto_von LE @bseg-hkont AND
                                 konto_bis GE @bseg-hkont.
*** if the Profit center not mapped against that GL then throw error message
    IF sy-subrc = 0 AND ls_t8a30-prctr NE bseg-prctr.
      MESSAGE e373(zgtfi_msg).
    ENDIF.
  ENDIF.

ENDFORM.
