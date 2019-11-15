package pl.droidsonroids.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.view.View.BaseSavedState;

class GifViewSavedState extends BaseSavedState {
    public static final Creator<GifViewSavedState> CREATOR = new Creator<GifViewSavedState>() {
        /* renamed from: a */
        public GifViewSavedState createFromParcel(Parcel parcel) {
            return new GifViewSavedState(parcel);
        }

        /* renamed from: a */
        public GifViewSavedState[] newArray(int i) {
            return new GifViewSavedState[i];
        }
    };
    final long[][] a;

    GifViewSavedState(Parcelable parcelable, Drawable... drawableArr) {
        super(parcelable);
        this.a = new long[drawableArr.length][];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < drawableArr.length) {
                c cVar = drawableArr[i2];
                if (cVar instanceof c) {
                    this.a[i2] = cVar.f.m();
                } else {
                    this.a[i2] = null;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private GifViewSavedState(Parcel parcel) {
        super(parcel);
        this.a = new long[parcel.readInt()][];
        for (int i = 0; i < this.a.length; i++) {
            this.a[i] = parcel.createLongArray();
        }
    }

    GifViewSavedState(Parcelable parcelable, long[] jArr) {
        super(parcelable);
        this.a = new long[1][];
        this.a[0] = jArr;
    }

    public void writeToParcel(@NonNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a.length);
        for (long[] writeLongArray : this.a) {
            parcel.writeLongArray(writeLongArray);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(Drawable drawable, int i) {
        if (this.a[i] != null && (drawable instanceof c)) {
            c cVar = (c) drawable;
            cVar.a((long) cVar.f.a(this.a[i], cVar.e));
        }
    }
}
