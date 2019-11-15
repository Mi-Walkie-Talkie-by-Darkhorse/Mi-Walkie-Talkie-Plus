package com.autonavi.ae.gmap.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Typeface;
import android.os.Environment;
import android.text.TextPaint;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;

public class TextTextureGenerator {
    private static final int ALIGNCENTER = 51;
    private static final int ALIGNLEFT = 49;
    private static final int ALIGNRIGHT = 50;
    static final int AN_LABEL_MAXCHARINLINE = 7;
    static final int AN_LABEL_MULITYLINE_SPAN = 2;
    static final int TEXT_FONTSIZE = 32;
    static final int TEXT_FONTSIZE_TRUE = 30;
    private float base_line;
    private float start_x;
    private Paint text_paint;

    public static int GetNearstSize2N(int i) {
        int i2 = 1;
        while (i > i2) {
            i2 *= 2;
        }
        return i2;
    }

    public TextTextureGenerator() {
        this.base_line = 0.0f;
        this.start_x = 0.0f;
        this.text_paint = null;
        this.text_paint = newPaint(null, 30, 49);
        this.start_x = 1.0f;
        float f = 7.3242188f;
        float f2 = -27.832031f;
        try {
            FontMetrics fontMetrics = this.text_paint.getFontMetrics();
            f = fontMetrics.descent;
            f2 = fontMetrics.ascent;
        } catch (Throwable th) {
        }
        this.base_line = ((30.0f - (f2 + f)) / 2.0f) + 1.0f + 0.5f;
    }

    public byte[] getTextPixelBuffer(int i) {
        try {
            char[] cArr = {(char) i};
            Bitmap createBitmap = Bitmap.createBitmap(32, 32, Config.ALPHA_8);
            Canvas canvas = new Canvas(createBitmap);
            byte[] bArr = new byte[1024];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            float measureText = this.text_paint.measureText(String.valueOf((char) i));
            Align textAlign = this.text_paint.getTextAlign();
            float f = measureText - 30.0f;
            if (textAlign == Align.CENTER || f < 4.0f) {
                canvas.drawText(cArr, 0, 1, this.start_x, this.base_line, this.text_paint);
            } else {
                this.text_paint.setTextAlign(Align.CENTER);
                this.text_paint.setTextSize(30.0f - f);
                canvas.drawText(cArr, 0, 1, (30.0f - f) / 2.0f, this.base_line, this.text_paint);
                this.text_paint.setTextAlign(textAlign);
            }
            createBitmap.copyPixelsToBuffer(wrap);
            createBitmap.recycle();
            return bArr;
        } catch (Throwable th) {
            return null;
        }
    }

    public byte[] getCharsWidths(int[] iArr) {
        int length = iArr.length;
        byte[] bArr = new byte[length];
        float[] fArr = new float[1];
        for (int i = 0; i < length; i++) {
            fArr[0] = this.text_paint.measureText(((char) iArr[i]) + "");
            bArr[i] = (byte) ((int) (fArr[0] + 2.0f));
        }
        return bArr;
    }

    private static Paint newPaint(String str, int i, int i2) {
        try {
            TextPaint textPaint = new TextPaint();
            textPaint.setColor(-1);
            textPaint.setTextSize((float) i);
            textPaint.setAntiAlias(true);
            textPaint.setFilterBitmap(true);
            textPaint.setTypeface(Typeface.DEFAULT);
            switch (i2) {
                case 49:
                    textPaint.setTextAlign(Align.LEFT);
                    return textPaint;
                case 50:
                    textPaint.setTextAlign(Align.RIGHT);
                    return textPaint;
                case 51:
                    textPaint.setTextAlign(Align.CENTER);
                    return textPaint;
                default:
                    textPaint.setTextAlign(Align.LEFT);
                    return textPaint;
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
        ThrowableExtension.printStackTrace(th);
        return null;
    }

    public static float getFontlength(Paint paint, String str) {
        return paint.measureText(str);
    }

    public static float getFontHeight(Paint paint) {
        FontMetrics fontMetrics = paint.getFontMetrics();
        return fontMetrics.descent - fontMetrics.ascent;
    }

    public static void generaAsccIITexturePng() throws Exception {
        if (Environment.getExternalStorageState().equals("mounted")) {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(Environment.getExternalStorageDirectory(), "asccii.png"));
            Paint newPaint = newPaint(null, 32, 49);
            Bitmap createBitmap = Bitmap.createBitmap(512, 512, Config.ARGB_8888);
            FontMetricsInt fontMetricsInt = newPaint.getFontMetricsInt();
            Canvas canvas = new Canvas(createBitmap);
            Paint newPaint2 = newPaint(null, 32, 49);
            float[] fArr = new float[1];
            for (int i = 0; i < 16; i++) {
                for (int i2 = 0; i2 < 16; i2++) {
                    char c = (char) ((i * 16) + i2);
                    canvas.drawText(c + "", (float) (i2 * 16), (float) (((i * 16) - fontMetricsInt.ascent) - 2), newPaint2);
                    newPaint2.getTextWidths(c + "", fArr);
                }
            }
            createBitmap.compress(CompressFormat.PNG, 100, fileOutputStream);
            createBitmap.recycle();
        }
    }

    public String getFontVersion() {
        byte[] textPixelBuffer = getTextPixelBuffer(39640);
        if (textPixelBuffer == null) {
            return null;
        }
        return GLMD5Util.getByteArrayMD5(textPixelBuffer);
    }
}
