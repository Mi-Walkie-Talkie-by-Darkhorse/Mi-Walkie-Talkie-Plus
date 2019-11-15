package com.ifengyu.intercom.ui.imui.ui.chat.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.request.d;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIAlphaButton;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;

public class UserInfoDialog extends Dialog {

    public static class Builder {
        protected boolean mCancel = true;
        private boolean mCancelable = true;
        private Context mContext;
        private String mImageUrl;
        protected OnClickListener mPositiveButtonListener;
        private String mPositiveText;
        private String mSubTitle;
        private String mTitle;

        public Builder(Context context) {
            this.mContext = context;
        }

        public String getTitle() {
            return this.mTitle;
        }

        public Builder setTitle(String str) {
            this.mTitle = str;
            return this;
        }

        public String getSubTitle() {
            return this.mSubTitle;
        }

        public Builder setSubTitle(String str) {
            this.mSubTitle = str;
            return this;
        }

        public String getImageUrl() {
            return this.mImageUrl;
        }

        public Builder setImageUrl(String str) {
            this.mImageUrl = str;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.mCancelable = z;
            return this;
        }

        public Builder setCanceledOnTouchOutside(boolean z) {
            this.mCancel = z;
            return this;
        }

        public Builder setPositiveButton(@StringRes int i, OnClickListener onClickListener) {
            this.mPositiveText = this.mContext.getResources().getString(i);
            this.mPositiveButtonListener = onClickListener;
            return this;
        }

        public UserInfoDialog show() {
            UserInfoDialog create = create();
            create.show();
            return create;
        }

        public UserInfoDialog create() {
            final UserInfoDialog userInfoDialog = new UserInfoDialog(this.mContext);
            userInfoDialog.setContentView(R.layout.dialog_userinfo_layout);
            userInfoDialog.setCancelable(this.mCancelable);
            userInfoDialog.setCanceledOnTouchOutside(this.mCancel);
            ImageView imageView = (ImageView) userInfoDialog.findViewById(R.id.iv_avatar);
            QMUIAlphaImageButton qMUIAlphaImageButton = (QMUIAlphaImageButton) userInfoDialog.findViewById(R.id.btn_close);
            TextView textView = (TextView) userInfoDialog.findViewById(R.id.tv_title);
            TextView textView2 = (TextView) userInfoDialog.findViewById(R.id.tv_sub_title);
            QMUIAlphaButton qMUIAlphaButton = (QMUIAlphaButton) userInfoDialog.findViewById(R.id.btn_positive);
            if (!TextUtils.isEmpty(this.mImageUrl)) {
                loadImage(imageView, this.mImageUrl);
            }
            if (!TextUtils.isEmpty(this.mTitle)) {
                textView.setText(this.mTitle);
            }
            if (!TextUtils.isEmpty(this.mSubTitle)) {
                textView2.setText(this.mSubTitle);
            }
            if (!TextUtils.isEmpty(this.mPositiveText)) {
                qMUIAlphaButton.setText(this.mPositiveText);
            } else {
                qMUIAlphaButton.setVisibility(8);
            }
            qMUIAlphaButton.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    userInfoDialog.dismiss();
                    if (Builder.this.mPositiveButtonListener != null) {
                        Builder.this.mPositiveButtonListener.onClick(userInfoDialog, 0);
                    }
                }
            });
            qMUIAlphaImageButton.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    userInfoDialog.dismiss();
                }
            });
            return userInfoDialog;
        }

        private void loadImage(ImageView imageView, String str) {
            c.a((View) imageView).a((Object) str).a(new d().a((int) R.drawable.my_head_default).b((int) R.drawable.my_head_default)).a(imageView);
        }
    }

    public UserInfoDialog(@NonNull Context context) {
        this(context, R.style.UserInfoDialog);
    }

    public UserInfoDialog(@NonNull Context context, int i) {
        super(context, i);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initDialogWidth();
    }

    private void initDialogWidth() {
        Window window = getWindow();
        if (window != null) {
            LayoutParams attributes = window.getAttributes();
            attributes.width = l.i();
            window.setAttributes(attributes);
        }
    }
}
