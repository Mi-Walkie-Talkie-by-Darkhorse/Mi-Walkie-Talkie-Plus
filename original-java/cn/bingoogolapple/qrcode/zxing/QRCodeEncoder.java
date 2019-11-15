package cn.bingoogolapple.qrcode.zxing;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.EnumMap;
import java.util.Map;

public class QRCodeEncoder {
    public static final Map<EncodeHintType, Object> HINTS = new EnumMap(EncodeHintType.class);

    static {
        HINTS.put(EncodeHintType.CHARACTER_SET, "utf-8");
        HINTS.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
        HINTS.put(EncodeHintType.MARGIN, Integer.valueOf(0));
    }

    private QRCodeEncoder() {
    }

    public static Bitmap syncEncodeQRCode(String str, int i) {
        return syncEncodeQRCode(str, i, ViewCompat.MEASURED_STATE_MASK, -1, null);
    }

    public static Bitmap syncEncodeQRCode(String str, int i, int i2) {
        return syncEncodeQRCode(str, i, i2, -1, null);
    }

    public static Bitmap syncEncodeQRCode(String str, int i, int i2, Bitmap bitmap) {
        return syncEncodeQRCode(str, i, i2, -1, bitmap);
    }

    public static Bitmap syncEncodeQRCode(String str, int i, int i2, int i3, Bitmap bitmap) {
        try {
            BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, i, i, HINTS);
            int[] iArr = new int[(i * i)];
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i; i5++) {
                    if (encode.get(i5, i4)) {
                        iArr[(i4 * i) + i5] = i2;
                    } else {
                        iArr[(i4 * i) + i5] = i3;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
            createBitmap.setPixels(iArr, 0, i, 0, 0, i, i);
            return addLogoToQRCode(createBitmap, bitmap);
        } catch (Exception e) {
            return null;
        }
    }

    private static Bitmap addLogoToQRCode(Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap == null || bitmap2 == null) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int width2 = bitmap2.getWidth();
        int height2 = bitmap2.getHeight();
        float f = ((((float) width) * 1.0f) / 5.0f) / ((float) width2);
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(createBitmap);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, null);
            canvas.scale(f, f, (float) (width / 2), (float) (height / 2));
            canvas.drawBitmap(bitmap2, (float) ((width - width2) / 2), (float) ((height - height2) / 2), null);
            canvas.save(31);
            canvas.restore();
            return createBitmap;
        } catch (Exception e) {
            return null;
        }
    }
}
