package com.autonavi.ae.gmap.gloverlay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.TypedValue;
import com.autonavi.ae.gmap.gloverlay.GLCrossVector.AVectorCrossAttr;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import org.bouncycastle.crypto.tls.CipherSuite;

public class CrossVectorOverlay extends BaseMapOverlay<GLCrossVector, Object> {
    AVectorCrossAttr attr = null;
    int mIndex = 0;

    public CrossVectorOverlay(int i, Context context, IAMap iAMap) {
        super(i, context, iAMap);
    }

    /* access modifiers changed from: protected */
    public void iniGLOverlay() {
        this.mGLOverlay = new GLCrossVector(this.mEngineID, this.mMapView, hashCode());
    }

    public void addItem(Object obj) {
    }

    public void resumeMarker(Bitmap bitmap) {
        AddOverlayTexture(bitmap, 12345, 4);
        ((GLCrossVector) this.mGLOverlay).setArrowResId(false, 12345);
        ((GLCrossVector) this.mGLOverlay).setCarResId(12345);
    }

    public void AddOverlayTexture(Bitmap bitmap, int i, int i2) {
        GLTextureProperty gLTextureProperty = new GLTextureProperty();
        gLTextureProperty.mId = i;
        gLTextureProperty.mAnchor = i2;
        gLTextureProperty.mBitmap = bitmap;
        gLTextureProperty.mXRatio = 0.0f;
        gLTextureProperty.mYRatio = 0.0f;
        gLTextureProperty.isGenMimps = true;
        this.mMapView.addOverlayTexture(this.mEngineID, gLTextureProperty);
    }

    public int dipToPixel(Context context, int i) {
        if (context == null) {
            return i;
        }
        try {
            return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
        } catch (Exception e) {
            return i;
        }
    }

    public void setAttribute(AVectorCrossAttr aVectorCrossAttr) {
        this.attr = aVectorCrossAttr;
    }

    public void setData(byte[] bArr) {
        if (this.attr == null) {
            this.attr = new AVectorCrossAttr();
            this.attr.nCenterX = 0;
            this.attr.nCenterY = 0;
            this.attr.stRectMax = new Rect();
            this.attr.stRectMin = new Rect();
            this.attr.nAngle = 0;
            this.attr.stAreaRect = new Rect(0, 0, this.mMapView.getMapWidth(), (this.mMapView.getMapHeight() * 4) / 11);
            this.attr.stAreaColor = Color.argb(217, 95, 95, 95);
            this.attr.fImportBorderWidth = dipToPixel(this.mContext, 22);
            this.attr.stImportBorderColor = Color.argb(255, 255, 255, 255);
            this.attr.fUnImportBorderWidth = this.attr.fImportBorderWidth;
            this.attr.stUnImportBorderColor = this.attr.stImportBorderColor;
            this.attr.fArrowBorderWidth = dipToPixel(this.mContext, 22);
            this.attr.stArrowBorderColor = Color.argb(0, 0, 50, 20);
            this.attr.fImportLineWidth = dipToPixel(this.mContext, 18);
            this.attr.stImportLineColor = Color.argb(255, CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256, 200);
            this.attr.fUnImportLineWidth = this.attr.fImportLineWidth;
            this.attr.stUnImportLineColor = this.attr.stImportLineColor;
            this.attr.fDashLineWidth = dipToPixel(this.mContext, 2);
            this.attr.stDashLineColor = this.attr.stUnImportBorderColor;
            this.attr.fArrowLineWidth = dipToPixel(this.mContext, 18);
            this.attr.stArrowLineColor = Color.argb(255, 255, 253, 65);
            this.attr.dayMode = false;
        }
        if (bArr != null && this.attr != null) {
            ((GLCrossVector) this.mGLOverlay).addVectorItem(this.attr, bArr, bArr.length);
            ((GLCrossVector) this.mGLOverlay).setVisible(true);
        }
    }

    public void remove() {
        setVisible(false);
        releaseInstance();
    }
}
