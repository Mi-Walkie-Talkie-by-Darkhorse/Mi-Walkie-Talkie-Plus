package cn.bingoogolapple.qrcode.zxing;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.common.GlobalHistogramBinarizer;
import com.google.zxing.common.HybridBinarizer;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Map;

public class QRCodeDecoder {
    public static final Map<DecodeHintType, Object> HINTS = new EnumMap(DecodeHintType.class);

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(BarcodeFormat.AZTEC);
        arrayList.add(BarcodeFormat.CODABAR);
        arrayList.add(BarcodeFormat.CODE_39);
        arrayList.add(BarcodeFormat.CODE_93);
        arrayList.add(BarcodeFormat.CODE_128);
        arrayList.add(BarcodeFormat.DATA_MATRIX);
        arrayList.add(BarcodeFormat.EAN_8);
        arrayList.add(BarcodeFormat.EAN_13);
        arrayList.add(BarcodeFormat.ITF);
        arrayList.add(BarcodeFormat.MAXICODE);
        arrayList.add(BarcodeFormat.PDF_417);
        arrayList.add(BarcodeFormat.QR_CODE);
        arrayList.add(BarcodeFormat.RSS_14);
        arrayList.add(BarcodeFormat.RSS_EXPANDED);
        arrayList.add(BarcodeFormat.UPC_A);
        arrayList.add(BarcodeFormat.UPC_E);
        arrayList.add(BarcodeFormat.UPC_EAN_EXTENSION);
        HINTS.put(DecodeHintType.TRY_HARDER, BarcodeFormat.QR_CODE);
        HINTS.put(DecodeHintType.POSSIBLE_FORMATS, arrayList);
        HINTS.put(DecodeHintType.CHARACTER_SET, "utf-8");
    }

    private QRCodeDecoder() {
    }

    public static String syncDecodeQRCode(String str) {
        return syncDecodeQRCode(getDecodeAbleBitmap(str));
    }

    public static String syncDecodeQRCode(Bitmap bitmap) {
        LuminanceSource luminanceSource;
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[(width * height)];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            RGBLuminanceSource rGBLuminanceSource = new RGBLuminanceSource(width, height, iArr);
            try {
                return new MultiFormatReader().decode(new BinaryBitmap(new HybridBinarizer(rGBLuminanceSource)), HINTS).getText();
            } catch (Exception e) {
                e = e;
                luminanceSource = rGBLuminanceSource;
            }
        } catch (Exception e2) {
            e = e2;
            luminanceSource = null;
            ThrowableExtension.printStackTrace(e);
            if (luminanceSource != null) {
                try {
                    return new MultiFormatReader().decode(new BinaryBitmap(new GlobalHistogramBinarizer(luminanceSource)), HINTS).getText();
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
            return null;
        }
    }

    private static Bitmap getDecodeAbleBitmap(String str) {
        int i = 1;
        try {
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i2 = options.outHeight / 400;
            if (i2 > 0) {
                i = i2;
            }
            options.inSampleSize = i;
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Exception e) {
            return null;
        }
    }
}
