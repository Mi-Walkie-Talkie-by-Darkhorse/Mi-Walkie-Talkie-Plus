package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.util.Pair;
import android.view.View;

public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    @RequiresApi(21)
    @TargetApi(21)
    private static class ActivityOptionsImpl21 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat21 mImpl;

        ActivityOptionsImpl21(ActivityOptionsCompat21 activityOptionsCompat21) {
            this.mImpl = activityOptionsCompat21;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImpl21) {
                this.mImpl.update(((ActivityOptionsImpl21) activityOptionsCompat).mImpl);
            }
        }
    }

    @RequiresApi(23)
    @TargetApi(23)
    private static class ActivityOptionsImpl23 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat23 mImpl;

        ActivityOptionsImpl23(ActivityOptionsCompat23 activityOptionsCompat23) {
            this.mImpl = activityOptionsCompat23;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImpl23) {
                this.mImpl.update(((ActivityOptionsImpl23) activityOptionsCompat).mImpl);
            }
        }

        public void requestUsageTimeReport(PendingIntent pendingIntent) {
            this.mImpl.requestUsageTimeReport(pendingIntent);
        }
    }

    @RequiresApi(24)
    @TargetApi(24)
    private static class ActivityOptionsImpl24 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat24 mImpl;

        ActivityOptionsImpl24(ActivityOptionsCompat24 activityOptionsCompat24) {
            this.mImpl = activityOptionsCompat24;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImpl24) {
                this.mImpl.update(((ActivityOptionsImpl24) activityOptionsCompat).mImpl);
            }
        }

        public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
            return new ActivityOptionsImpl24(this.mImpl.setLaunchBounds(rect));
        }

        public Rect getLaunchBounds() {
            return this.mImpl.getLaunchBounds();
        }

        public void requestUsageTimeReport(PendingIntent pendingIntent) {
            this.mImpl.requestUsageTimeReport(pendingIntent);
        }
    }

    @RequiresApi(16)
    @TargetApi(16)
    private static class ActivityOptionsImplJB extends ActivityOptionsCompat {
        private final ActivityOptionsCompatJB mImpl;

        ActivityOptionsImplJB(ActivityOptionsCompatJB activityOptionsCompatJB) {
            this.mImpl = activityOptionsCompatJB;
        }

        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsImplJB) {
                this.mImpl.update(((ActivityOptionsImplJB) activityOptionsCompat).mImpl);
            }
        }
    }

    public static ActivityOptionsCompat makeCustomAnimation(Context context, int i, int i2) {
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeCustomAnimation(context, i, i2));
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeCustomAnimation(context, i, i2));
        }
        if (VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeCustomAnimation(context, i, i2));
        }
        if (VERSION.SDK_INT >= 16) {
            return new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeCustomAnimation(context, i, i2));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeScaleUpAnimation(View view, int i, int i2, int i3, int i4) {
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeScaleUpAnimation(view, i, i2, i3, i4));
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeScaleUpAnimation(view, i, i2, i3, i4));
        }
        if (VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeScaleUpAnimation(view, i, i2, i3, i4));
        }
        if (VERSION.SDK_INT >= 16) {
            return new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeScaleUpAnimation(view, i, i2, i3, i4));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeClipRevealAnimation(View view, int i, int i2, int i3, int i4) {
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeClipRevealAnimation(view, i, i2, i3, i4));
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeClipRevealAnimation(view, i, i2, i3, i4));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i, int i2) {
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeThumbnailScaleUpAnimation(view, bitmap, i, i2));
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeThumbnailScaleUpAnimation(view, bitmap, i, i2));
        }
        if (VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeThumbnailScaleUpAnimation(view, bitmap, i, i2));
        }
        if (VERSION.SDK_INT >= 16) {
            return new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeThumbnailScaleUpAnimation(view, bitmap, i, i2));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, View view, String str) {
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeSceneTransitionAnimation(activity, view, str));
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeSceneTransitionAnimation(activity, view, str));
        }
        if (VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, view, str));
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, Pair<View, String>... pairArr) {
        View[] viewArr;
        String[] strArr = null;
        if (VERSION.SDK_INT < 21) {
            return new ActivityOptionsCompat();
        }
        if (pairArr != null) {
            View[] viewArr2 = new View[pairArr.length];
            String[] strArr2 = new String[pairArr.length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= pairArr.length) {
                    break;
                }
                viewArr2[i2] = (View) pairArr[i2].first;
                strArr2[i2] = (String) pairArr[i2].second;
                i = i2 + 1;
            }
            strArr = strArr2;
            viewArr = viewArr2;
        } else {
            viewArr = null;
        }
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeSceneTransitionAnimation(activity, viewArr, strArr));
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeSceneTransitionAnimation(activity, viewArr, strArr));
        }
        return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, viewArr, strArr));
    }

    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeTaskLaunchBehind());
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeTaskLaunchBehind());
        }
        if (VERSION.SDK_INT >= 21) {
            return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeTaskLaunchBehind());
        }
        return new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeBasic() {
        if (VERSION.SDK_INT >= 24) {
            return new ActivityOptionsImpl24(ActivityOptionsCompat24.makeBasic());
        }
        if (VERSION.SDK_INT >= 23) {
            return new ActivityOptionsImpl23(ActivityOptionsCompat23.makeBasic());
        }
        return new ActivityOptionsCompat();
    }

    protected ActivityOptionsCompat() {
    }

    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
        return null;
    }

    @Nullable
    public Rect getLaunchBounds() {
        return null;
    }

    public Bundle toBundle() {
        return null;
    }

    public void update(ActivityOptionsCompat activityOptionsCompat) {
    }

    public void requestUsageTimeReport(PendingIntent pendingIntent) {
    }
}
