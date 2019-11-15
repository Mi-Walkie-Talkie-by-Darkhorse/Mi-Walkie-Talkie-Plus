package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.amap.api.services.core.AMapException;
import com.wang.avi.Indicator;
import java.util.ArrayList;
import org.apache.http.HttpStatus;
import org.bouncycastle.crypto.tls.CipherSuite;

public class BallGridBeatIndicator extends Indicator {
    public static final int ALPHA = 255;
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};

    public void draw(Canvas canvas, Paint paint) {
        float width = (((float) getWidth()) - (4.0f * 4.0f)) / 6.0f;
        float width2 = ((float) (getWidth() / 2)) - ((width * 2.0f) + 4.0f);
        float width3 = ((float) (getWidth() / 2)) - ((width * 2.0f) + 4.0f);
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                canvas.save();
                canvas.translate((width * 2.0f * ((float) i2)) + width2 + (((float) i2) * 4.0f), (width * 2.0f * ((float) i)) + width3 + (((float) i) * 4.0f));
                paint.setAlpha(this.alphas[(i * 3) + i2]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {960, 930, 1190, 1130, 1340, 940, AMapException.CODE_AMAP_SERVICE_INVALID_PARAMS, 820, 1190};
        int[] iArr2 = {360, 400, 680, HttpStatus.SC_GONE, 710, -150, -120, 10, 320};
        for (final int i = 0; i < 9; i++) {
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{255, CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256, 255});
            ofInt.setDuration((long) iArr[i]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay((long) iArr2[i]);
            addUpdateListener(ofInt, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridBeatIndicator.this.alphas[i] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridBeatIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
