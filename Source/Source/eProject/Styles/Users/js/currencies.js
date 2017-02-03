var Currency = {
  rates: {"USD":1.0,"EUR":1.31487,"GBP":1.64597,"CAD":0.918298,"ARS":0.118835,"AUD":0.933936,"BRL":0.446997,"CLP":0.00169952,"CNY":0.162806,"CYP":0.397899,"CZK":0.0475235,"DKK":0.176548,"EEK":0.0840351,"HKD":0.129029,"HUF":0.00418833,"ISK":0.00854263,"INR":0.0165525,"JMD":0.00890076,"JPY":0.00953459,"LVL":1.8709,"LTL":0.380812,"MTL":0.293496,"MXN":0.0763153,"NZD":0.83206,"NOK":0.160765,"PLN":0.313426,"SGD":0.799007,"SKK":21.5517,"SIT":175.439,"ZAR":0.0936455,"KRW":0.000980248,"SEK":0.142725,"CHF":1.08943,"TWD":0.0333189,"UYU":0.0417014,"MYR":0.314596,"BSD":1.0,"CRC":0.00187168,"RON":0.298773,"PHP":0.0229384,"AED":0.272253,"VEB":0.000159008,"IDR":8.49113e-05,"TRY":0.463135,"THB":0.031264,"TTD":0.158273,"ILS":0.279386,"SYP":0.00649351,"XCD":0.37037,"COP":0.00052021,"RUB":0.0271257,"HRK":0.172545,"KZT":0.00549451,"TZS":0.00060241,"XPT":1411.83,"SAR":0.266617,"NIO":0.0381999,"LAK":0.000124688,"OMR":2.5974,"AMD":0.00243499,"CDF":0.00110011,"KPW":0.00767001,"SPL":6.0,"KES":0.0112803,"ZWD":0.00276319,"KHR":0.000246305,"MVR":0.0654879,"GTQ":0.129066,"BZD":0.505127,"BYR":9.57854e-05,"LYD":0.820008,"DZD":0.0124414,"BIF":0.000655738,"GIP":1.64597,"BOB":0.145773,"XOF":0.0020045,"STD":5.36625e-05,"NGN":0.00616143,"PGK":0.396,"ERN":0.095511,"MWK":0.00259235,"CUP":0.0377358,"GMD":0.0254453,"CVE":0.0121036,"BTN":0.0165525,"XAF":0.0020045,"UGX":0.000384911,"MAD":0.117828,"MNT":0.000552486,"LSL":0.0936455,"XAG":19.1852,"TOP":0.531,"SHP":1.64597,"RSD":0.0111512,"HTG":0.0226244,"MGA":0.000389408,"MZN":0.0331126,"FKP":1.64597,"BWP":0.1095,"HNL":0.0475398,"PYG":0.000234577,"JEP":1.64597,"EGP":0.139849,"LBP":0.000661813,"ANG":0.564717,"WST":0.4292,"TVD":0.933936,"GYD":0.00492126,"GGP":1.64597,"NPR":0.0102176,"KMF":0.00267267,"IRR":3.7577e-05,"XPD":875.746,"SRD":0.307692,"TMM":7.01754e-05,"SZL":0.0936455,"MOP":0.125271,"BMD":1.0,"XPF":0.0110186,"ETB":0.0505324,"JOD":1.41243,"MDL":0.071048,"MRO":0.00346021,"YER":0.00465441,"BAM":0.672281,"AWG":0.558659,"PEN":0.350754,"VEF":0.159008,"SLL":0.000230415,"KYD":1.21611,"AOA":0.010256,"TND":0.574053,"TJS":0.201195,"SCR":0.077918,"LKR":0.00768639,"DJF":0.00567537,"GNF":0.000147493,"VUV":0.0104767,"SDG":0.176056,"IMP":1.64597,"GEL":0.576269,"FJD":0.537461,"DOP":0.023175,"XDR":1.51409,"MUR":0.0323102,"MMK":0.00103199,"LRD":0.0108108,"BBD":0.5,"ZMK":0.000164175,"XAU":1269.28,"VND":4.72032e-05,"UAH":0.0798021,"TMT":0.350877,"IQD":0.000860585,"BGN":0.672287,"KGS":0.0187607,"RWF":0.00145985,"BHD":2.65252,"UZS":0.000426105,"PKR":0.00978952,"MKD":0.0214133,"AFN":0.018018,"NAD":0.0936455,"BDT":0.0129282,"AZN":1.27567,"SOS":0.00083404,"QAR":0.274635,"PAB":1.0,"CUC":1.0,"SVC":0.114286,"SBD":0.13821,"ALL":0.0094162,"BND":0.799007,"KWD":3.51247,"GHS":0.266667,"ZMW":0.164175,"XBT":476.85,"NTD":0.0337206},
  convert: function(amount, from, to) {
    return (amount * this.rates[from]) / this.rates[to];
  }
};
