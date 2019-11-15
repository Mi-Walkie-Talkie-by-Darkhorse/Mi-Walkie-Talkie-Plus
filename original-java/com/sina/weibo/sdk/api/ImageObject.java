package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.sina.weibo.sdk.utils.c;
import java.io.File;

public class ImageObject extends BaseMediaObject {
    public static final Creator<ImageObject> CREATOR = new Creator<ImageObject>() {
        /* renamed from: a */
        public ImageObject createFromParcel(Parcel parcel) {
            return new ImageObject(parcel);
        }

        /* renamed from: a */
        public ImageObject[] newArray(int i) {
            return new ImageObject[i];
        }
    };
    public byte[] g;
    public String h;

    public ImageObject() {
    }

    public ImageObject(Parcel parcel) {
        this.g = parcel.createByteArray();
        this.h = parcel.readString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0027 A[SYNTHETIC, Splitter:B:13:0x0027] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0034 A[SYNTHETIC, Splitter:B:20:0x0034] */
    /* JADX WARNING: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.graphics.Bitmap r4) {
        /*
            r3 = this;
            r2 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ Exception -> 0x0019, all -> 0x0030 }
            r1.<init>()     // Catch:{ Exception -> 0x0019, all -> 0x0030 }
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch:{ Exception -> 0x0044 }
            r2 = 85
            r4.compress(r0, r2, r1)     // Catch:{ Exception -> 0x0044 }
            byte[] r0 = r1.toByteArray()     // Catch:{ Exception -> 0x0044 }
            r3.g = r0     // Catch:{ Exception -> 0x0044 }
            if (r1 == 0) goto L_0x0018
            r1.close()     // Catch:{ IOException -> 0x003d }
        L_0x0018:
            return
        L_0x0019:
            r0 = move-exception
            r1 = r2
        L_0x001b:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0042 }
            java.lang.String r0 = "Weibo.ImageObject"
            java.lang.String r2 = "put thumb failed"
            com.sina.weibo.sdk.utils.c.c(r0, r2)     // Catch:{ all -> 0x0042 }
            if (r1 == 0) goto L_0x0018
            r1.close()     // Catch:{ IOException -> 0x002b }
            goto L_0x0018
        L_0x002b:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0018
        L_0x0030:
            r0 = move-exception
            r1 = r2
        L_0x0032:
            if (r1 == 0) goto L_0x0037
            r1.close()     // Catch:{ IOException -> 0x0038 }
        L_0x0037:
            throw r0
        L_0x0038:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0037
        L_0x003d:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0018
        L_0x0042:
            r0 = move-exception
            goto L_0x0032
        L_0x0044:
            r0 = move-exception
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.api.ImageObject.a(android.graphics.Bitmap):void");
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.g);
        parcel.writeString(this.h);
    }

    public boolean a() {
        if (this.g == null && this.h == null) {
            c.c("Weibo.ImageObject", "imageData and imagePath are null");
            return false;
        } else if (this.g != null && this.g.length > 2097152) {
            c.c("Weibo.ImageObject", "imageData is too large");
            return false;
        } else if (this.h == null || this.h.length() <= 512) {
            if (this.h != null) {
                File file = new File(this.h);
                try {
                    if (!file.exists() || file.length() == 0 || file.length() > 10485760) {
                        c.c("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
                        return false;
                    }
                } catch (SecurityException e) {
                    c.c("Weibo.ImageObject", "checkArgs fail, image content is too large or not exists");
                    return false;
                }
            }
            return true;
        } else {
            c.c("Weibo.ImageObject", "imagePath is too length");
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public BaseMediaObject a(String str) {
        return this;
    }

    /* access modifiers changed from: protected */
    public String b() {
        return "";
    }
}
