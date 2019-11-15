package pub.devrel.easypermissions.helper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import pub.devrel.easypermissions.RationaleDialogFragmentCompat;

class SupportFragmentPermissionHelper extends PermissionHelper<Fragment> {
    public SupportFragmentPermissionHelper(@NonNull Fragment fragment) {
        super(fragment);
    }

    @SuppressLint({"NewApi"})
    public void requestPermissions(@NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        if (shouldShowRationale(strArr)) {
            RationaleDialogFragmentCompat.newInstance(i, i2, str, i3, strArr).show(((Fragment) getHost()).getChildFragmentManager(), RationaleDialogFragmentCompat.TAG);
        } else {
            ((Fragment) getHost()).requestPermissions(strArr, i3);
        }
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        return ((Fragment) getHost()).shouldShowRequestPermissionRationale(str);
    }

    public Context getContext() {
        return ((Fragment) getHost()).getActivity();
    }
}
