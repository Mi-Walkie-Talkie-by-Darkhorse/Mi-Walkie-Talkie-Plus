package de.greenrobot.event.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;

public class ErrorDialogFragments {
    public static int a = 0;
    public static Class<?> b;

    @TargetApi(11)
    public static class Honeycomb extends DialogFragment implements OnClickListener {
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.a(getActivity(), getArguments(), this);
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            ErrorDialogFragments.a(dialogInterface, i, getActivity(), getArguments());
        }
    }

    public static class Support extends android.support.v4.app.DialogFragment implements OnClickListener {
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.a(getActivity(), getArguments(), this);
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            ErrorDialogFragments.a(dialogInterface, i, getActivity(), getArguments());
        }
    }

    public static Dialog a(Context context, Bundle bundle, OnClickListener onClickListener) {
        Builder builder = new Builder(context);
        builder.setTitle(bundle.getString("de.greenrobot.eventbus.errordialog.title"));
        builder.setMessage(bundle.getString("de.greenrobot.eventbus.errordialog.message"));
        if (a != 0) {
            builder.setIcon(a);
        }
        builder.setPositiveButton(17039370, onClickListener);
        return builder.create();
    }

    public static void a(DialogInterface dialogInterface, int i, Activity activity, Bundle bundle) {
        if (b != null) {
            try {
                ErrorDialogManager.a.a.a().e(b.newInstance());
            } catch (Exception e) {
                throw new RuntimeException("Event cannot be constructed", e);
            }
        }
        if (bundle.getBoolean("de.greenrobot.eventbus.errordialog.finish_after_dialog", false) && activity != null) {
            activity.finish();
        }
    }
}
