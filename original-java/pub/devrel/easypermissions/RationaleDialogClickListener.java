package pub.devrel.easypermissions;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Build.VERSION;
import android.support.annotation.RequiresApi;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import java.util.Arrays;
import pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks;

class RationaleDialogClickListener implements OnClickListener {
    private PermissionCallbacks mCallbacks;
    private RationaleDialogConfig mConfig;
    private Object mHost;

    RationaleDialogClickListener(RationaleDialogFragmentCompat rationaleDialogFragmentCompat, RationaleDialogConfig rationaleDialogConfig, PermissionCallbacks permissionCallbacks) {
        Object activity;
        if (rationaleDialogFragmentCompat.getParentFragment() != null) {
            activity = rationaleDialogFragmentCompat.getParentFragment();
        } else {
            activity = rationaleDialogFragmentCompat.getActivity();
        }
        this.mHost = activity;
        this.mConfig = rationaleDialogConfig;
        this.mCallbacks = permissionCallbacks;
    }

    @RequiresApi(api = 11)
    RationaleDialogClickListener(RationaleDialogFragment rationaleDialogFragment, RationaleDialogConfig rationaleDialogConfig, PermissionCallbacks permissionCallbacks) {
        Object activity;
        if (VERSION.SDK_INT >= 17) {
            if (rationaleDialogFragment.getParentFragment() != null) {
                activity = rationaleDialogFragment.getParentFragment();
            } else {
                activity = rationaleDialogFragment.getActivity();
            }
            this.mHost = activity;
        } else {
            this.mHost = rationaleDialogFragment.getActivity();
        }
        this.mConfig = rationaleDialogConfig;
        this.mCallbacks = permissionCallbacks;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i != -1) {
            notifyPermissionDenied();
        } else if (this.mHost instanceof Fragment) {
            ((Fragment) this.mHost).requestPermissions(this.mConfig.permissions, this.mConfig.requestCode);
        } else if (this.mHost instanceof android.app.Fragment) {
            if (VERSION.SDK_INT >= 23) {
                ((android.app.Fragment) this.mHost).requestPermissions(this.mConfig.permissions, this.mConfig.requestCode);
                return;
            }
            throw new IllegalArgumentException("Target SDK needs to be greater than 23 if caller is android.app.Fragment");
        } else if (this.mHost instanceof FragmentActivity) {
            ActivityCompat.requestPermissions((FragmentActivity) this.mHost, this.mConfig.permissions, this.mConfig.requestCode);
        }
    }

    private void notifyPermissionDenied() {
        if (this.mCallbacks != null) {
            this.mCallbacks.onPermissionsDenied(this.mConfig.requestCode, Arrays.asList(this.mConfig.permissions));
        }
    }
}
