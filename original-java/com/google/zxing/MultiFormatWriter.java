package com.google.zxing;

import com.google.zxing.aztec.AztecWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.DataMatrixWriter;
import com.google.zxing.oned.CodaBarWriter;
import com.google.zxing.oned.Code128Writer;
import com.google.zxing.oned.Code39Writer;
import com.google.zxing.oned.Code93Writer;
import com.google.zxing.oned.EAN13Writer;
import com.google.zxing.oned.EAN8Writer;
import com.google.zxing.oned.ITFWriter;
import com.google.zxing.oned.UPCAWriter;
import com.google.zxing.oned.UPCEWriter;
import com.google.zxing.pdf417.PDF417Writer;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.Map;

public final class MultiFormatWriter implements Writer {
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        Writer aztecWriter;
        switch (barcodeFormat) {
            case EAN_8:
                aztecWriter = new EAN8Writer();
                break;
            case UPC_E:
                aztecWriter = new UPCEWriter();
                break;
            case EAN_13:
                aztecWriter = new EAN13Writer();
                break;
            case UPC_A:
                aztecWriter = new UPCAWriter();
                break;
            case QR_CODE:
                aztecWriter = new QRCodeWriter();
                break;
            case CODE_39:
                aztecWriter = new Code39Writer();
                break;
            case CODE_93:
                aztecWriter = new Code93Writer();
                break;
            case CODE_128:
                aztecWriter = new Code128Writer();
                break;
            case ITF:
                aztecWriter = new ITFWriter();
                break;
            case PDF_417:
                aztecWriter = new PDF417Writer();
                break;
            case CODABAR:
                aztecWriter = new CodaBarWriter();
                break;
            case DATA_MATRIX:
                aztecWriter = new DataMatrixWriter();
                break;
            case AZTEC:
                aztecWriter = new AztecWriter();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format " + barcodeFormat);
        }
        return aztecWriter.encode(str, barcodeFormat, i, i2, map);
    }
}
