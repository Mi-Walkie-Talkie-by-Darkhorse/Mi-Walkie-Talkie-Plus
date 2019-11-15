package pub.devrel.easypermissions.helper;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import java.util.List;
import pub.devrel.easypermissions.RationaleDialogFragment;

@RestrictTo({Scope.LIBRARY})
public abstract class PermissionHelper<T> {
    private static final String TAG = "PermissionHelper";
    private T mHost;

    public abstract Context getContext();

    public abstract void requestPermissions(@NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr);

    public abstract boolean shouldShowRequestPermissionRationale(@NonNull String str);

    @NonNull
    public static PermissionHelper newInstance(Activity activity) {
        if (VERSION.SDK_INT < 23) {
            return new LowApiPermissionsHelper(activity);
        }
        return new ActivityPermissionHelper(activity);
    }

    @NonNull
    public static PermissionHelper newInstance(Fragment fragment) {
        if (VERSION.SDK_INT < 23) {
            return new LowApiPermissionsHelper(fragment);
        }
        return new SupportFragmentPermissionHelper(fragment);
    }

    @NonNull
    public static PermissionHelper newInstance(android.app.Fragment fragment) {
        if (VERSION.SDK_INT < 23) {
            return new LowApiPermissionsHelper(fragment);
        }
        return new FrameworkFragmentPermissionHelper(fragment);
    }

    public PermissionHelper(@NonNull T t) {
        this.mHost = t;
    }

    public boolean shouldShowRationale(@NonNull String... strArr) {
        for (String shouldShowRequestPermissionRationale : strArr) {
            if (shouldShowRequestPermissionRationale(shouldShowRequestPermissionRationale)) {
                return true;
            }
        }
        return false;
    }

    public boolean somePermissionPermanentlyDenied(@NonNull List<String> list) {
        for (String permissionPermanentlyDenied : list) {
            if (permissionPermanentlyDenied(permissionPermanentlyDenied)) {
                return true;
            }
        }
        return false;
    }

    public boolean permissionPermanentlyDenied(@NonNull String str) {
        return !shouldShowRequestPermissionRationale(str);
    }

    public boolean somePermissionDenied(@NonNull String... strArr) {
        return shouldShowRationale(strArr);
    }

    @NonNull
    public T getHost() {
        return this.mHost;
    }

    /* access modifiers changed from: protected */
    @RequiresApi(api = 11)
    public void showRationaleDialogFragment(@NonNull FragmentManager fragmentManager, @NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        RationaleDialogFragment.newInstance(i, i2, str, i3, strArr).show(fragmentManager, RationaleDialogFragment.TAG);
    }
}
