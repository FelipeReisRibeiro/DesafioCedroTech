*** Variables ***
${Pais}
${CMP_FirstName}         xpath=//input[contains(@name,'firstName')]
${CMP_LastName}          xpath=//input[contains(@name,'lastName')]
${CMP_Phone}             xpath=//input[contains(@name,'phone')]
${CMP_Email}             id=userName
${CMP_Adderes}           xpath=//input[contains(@name,'address1')]
${CMP_City}              xpath=//input[contains(@name,'city')]
${CMP_State}             xpath=//input[contains(@name,'state')]
${CMP_PostalCode}        xpath=//input[contains(@name,'postalCode')]
${CMP_RegisterName}     xpath=//tr[13]//input[contains(@name,'email')]
${CMP_Password}          xpath=//input[contains(@name,'password')]
${CMP_ConfPassword}      xpath=//input[contains(@name,'confirmPassword')]
${BTN_Country}           xpath=//select[contains(@name,'country')]
${BTN_Enviar}            xpath=//input[contains(@name,'submit')]
         