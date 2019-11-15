package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import java.util.Map;

public final class UPCAReader extends UPCEANReader {
    private final UPCEANReader ean13Reader = new EAN13Reader();

    public Result decodeRow(int i, BitArray bitArray, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException, ChecksumException {
        return maybeReturnResult(this.ean13Reader.decodeRow(i, bitArray, iArr, map));
    }

    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException, ChecksumException {
        return maybeReturnResult(this.ean13Reader.decodeRow(i, bitArray, map));
    }

    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return maybeReturnResult(this.ean13Reader.decode(binaryBitmap));
    }

    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        return maybeReturnResult(this.ean13Reader.decode(binaryBitmap, map));
    }

    /* access modifiers changed from: 0000 */
    public BarcodeFormat getBarcodeFormat() {
        return BarcodeFormat.UPC_A;
    }

    /* access modifiers changed from: protected */
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        return this.ean13Reader.decodeMiddle(bitArray, iArr, sb);
    }

    private static Result maybeReturnResult(Result result) throws FormatException {
        String text = result.getText();
        if (text.charAt(0) == '0') {
            return new Result(text.substring(1), null, result.getResultPoints(), BarcodeFormat.UPC_A);
        }
        throw FormatException.getFormatInstance();
    }
}
