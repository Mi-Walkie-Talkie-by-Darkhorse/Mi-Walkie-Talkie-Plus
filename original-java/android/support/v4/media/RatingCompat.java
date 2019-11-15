package android.support.v4.media;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class RatingCompat implements Parcelable {
    public static final Creator<RatingCompat> CREATOR = new Creator<RatingCompat>() {
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    private static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private static final String TAG = "Rating";
    private Object mRatingObj;
    private final int mRatingStyle;
    private final float mRatingValue;

    @RestrictTo({Scope.LIBRARY_GROUP})
    @Retention(RetentionPolicy.SOURCE)
    public @interface StarStyle {
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    @Retention(RetentionPolicy.SOURCE)
    public @interface Style {
    }

    RatingCompat(int i, float f) {
        this.mRatingStyle = i;
        this.mRatingValue = f;
    }

    public String toString() {
        String valueOf;
        StringBuilder append = new StringBuilder().append("Rating:style=").append(this.mRatingStyle).append(" rating=");
        if (this.mRatingValue < 0.0f) {
            valueOf = "unrated";
        } else {
            valueOf = String.valueOf(this.mRatingValue);
        }
        return append.append(valueOf).toString();
    }

    public int describeContents() {
        return this.mRatingStyle;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
    }

    public static RatingCompat newUnratedRating(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    public static RatingCompat newHeartRating(boolean z) {
        return new RatingCompat(1, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newThumbRating(boolean z) {
        return new RatingCompat(2, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newStarRating(int i, float f) {
        float f2;
        switch (i) {
            case 3:
                f2 = 3.0f;
                break;
            case 4:
                f2 = 4.0f;
                break;
            case 5:
                f2 = 5.0f;
                break;
            default:
                Log.e(TAG, "Invalid rating style (" + i + ") for a star rating");
                return null;
        }
        if (f >= 0.0f && f <= f2) {
            return new RatingCompat(i, f);
        }
        Log.e(TAG, "Trying to set out of range star-based rating");
        return null;
    }

    public static RatingCompat newPercentageRating(float f) {
        if (f >= 0.0f && f <= 100.0f) {
            return new RatingCompat(6, f);
        }
        Log.e(TAG, "Invalid percentage-based rating value");
        return null;
    }

    public boolean isRated() {
        return this.mRatingValue >= 0.0f;
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    public boolean hasHeart() {
        boolean z = true;
        if (this.mRatingStyle != 1) {
            return false;
        }
        if (this.mRatingValue != 1.0f) {
            z = false;
        }
        return z;
    }

    public boolean isThumbUp() {
        if (this.mRatingStyle == 2 && this.mRatingValue == 1.0f) {
            return true;
        }
        return false;
    }

    public float getStarRating() {
        switch (this.mRatingStyle) {
            case 3:
            case 4:
            case 5:
                if (isRated()) {
                    return this.mRatingValue;
                }
                break;
        }
        return -1.0f;
    }

    public float getPercentRating() {
        if (this.mRatingStyle != 6 || !isRated()) {
            return -1.0f;
        }
        return this.mRatingValue;
    }

    public static RatingCompat fromRating(Object obj) {
        RatingCompat ratingCompat = null;
        if (obj != null && VERSION.SDK_INT >= 19) {
            int ratingStyle = RatingCompatKitkat.getRatingStyle(obj);
            if (RatingCompatKitkat.isRated(obj)) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompat = newHeartRating(RatingCompatKitkat.hasHeart(obj));
                        break;
                    case 2:
                        ratingCompat = newThumbRating(RatingCompatKitkat.isThumbUp(obj));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompat = newStarRating(ratingStyle, RatingCompatKitkat.getStarRating(obj));
                        break;
                    case 6:
                        ratingCompat = newPercentageRating(RatingCompatKitkat.getPercentRating(obj));
                        break;
                }
            } else {
                ratingCompat = newUnratedRating(ratingStyle);
            }
            ratingCompat.mRatingObj = obj;
        }
        return ratingCompat;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object getRating() {
        /*
            r2 = this;
            java.lang.Object r0 = r2.mRatingObj
            if (r0 != 0) goto L_0x000a
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 >= r1) goto L_0x000d
        L_0x000a:
            java.lang.Object r0 = r2.mRatingObj
        L_0x000c:
            return r0
        L_0x000d:
            boolean r0 = r2.isRated()
            if (r0 == 0) goto L_0x004a
            int r0 = r2.mRatingStyle
            switch(r0) {
                case 1: goto L_0x001a;
                case 2: goto L_0x0027;
                case 3: goto L_0x0032;
                case 4: goto L_0x0032;
                case 5: goto L_0x0032;
                case 6: goto L_0x003f;
                default: goto L_0x0018;
            }
        L_0x0018:
            r0 = 0
            goto L_0x000c
        L_0x001a:
            boolean r0 = r2.hasHeart()
            java.lang.Object r0 = android.support.v4.media.RatingCompatKitkat.newHeartRating(r0)
            r2.mRatingObj = r0
        L_0x0024:
            java.lang.Object r0 = r2.mRatingObj
            goto L_0x000c
        L_0x0027:
            boolean r0 = r2.isThumbUp()
            java.lang.Object r0 = android.support.v4.media.RatingCompatKitkat.newThumbRating(r0)
            r2.mRatingObj = r0
            goto L_0x0024
        L_0x0032:
            int r0 = r2.mRatingStyle
            float r1 = r2.getStarRating()
            java.lang.Object r0 = android.support.v4.media.RatingCompatKitkat.newStarRating(r0, r1)
            r2.mRatingObj = r0
            goto L_0x0024
        L_0x003f:
            float r0 = r2.getPercentRating()
            java.lang.Object r0 = android.support.v4.media.RatingCompatKitkat.newPercentageRating(r0)
            r2.mRatingObj = r0
            goto L_0x0018
        L_0x004a:
            int r0 = r2.mRatingStyle
            java.lang.Object r0 = android.support.v4.media.RatingCompatKitkat.newUnratedRating(r0)
            r2.mRatingObj = r0
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.RatingCompat.getRating():java.lang.Object");
    }
}
