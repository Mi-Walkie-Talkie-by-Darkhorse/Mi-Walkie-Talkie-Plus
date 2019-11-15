package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.oned.UPCEReader;

public final class ProductResultParser extends ResultParser {
    public ProductParsedResult parse(Result result) {
        String str;
        BarcodeFormat barcodeFormat = result.getBarcodeFormat();
        if (barcodeFormat != BarcodeFormat.UPC_A && barcodeFormat != BarcodeFormat.UPC_E && barcodeFormat != BarcodeFormat.EAN_8 && barcodeFormat != BarcodeFormat.EAN_13) {
            return null;
        }
        String massagedText = getMassagedText(result);
        if (!isStringOfDigits(massagedText, massagedText.length())) {
            return null;
        }
        if (barcodeFormat == BarcodeFormat.UPC_E && massagedText.length() == 8) {
            str = UPCEReader.convertUPCEtoUPCA(massagedText);
        } else {
            str = massagedText;
        }
        return new ProductParsedResult(massagedText, str);
    }
}
