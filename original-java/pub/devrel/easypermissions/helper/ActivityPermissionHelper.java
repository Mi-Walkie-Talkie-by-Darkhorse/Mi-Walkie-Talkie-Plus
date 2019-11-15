package pub.devrel.easypermissions.helper;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v4.app.ActivityCompat;

class ActivityPermissionHelper extends PermissionHelper<Activity> {
    public ActivityPermissionHelper(Activity activity) {
        super(activity);
    }

    @SuppressLint({"NewApi"})
    public void requestPermissions(@NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        if (shouldShowRationale(strArr)) {
            showRationaleDialogFragment(((Activity) getHost()).getFragmentManager(), str, i, i2, i3, strArr);
            return;
        }
        ActivityCompat.requestPermissions((Activity) getHost(), strArr, i3);
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        return ActivityCompat.shouldShowRequestPermissionRationale((Activity) getHost(), str);
    }

    public Context getContext() {
        return (Context) getHost();
    }
}
