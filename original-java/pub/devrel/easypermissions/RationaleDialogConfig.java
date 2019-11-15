package pub.devrel.easypermissions;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;

class RationaleDialogConfig {
    private static final String KEY_NEGATIVE_BUTTON = "negativeButton";
    private static final String KEY_PERMISSIONS = "permissions";
    private static final String KEY_POSITIVE_BUTTON = "positiveButton";
    private static final String KEY_RATIONALE_MESSAGE = "rationaleMsg";
    private static final String KEY_REQUEST_CODE = "requestCode";
    int negativeButton;
    String[] permissions;
    int positiveButton;
    String rationaleMsg;
    int requestCode;

    RationaleDialogConfig(@StringRes int i, @StringRes int i2, @NonNull String str, int i3, @NonNull String[] strArr) {
        this.positiveButton = i;
        this.negativeButton = i2;
        this.rationaleMsg = str;
        this.requestCode = i3;
        this.permissions = strArr;
    }

    RationaleDialogConfig(Bundle bundle) {
        this.positiveButton = bundle.getInt(KEY_POSITIVE_BUTTON);
        this.negativeButton = bundle.getInt(KEY_NEGATIVE_BUTTON);
        this.rationaleMsg = bundle.getString(KEY_RATIONALE_MESSAGE);
        this.requestCode = bundle.getInt(KEY_REQUEST_CODE);
        this.permissions = bundle.getStringArray(KEY_PERMISSIONS);
    }

    /* access modifiers changed from: 0000 */
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_POSITIVE_BUTTON, this.positiveButton);
        bundle.putInt(KEY_NEGATIVE_BUTTON, this.negativeButton);
        bundle.putString(KEY_RATIONALE_MESSAGE, this.rationaleMsg);
        bundle.putInt(KEY_REQUEST_CODE, this.requestCode);
        bundle.putStringArray(KEY_PERMISSIONS, this.permissions);
        return bundle;
    }

    /* access modifiers changed from: 0000 */
    public AlertDialog createDialog(Context context, OnClickListener onClickListener) {
        return new Builder(context).setCancelable(false).setPositiveButton(this.positiveButton, onClickListener).setNegativeButton(this.negativeButton, onClickListener).setMessage((CharSequence) this.rationaleMsg).create();
    }
}
