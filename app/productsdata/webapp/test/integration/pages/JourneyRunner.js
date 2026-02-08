sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"productsdata/test/integration/pages/ProductList",
	"productsdata/test/integration/pages/ProductObjectPage"
], function (JourneyRunner, ProductList, ProductObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('productsdata') + '/test/flp.html#app-preview',
        pages: {
			onTheProductList: ProductList,
			onTheProductObjectPage: ProductObjectPage
        },
        async: true
    });

    return runner;
});

