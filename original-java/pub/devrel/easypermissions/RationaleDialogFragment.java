package pub.devrel.easypermissions;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.StringRes;
import pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks;

@RequiresApi(11)
@RestrictTo({Scope.LIBRARY})
public class RationaleDialogFragment extends DialogFragment {
    public static final String TAG = "RationaleDialogFragment";
    private PermissionCallbacks mPermissionCallbacks;

    public static RationaleDialogFragment newInstance(@StringRes int i, @StringRes int i2, @NonNull String str, int i3, @NonNull String[] strArr) {
        RationaleDialogFragment rationaleDialogFragment = new RationaleDialogFragment();
        rationaleDialogFragment.setArguments(new RationaleDialogConfig(i, i2, str, i3, strArr).toBundle());
        return rationaleDialogFragment;
    }

    @SuppressLint({"NewApi"})
    public void onAttach(Context context) {
        super.onAttach(context);
        if ((VERSION.SDK_INT >= 17) && getParentFragment() != null && (getParentFragment() instanceof PermissionCallbacks)) {
            this.mPermissionCallbacks = (PermissionCallbacks) getParentFragment();
        } else if (context instanceof PermissionCallbacks) {
            this.mPermissionCallbacks = (PermissionCallbacks) context;
        }
    }

    public void onDetach() {
        super.onDetach();
        this.mPermissionCallbacks = null;
    }

    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        setCancelable(false);
        RationaleDialogConfig rationaleDialogConfig = new RationaleDialogConfig(getArguments());
        return rationaleDialogConfig.createDialog(getActivity(), new RationaleDialogClickListener(this, rationaleDialogConfig, this.mPermissionCallbacks));
    }
}
