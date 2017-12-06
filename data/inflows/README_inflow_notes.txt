Jennings Randolph Inflow Notes for Writing R Inflow Calculations
-----------------------------------------------------------------
The following are notes on how to calculate JRR inflows. Would prefer to pull the data from USGS and automatically extend the data time series. For now using a csv file.

F 01596000	discontinued  NB at Bloomington * Jennings_Reservoir_DA/NB_at_Bloomington_DA*NB_at_Bloomington_to_Jennings_Reservoir
G 01595500	update        Kitzmiller * Jennings_Reservoir_DA/Kitzmiller_DA*Kitzmiller_to_Jennings_Reservoir
H 01595800	update        Barnum *Jennings_Reservoir_DA/Barnum_DA
I 01595000  update        Steyer *Jennings_Reservoir_DA/Steyer_DA*Steyer_to_Jennings_Reservoir

=IF(AND(A15>=DATE(1929,10,1),A15<=DATE(1950,9,30)),F15,IF(AND(A15>=DATE(1985,10,1),A15<=DATE(2003,9,30)),I15,IF(AND(A15>=DATE(1966,7,1),A15<=DATE(1981,6,30)),H15,G15)))

Kitzmiller was last gage used in excel...may 

-----------------------------------------------------------------
  
Conversions							
cfs to MGD	0.646316883						

Adjustment Factors							
NB_at_Bloomington_to Jennings_Reservoir	1.021						
Kitzmiller_to_Jennings_Reservoir	0.947						
Steyer_to_Jennings_Reservoir	0.807						
Unity_to_Patuxent_Reservoir	0.988						
Occoquan_to_Manassas	1.128						

Drainage Areas	Square Miles	site_no					
Antietam_DA	281	01619500					
Barnum_DA	266	01595800					
Barton_DA	49.1	01596500					
Bennett_DA	62.8	01643500					
Bloomington_DA	106	01597500					
Cacapon_DA	675	01611500					
Conococheague_DA	494	01614500					
Cumberland_DA	877	01603000					
Goose_DA	332	01644000					
Great_Seneca_DA	41	01644500					
Hancock_DA	4064	01613000					
Kitzmiller_DA	225	01595500					
Lfalls_DA	11560	01646500					
Luke_DA	406	01598500					
Monocacy_DA	817	01643000					
NB_at_Bloomington_DA	287	01596000					
Opequon_DA	273	01616500					
Patterson_DA	221	01604500					
PawPaw_DA	3129	01610000					
POR_DA	9651	01638500					
S_Br_Potomac_DA	1461	01608500					
Savage_at_Bloomington_DA	115	01598000					
Seneca_DA	101	01645000					
Shen_at_Millville_DA	3041	01636500					
Sideling_DA	102	01610155					
Town_DA	148	01609000					
Wills_DA	247	01601500					
Jennings_Reservoir_DA	263						
Lfalls_minus_POR_DA	1909						
Savage_Reservoir_DA	105						
Seneca_Reservoir_DA	20.8	21					
Swanton_DA	16.7	01597000					
Steyer_DA	73.1	01595000	73.1				
Unity_DA	34.8	01591000					
Cattail_DA	22.9	01591400					
Hawlings_DA	27	01591700					
Burtonsville_DA	127	01592000					
Patuxent_at_Savage_DA	98.4	01594000					
Patuxent_Reservoir_DA	132						
Occoquan_DA	591.9	based on a planimeter and topographic maps discussed in ICPRB report no. 98-1					
ST10_DA	342						
ST25_DA	155						
ST45_DA	149						
ST50_DA	49.9						
ST60_DA	25.8						
ST70_DA	50.5						
Cedar_Run_near_Catlett_DA	93.4	01656000 					
Occoquan_River_near_Occoquan_DA	570	01657500					
Broad_Run_at_Buckland_DA	50.5	01656500					
Bull_Run_near_Catharpin_DA	25.8	01656725					
Bull_Run_near_Manassas_DA	148	01657000					
Cedar_Run_near_Aden_DA	155	01656100					
Lake_Manassas_DA	72						
Goose_Reservoir_DA	348						
Beaverdam_Reservoir_DA	6						
USGS Flow Data							
Used the Download Data.xlsm file to collect data inputs. To update re-run the macros to include newer dates.							

