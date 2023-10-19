*** Variables ***

${RDB_TypeTrip}                       xpath=//input[contains(@value,'roundtrip')]
${RDB_TypeOneway}                     xpath=//input[contains(@value,'roundtrip')]
${SLCT_Passenger}                     xpath=//select[contains(@name,'passCount')]
${SLCT_DEparting}                     xpath=//select[contains(@name,'fromPort')]
${SLCT_OnMonth}                       xpath=//select[contains(@name,'fromMonth')]
${SLCT_OnDay}                         xpath=//select[contains(@name,'fromDay')]
${SLCT_ReturnMonth}                   xpath=//select[contains(@name,'toMonth')]
${SLCT__ReturnDay}                    xpath=//select[contains(@name,'fromDay')]
${RDB_}
${SLCT_Arriving}                      xpath=//select[contains(@name,'toPort')]
${SLCT__AirLine}
${BTN_Continue}