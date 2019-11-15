package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.Rating;
import android.support.annotation.RequiresApi;

@TargetApi(19)
@RequiresApi(19)
class RatingCompatKitkat {
    RatingCompatKitkat() {
    }

    public static Object newUnratedRating(int i) {
        return Rating.newUnratedRating(i);
    }

    public static Object newHeartRating(boolean z) {
        return Rating.newHeartRating(z);
    }

    public static Object newThumbRating(boolean z) {
        return Rating.newThumbRating(z);
    }

    public static Object newStarRating(int i, float f) {
        return Rating.newStarRating(i, f);
    }

    public static Object newPercentageRating(float f) {
        return Rating.newPercentageRating(f);
    }

    public static boolean isRated(Object obj) {
        return ((Rating) obj).isRated();
    }

    public static int getRatingStyle(Object obj) {
        return ((Rating) obj).getRatingStyle();
    }

    public static boolean hasHeart(Object obj) {
        return ((Rating) obj).hasHeart();
    }

    public static boolean isThumbUp(Object obj) {
        return ((Rating) obj).isThumbUp();
    }

    public static float getStarRating(Object obj) {
        return ((Rating) obj).getStarRating();
    }

    public static float getPercentRating(Object obj) {
        return ((Rating) obj).getPercentRating();
    }
}