Included in Download Data.xlsm							
agency_cd	site_no	station_nm	Daily Link	Hourly Link			
5s	15s	56s					
USGS	01646500	POTOMAC RIVER NEAR WASH, DC LITTLE FALLS PUMP STA	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01646500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01646500&referred_module=sw			
USGS	01645000	SENECA CREEK AT DAWSONVILLE, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01645000&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01645000&referred_module=sw			
USGS	01644000	GOOSE CREEK NEAR LEESBURG, VA	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01644000&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01644000&referred_module=sw			
USGS	01643000	MONOCACY RIVER AT JUG BRIDGE NEAR FREDERICK, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01643000&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01643000&referred_module=sw			
USGS	01638500	POTOMAC RIVER AT POINT OF ROCKS, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01638500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01638500&referred_module=sw			
USGS	01636500	SHENANDOAH RIVER AT MILLVILLE, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01636500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01636500&referred_module=sw			
USGS	01619500	ANTIETAM CREEK NEAR SHARPSBURG, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01619500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01619500&referred_module=sw			
USGS	01616500	OPEQUON CREEK NEAR MARTINSBURG, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01616500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01616500&referred_module=sw			
USGS	01614500	CONOCOCHEAGUE CREEK AT FAIRVIEW, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01614500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01614500&referred_module=sw			
USGS	01613000	POTOMAC RIVER AT HANCOCK, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01613000&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01613000&referred_module=sw			
USGS	01611500	CACAPON RIVER NEAR GREAT CACAPON, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01611500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01611500&referred_module=sw			
USGS	01610155	SIDELING HILL CREEK NEAR BELLEGROVE, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01610155&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01610155&referred_module=sw			
USGS	01610000	POTOMAC RIVER AT PAW PAW, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01610000&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01610000&referred_module=sw			
USGS	01609000	TOWN CREEK NEAR OLDTOWN, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01609000&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01609000&referred_module=sw			
USGS	01608500	SOUTH BRANCH POTOMAC RIVER NEAR SPRINGFIELD, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01608500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01608500&referred_module=sw			
USGS	01604500	PATTERSON CREEK NEAR HEADSVILLE, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01604500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01604500&referred_module=sw			
USGS	01603000	NORTH BRANCH POTOMAC RIVER NEAR CUMBERLAND, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01603000&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01603000&referred_module=sw			
USGS	01601500	WILLS CREEK NEAR CUMBERLAND, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01601500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01601500&referred_module=sw			
USGS	01598500	NORTH BRANCH POTOMAC RIVER AT LUKE, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01598500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01598500&referred_module=sw			
USGS	01595800	NORTH BRANCH POTOMAC RIVER AT BARNUM, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01595800&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01595800&referred_module=sw			
USGS	01597500	SAVAGE RIV BL SAVAGE RIV DAM NEAR BLOOMINGTON, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01597500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01597500&referred_module=sw			
USGS	01595500	NORTH BRANCH POTOMAC RIVER AT KITZMILLER, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01595500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01595500&referred_module=sw			
USGS	01596500	SAVAGE RIVER NEAR BARTON, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01596500&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00060=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01596500&referred_module=sw			
USGS	01595790	BLOOMINGTON LAKE NEAR ELK GARDEN, WV	http://waterdata.usgs.gov/md/nwis/dv?cb_00062=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01595790&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00062=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01595790&referred_module=sw			
USGS	01597490	SAVAGE RIVER RESERVOIR NEAR BLOOMINGTON, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00062=on&format=rdb&begin_date=1929-10-01&end_date=2011-05-16&site_no=01597490&referred_module=sw	http://waterdata.usgs.gov/md/nwis/uv?cb_00062=on&format=rdb&begin_date=2011-05-15&end_date=2011-05-17&site_no=01597490&referred_module=sw			

