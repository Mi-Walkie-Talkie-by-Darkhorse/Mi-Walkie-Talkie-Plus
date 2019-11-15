package com.google.zxing.client.result;

import java.util.Map;

public final class ExpandedProductParsedResult extends ParsedResult {
    public static final String KILOGRAM = "KG";
    public static final String POUND = "LB";
    private final String bestBeforeDate;
    private final String expirationDate;
    private final String lotNumber;
    private final String packagingDate;
    private final String price;
    private final String priceCurrency;
    private final String priceIncrement;
    private final String productID;
    private final String productionDate;
    private final String rawText;
    private final String sscc;
    private final Map<String, String> uncommonAIs;
    private final String weight;
    private final String weightIncrement;
    private final String weightType;

    public ExpandedProductParsedResult(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map) {
        super(ParsedResultType.PRODUCT);
        this.rawText = str;
        this.productID = str2;
        this.sscc = str3;
        this.lotNumber = str4;
        this.productionDate = str5;
        this.packagingDate = str6;
        this.bestBeforeDate = str7;
        this.expirationDate = str8;
        this.weight = str9;
        this.weightType = str10;
        this.weightIncrement = str11;
        this.price = str12;
        this.priceIncrement = str13;
        this.priceCurrency = str14;
        this.uncommonAIs = map;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ExpandedProductParsedResult)) {
            return false;
        }
        ExpandedProductParsedResult expandedProductParsedResult = (ExpandedProductParsedResult) obj;
        if (!equalsOrNull(this.productID, expandedProductParsedResult.productID) || !equalsOrNull(this.sscc, expandedProductParsedResult.sscc) || !equalsOrNull(this.lotNumber, expandedProductParsedResult.lotNumber) || !equalsOrNull(this.productionDate, expandedProductParsedResult.productionDate) || !equalsOrNull(this.bestBeforeDate, expandedProductParsedResult.bestBeforeDate) || !equalsOrNull(this.expirationDate, expandedProductParsedResult.expirationDate) || !equalsOrNull(this.weight, expandedProductParsedResult.weight) || !equalsOrNull(this.weightType, expandedProductParsedResult.weightType) || !equalsOrNull(this.weightIncrement, expandedProductParsedResult.weightIncrement) || !equalsOrNull(this.price, expandedProductParsedResult.price) || !equalsOrNull(this.priceIncrement, expandedProductParsedResult.priceIncrement) || !equalsOrNull(this.priceCurrency, expandedProductParsedResult.priceCurrency) || !equalsOrNull(this.uncommonAIs, expandedProductParsedResult.uncommonAIs)) {
            return false;
        }
        return true;
    }

    private static boolean equalsOrNull(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public int hashCode() {
        return ((((((((((((hashNotNull(this.productID) ^ 0) ^ hashNotNull(this.sscc)) ^ hashNotNull(this.lotNumber)) ^ hashNotNull(this.productionDate)) ^ hashNotNull(this.bestBeforeDate)) ^ hashNotNull(this.expirationDate)) ^ hashNotNull(this.weight)) ^ hashNotNull(this.weightType)) ^ hashNotNull(this.weightIncrement)) ^ hashNotNull(this.price)) ^ hashNotNull(this.priceIncrement)) ^ hashNotNull(this.priceCurrency)) ^ hashNotNull(this.uncommonAIs);
    }

    private static int hashNotNull(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String getRawText() {
        return this.rawText;
    }

    public String getProductID() {
        return this.productID;
    }

    public String getSscc() {
        return this.sscc;
    }

    public String getLotNumber() {
        return this.lotNumber;
    }

    public String getProductionDate() {
        return this.productionDate;
    }

    public String getPackagingDate() {
        return this.packagingDate;
    }

    public String getBestBeforeDate() {
        return this.bestBeforeDate;
    }

    public String getExpirationDate() {
        return this.expirationDate;
    }

    public String getWeight() {
        return this.weight;
    }

    public String getWeightType() {
        return this.weightType;
    }

    public String getWeightIncrement() {
        return this.weightIncrement;
    }

    public String getPrice() {
        return this.price;
    }

    public String getPriceIncrement() {
        return this.priceIncrement;
    }

    public String getPriceCurrency() {
        return this.priceCurrency;
    }

    public Map<String, String> getUncommonAIs() {
        return this.uncommonAIs;
    }

    public String getDisplayResult() {
        return String.valueOf(this.rawText);
    }
}
