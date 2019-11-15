package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompatApi21.SharedElementCallback21;
import android.support.v4.app.ActivityCompatApi23.OnSharedElementsReadyListenerBridge;
import android.support.v4.app.ActivityCompatApi23.SharedElementCallback23;
import android.support.v4.app.SharedElementCallback.OnSharedElementsReadyListener;
import android.support.v4.content.ContextCompat;
import android.view.View;
import java.util.List;
import java.util.Map;

public class ActivityCompat extends ContextCompat {

    public interface OnRequestPermissionsResultCallback {
        void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr);
    }

    private static class SharedElementCallback21Impl extends SharedElementCallback21 {
        private SharedElementCallback mCallback;

        public SharedElementCallback21Impl(SharedElementCallback sharedElementCallback) {
            this.mCallback = sharedElementCallback;
        }

        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementStart(list, list2, list3);
        }

        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementEnd(list, list2, list3);
        }

        public void onRejectSharedElements(List<View> list) {
            this.mCallback.onRejectSharedElements(list);
        }

        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.mCallback.onMapSharedElements(list, map);
        }

        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.mCallback.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.mCallback.onCreateSnapshotView(context, parcelable);
        }
    }

    private static class SharedElementCallback23Impl extends SharedElementCallback23 {
        private SharedElementCallback mCallback;

        public SharedElementCallback23Impl(SharedElementCallback sharedElementCallback) {
            this.mCallback = sharedElementCallback;
        }

        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementStart(list, list2, list3);
        }

        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementEnd(list, list2, list3);
        }

        public void onRejectSharedElements(List<View> list) {
            this.mCallback.onRejectSharedElements(list);
        }

        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.mCallback.onMapSharedElements(list, map);
        }

        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.mCallback.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.mCallback.onCreateSnapshotView(context, parcelable);
        }

        public void onSharedElementsArrived(List<String> list, List<View> list2, final OnSharedElementsReadyListenerBridge onSharedElementsReadyListenerBridge) {
            this.mCallback.onSharedElementsArrived(list, list2, new OnSharedElementsReadyListener() {
                public void onSharedElementsReady() {
                    onSharedElementsReadyListenerBridge.onSharedElementsReady();
                }
            });
        }
    }

    protected ActivityCompat() {
    }

    public static boolean invalidateOptionsMenu(Activity activity) {
        if (VERSION.SDK_INT < 11) {
            return false;
        }
        ActivityCompatHoneycomb.invalidateOptionsMenu(activity);
        return true;
    }

    public static void startActivityForResult(Activity activity, Intent intent, int i, @Nullable Bundle bundle) {
        if (VERSION.SDK_INT >= 16) {
            ActivityCompatJB.startActivityForResult(activity, intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void startIntentSenderForResult(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, @Nullable Bundle bundle) throws SendIntentException {
        if (VERSION.SDK_INT >= 16) {
            ActivityCompatJB.startIntentSenderForResult(activity, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    public static void finishAffinity(Activity activity) {
        if (VERSION.SDK_INT >= 16) {
            ActivityCompatJB.finishAffinity(activity);
        } else {
            activity.finish();
        }
    }

    public static void finishAfterTransition(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.finishAfterTransition(activity);
        } else {
            activity.finish();
        }
    }

    @Nullable
    public static Uri getReferrer(Activity activity) {
        if (VERSION.SDK_INT >= 22) {
            return ActivityCompatApi22.getReferrer(activity);
        }
        Intent intent = activity.getIntent();
        Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.REFERRER");
        if (uri != null) {
            return uri;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (stringExtra != null) {
            return Uri.parse(stringExtra);
        }
        return null;
    }

    public static void setEnterSharedElementCallback(Activity activity, SharedElementCallback sharedElementCallback) {
        if (VERSION.SDK_INT >= 23) {
            ActivityCompatApi23.setEnterSharedElementCallback(activity, createCallback23(sharedElementCallback));
        } else if (VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.setEnterSharedElementCallback(activity, createCallback(sharedElementCallback));
        }
    }

    public static void setExitSharedElementCallback(Activity activity, SharedElementCallback sharedElementCallback) {
        if (VERSION.SDK_INT >= 23) {
            ActivityCompatApi23.setExitSharedElementCallback(activity, createCallback23(sharedElementCallback));
        } else if (VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.setExitSharedElementCallback(activity, createCallback(sharedElementCallback));
        }
    }

    public static void postponeEnterTransition(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.postponeEnterTransition(activity);
        }
    }

    public static void startPostponedEnterTransition(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            ActivityCompatApi21.startPostponedEnterTransition(activity);
        }
    }

    public static void requestPermissions(@NonNull final Activity activity, @NonNull final String[] strArr, @IntRange(from = 0) final int i) {
        if (VERSION.SDK_INT >= 23) {
            ActivityCompatApi23.requestPermissions(activity, strArr, i);
        } else if (activity instanceof OnRequestPermissionsResultCallback) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    int[] iArr = new int[strArr.length];
                    PackageManager packageManager = activity.getPackageManager();
                    String packageName = activity.getPackageName();
                    int length = strArr.length;
                    for (int i = 0; i < length; i++) {
                        iArr[i] = packageManager.checkPermission(strArr[i], packageName);
                    }
                    ((OnRequestPermissionsResultCallback) activity).onRequestPermissionsResult(i, strArr, iArr);
                }
            });
        }
    }

    public static boolean shouldShowRequestPermissionRationale(@NonNull Activity activity, @NonNull String str) {
        if (VERSION.SDK_INT >= 23) {
            return ActivityCompatApi23.shouldShowRequestPermissionRationale(activity, str);
        }
        return false;
    }

    private static SharedElementCallback21 createCallback(SharedElementCallback sharedElementCallback) {
        if (sharedElementCallback != null) {
            return new SharedElementCallback21Impl(sharedElementCallback);
        }
        return null;
    }

    private static SharedElementCallback23 createCallback23(SharedElementCallback sharedElementCallback) {
        if (sharedElementCallback != null) {
            return new SharedElementCallback23Impl(sharedElementCallback);
        }
        return null;
    }
}