Needed but not included in Download Data.xlsm because the gage has been closed							
USGS 	01598000	SAVAGE RIVER AT BLOOMINGTON, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1924-10-01&end_date=1950-09-30&site_no=01598000&referred_module=sw				
USGS 	01596000	NORTH BRANCH POTOMAC RIVER AT BLOOMINGTON, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1924-10-01&end_date=1950-09-30&site_no=01596000&referred_module=sw				
USGS 	01644500	GREAT SENECA CREEK NEAR GAITHERSBURG, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1925-03-19&end_date=1931-01-13&site_no=01644500&referred_module=sw				
USGS 	01597000	CRABTREE CREEK NEAR SWANTON, MD	http://waterdata.usgs.gov/nwis/dv?cb_00060=on&format=rdb&begin_date=1948-09-17&end_date=2011-05-16&site_no=01597000&referred_module=sw				
USGS    	01592000	PATUXENT RIVER NEAR BURTONSVILLE, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1911-07-21&end_date=2011-05-16&site_no=01592000&referred_module=sw				
USGS 	01657500	OCCOQUAN RIVER NEAR OCCOQUAN, VA	http://waterdata.usgs.gov/va/nwis/dv?cb_00060=on&format=rdb&begin_date=1913-04-01&end_date=2011-05-19&site_no=01657500&referred_module=sw				
USGS	01656500	BROAD RUN AT BUCKLAND, VA	http://waterdata.usgs.gov/va/nwis/dv?cb_00060=on&format=rdb&begin_date=1950-10-01&end_date=2011-05-19&site_no=01656500&referred_module=sw				
USGS 	01656725	BULL RUN NEAR CATHARPIN, VA	http://waterdata.usgs.gov/va/nwis/dv?cb_00060=on&format=rdb&begin_date=1969-05-01&end_date=2011-05-19&site_no=01656725&referred_module=sw				
USGS 	01657000	BULL RUN NEAR MANASSAS, VA	http://waterdata.usgs.gov/va/nwis/dv?cb_00060=on&format=rdb&begin_date=1950-10-01&end_date=2011-05-19&site_no=01657000&referred_module=sw				
USGS 	01656100	CEDAR RUN NEAR ADEN, VA	http://waterdata.usgs.gov/va/nwis/dv?cb_00060=on&format=rdb&begin_date=1972-10-01&end_date=2011-05-19&site_no=01656100&referred_module=sw				
Needed but not included in Download Data.xlsm because the record is not updated daily or hourly							
USGS 	01646502	POTOMAC RIVER (ADJUSTED) NEAR WASH, DC	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1930-03-01&end_date=2011-04-30&site_no=01646502&referred_module=sw				

Needed but not included in Download Data.xlsm should consider including it (in Update USGS Flow Data tab…update manually)							
USGS 	01643500 	BENNETT CREEK AT PARK MILLS, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1948-07-29&end_date=2011-05-16&site_no=01643500&referred_module=sw				
USGS 	01595000 	NORTH BRANCH POTOMAC RIVER AT STEYER, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1956-07-01&end_date=2011-05-16&site_no=01595000&referred_module=sw				
USGS            	01591000	PATUXENT RIVER NEAR UNITY, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1944-07-20&end_date=2011-05-16&site_no=01591000&referred_module=sw				
USGS    	01591400	CATTAIL CREEK NEAR GLENWOOD, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1978-06-06&end_date=2011-05-16&site_no=01591400&referred_module=sw				
USGS    	01591700	HAWLINGS RIVER NEAR SANDY SPRING, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1978-06-07&end_date=2011-05-16&site_no=01591700&referred_module=sw				
USGS    	01594000	LITTLE PATUXENT RIVER AT SAVAGE, MD	http://waterdata.usgs.gov/md/nwis/dv?cb_00060=on&format=rdb&begin_date=1939-10-01&end_date=2011-05-16&site_no=01594000&referred_module=sw				
USGS    	01656000 	CEDAR RUN NEAR CATLETT, VA	http://waterdata.usgs.gov/va/nwis/dv?cb_00060=on&format=rdb&begin_date=1950-10-01&end_date=2011-05-16&site_no=01656000&referred_module=sw				

Needed and aquired off USGS' website			Earliest date available, can only download the past 30 days from the website				
OWML	Station ST25	Cedar Run Near Aden	2004-04-24				
OWML	Station ST10	Occoquan River near Manassas (Lake Jackson) 	1988-06-08				
OWML	Station ST45	Bull Run near Manassas Park (Yorkshire) 	1987-08-20				
OWML	Station ST50	Cub Run near Bull Run	1988-09-02				
OWML	Station ST60	Bull Run near Catharpin	1988-09-12				
OWML	Station ST70	Broad Run at Buckland 	1988-07-15				

Not needed because used in a regression for Occoquan that applies to 1929 to 1937							
USGS	01664000 	RAPPAHANNOCK RIVER AT REMINGTON, VA	http://waterdata.usgs.gov/nwis/dv?cb_00060=on&format=rdb&begin_date=1942-10-01&end_date=2011-07-05&site_no=01664000&referred_module=sw				
USGS 	01664500 	RAPPAHANNOCK RIVER AT KELLYS FORD, VA	http://waterdata.usgs.gov/nwis/dv?cb_00060=on&format=rdb&begin_date=1927-10-01&end_date=1952-09-30&site_no=01664500&referred_module=sw				

