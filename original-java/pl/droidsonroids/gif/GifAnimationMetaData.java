package pl.droidsonroids.gif;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import java.util.Locale;

public class GifAnimationMetaData implements Parcelable, Serializable {
    public static final Creator<GifAnimationMetaData> CREATOR = new Creator<GifAnimationMetaData>() {
        /* renamed from: a */
        public GifAnimationMetaData createFromParcel(Parcel parcel) {
            return new GifAnimationMetaData(parcel);
        }

        /* renamed from: a */
        public GifAnimationMetaData[] newArray(int i) {
            return new GifAnimationMetaData[i];
        }
    };
    private static final long serialVersionUID = 5692363926580237325L;
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final long f;
    private final long g;

    public boolean a() {
        return this.e > 1 && this.b > 0;
    }

    public String toString() {
        String format = String.format(Locale.ENGLISH, "GIF: size: %dx%d, frames: %d, loops: %s, duration: %d", new Object[]{Integer.valueOf(this.d), Integer.valueOf(this.c), Integer.valueOf(this.e), this.a == 0 ? "Infinity" : Integer.toString(this.a), Integer.valueOf(this.b)});
        return a() ? "Animated " + format : format;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeLong(this.g);
        parcel.writeLong(this.f);
    }

    private GifAnimationMetaData(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.g = parcel.readLong();
        this.f = parcel.readLong();
    }
}
