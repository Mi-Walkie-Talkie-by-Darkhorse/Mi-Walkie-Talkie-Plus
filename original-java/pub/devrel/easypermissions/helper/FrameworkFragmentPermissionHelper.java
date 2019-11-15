package pub.devrel.easypermissions.helper;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;

class FrameworkFragmentPermissionHelper extends PermissionHelper<Fragment> {
    public FrameworkFragmentPermissionHelper(@NonNull Fragment fragment) {
        super(fragment);
    }

    @SuppressLint({"NewApi"})
    public void requestPermissions(@NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        if (shouldShowRationale(strArr)) {
            showRationaleDialogFragment(((Fragment) getHost()).getChildFragmentManager(), str, i, i2, i3, strArr);
            return;
        }
        ((Fragment) getHost()).requestPermissions(strArr, i3);
    }

    @SuppressLint({"NewApi"})
    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        return ((Fragment) getHost()).shouldShowRequestPermissionRationale(str);
    }

    @SuppressLint({"NewApi"})
    public Context getContext() {
        return ((Fragment) getHost()).getActivity();
    }
}
