package pub.devrel.easypermissions.helper;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;

class LowApiPermissionsHelper extends PermissionHelper<Object> {
    public LowApiPermissionsHelper(@NonNull Object obj) {
        super(obj);
    }

    public void requestPermissions(@NonNull String str, @StringRes int i, @StringRes int i2, int i3, @NonNull String... strArr) {
        throw new IllegalStateException("Should never be requesting permissions on API < 23!");
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        return false;
    }

    public Context getContext() {
        return null;
    }
}
