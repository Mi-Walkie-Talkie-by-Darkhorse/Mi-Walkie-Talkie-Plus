package pub.devrel.easypermissions;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.text.TextUtils;

public class AppSettingsDialog implements OnClickListener, Parcelable {
    @RestrictTo({Scope.LIBRARY_GROUP})
    public static final Creator<AppSettingsDialog> CREATOR = new Creator<AppSettingsDialog>() {
        public AppSettingsDialog createFromParcel(Parcel parcel) {
            return new AppSettingsDialog(parcel);
        }

        public AppSettingsDialog[] newArray(int i) {
            return new AppSettingsDialog[i];
        }
    };
    public static final int DEFAULT_SETTINGS_REQ_CODE = 16061;
    static final String EXTRA_APP_SETTINGS = "extra_app_settings";
    private Object mActivityOrFragment;
    private Context mContext;
    private final String mNegativeButtonText;
    private OnClickListener mNegativeListener;
    private final String mPositiveButtonText;
    private final String mRationale;
    private final int mRequestCode;
    private final String mTitle;

    public static class Builder {
        private Object mActivityOrFragment;
        private Context mContext;
        private String mNegativeButton;
        private OnClickListener mNegativeListener;
        private String mPositiveButton;
        private String mRationale;
        private int mRequestCode = -1;
        private String mTitle;

        @Deprecated
        public Builder(@NonNull Activity activity, @NonNull String str) {
            this.mActivityOrFragment = activity;
            this.mContext = activity;
            this.mRationale = str;
        }

        @Deprecated
        public Builder(@NonNull Fragment fragment, @NonNull String str) {
            this.mActivityOrFragment = fragment;
            this.mContext = fragment.getContext();
            this.mRationale = str;
        }

        @RequiresApi(api = 11)
        @Deprecated
        public Builder(@NonNull android.app.Fragment fragment, @NonNull String str) {
            this.mActivityOrFragment = fragment;
            this.mContext = fragment.getActivity();
            this.mRationale = str;
        }

        public Builder(@NonNull Activity activity) {
            this.mActivityOrFragment = activity;
            this.mContext = activity;
        }

        public Builder(@NonNull Fragment fragment) {
            this.mActivityOrFragment = fragment;
            this.mContext = fragment.getContext();
        }

        @RequiresApi(api = 11)
        public Builder(@NonNull android.app.Fragment fragment) {
            this.mActivityOrFragment = fragment;
            this.mContext = fragment.getActivity();
        }

        public Builder setTitle(String str) {
            this.mTitle = str;
            return this;
        }

        public Builder setTitle(@StringRes int i) {
            this.mTitle = this.mContext.getString(i);
            return this;
        }

        public Builder setRationale(String str) {
            this.mRationale = str;
            return this;
        }

        public Builder setRationale(@StringRes int i) {
            this.mRationale = this.mContext.getString(i);
            return this;
        }

        public Builder setPositiveButton(String str) {
            this.mPositiveButton = str;
            return this;
        }

        public Builder setPositiveButton(@StringRes int i) {
            this.mPositiveButton = this.mContext.getString(i);
            return this;
        }

        @Deprecated
        public Builder setNegativeButton(String str, OnClickListener onClickListener) {
            this.mNegativeButton = str;
            this.mNegativeListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(String str) {
            this.mNegativeButton = str;
            return this;
        }

        public Builder setNegativeButton(@StringRes int i) {
            this.mNegativeButton = this.mContext.getString(i);
            return this;
        }

        public Builder setRequestCode(int i) {
            this.mRequestCode = i;
            return this;
        }

        public AppSettingsDialog build() {
            this.mRationale = TextUtils.isEmpty(this.mRationale) ? this.mContext.getString(R.string.rationale_ask_again) : this.mRationale;
            this.mTitle = TextUtils.isEmpty(this.mTitle) ? this.mContext.getString(R.string.title_settings_dialog) : this.mTitle;
            this.mPositiveButton = TextUtils.isEmpty(this.mPositiveButton) ? this.mContext.getString(17039370) : this.mPositiveButton;
            this.mNegativeButton = TextUtils.isEmpty(this.mNegativeButton) ? this.mContext.getString(17039360) : this.mNegativeButton;
            this.mRequestCode = this.mRequestCode > 0 ? this.mRequestCode : AppSettingsDialog.DEFAULT_SETTINGS_REQ_CODE;
            return new AppSettingsDialog(this.mActivityOrFragment, this.mContext, this.mRationale, this.mTitle, this.mPositiveButton, this.mNegativeButton, this.mNegativeListener, this.mRequestCode);
        }
    }

    private AppSettingsDialog(Parcel parcel) {
        this.mRationale = parcel.readString();
        this.mTitle = parcel.readString();
        this.mPositiveButtonText = parcel.readString();
        this.mNegativeButtonText = parcel.readString();
        this.mRequestCode = parcel.readInt();
    }

    private AppSettingsDialog(@NonNull Object obj, @NonNull Context context, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable OnClickListener onClickListener, int i) {
        this.mActivityOrFragment = obj;
        this.mContext = context;
        this.mRationale = str;
        this.mTitle = str2;
        this.mPositiveButtonText = str3;
        this.mNegativeButtonText = str4;
        this.mNegativeListener = onClickListener;
        this.mRequestCode = i;
    }

    /* access modifiers changed from: 0000 */
    public void setActivityOrFragment(Object obj) {
        this.mActivityOrFragment = obj;
    }

    /* access modifiers changed from: 0000 */
    public void setContext(Context context) {
        this.mContext = context;
    }

    /* access modifiers changed from: 0000 */
    public void setNegativeListener(OnClickListener onClickListener) {
        this.mNegativeListener = onClickListener;
    }

    @RequiresApi(api = 11)
    private void startForResult(Intent intent) {
        if (this.mActivityOrFragment instanceof Activity) {
            ((Activity) this.mActivityOrFragment).startActivityForResult(intent, this.mRequestCode);
        } else if (this.mActivityOrFragment instanceof Fragment) {
            ((Fragment) this.mActivityOrFragment).startActivityForResult(intent, this.mRequestCode);
        } else if (this.mActivityOrFragment instanceof android.app.Fragment) {
            ((android.app.Fragment) this.mActivityOrFragment).startActivityForResult(intent, this.mRequestCode);
        }
    }

    public void show() {
        if (this.mNegativeListener == null) {
            startForResult(AppSettingsDialogHolderActivity.createShowDialogIntent(this.mContext, this));
        } else {
            showDialog();
        }
    }

    /* access modifiers changed from: 0000 */
    public void showDialog() {
        new android.support.v7.app.AlertDialog.Builder(this.mContext).setCancelable(false).setTitle((CharSequence) this.mTitle).setMessage((CharSequence) this.mRationale).setPositiveButton((CharSequence) this.mPositiveButtonText, (OnClickListener) this).setNegativeButton((CharSequence) this.mNegativeButtonText, this.mNegativeListener).create().show();
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", this.mContext.getPackageName(), null));
        startForResult(intent);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.mRationale);
        parcel.writeString(this.mTitle);
        parcel.writeString(this.mPositiveButtonText);
        parcel.writeString(this.mNegativeButtonText);
        parcel.writeInt(this.mRequestCode);
    }
}
