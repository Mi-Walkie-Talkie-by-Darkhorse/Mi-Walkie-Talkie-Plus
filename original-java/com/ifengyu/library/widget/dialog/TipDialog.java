package com.ifengyu.library.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils.TruncateAt;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.ifengyu.library.R;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUILoadingView;
import com.ifengyu.library.widget.waitingdots.DotsTextView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class TipDialog extends Dialog {

    public static class Builder {
        private int a = 0;
        private Context b;
        private CharSequence c;
        private boolean d;

        @Retention(RetentionPolicy.SOURCE)
        public @interface IconType {
        }

        public Builder(Context context) {
            this.b = context;
        }

        public Builder a(int i) {
            this.a = i;
            return this;
        }

        public Builder a(CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        public Builder a(boolean z) {
            this.d = z;
            return this;
        }

        public TipDialog a() {
            TipDialog tipDialog = new TipDialog(this.b);
            tipDialog.setContentView(R.layout.qmui_tip_dialog_layout);
            tipDialog.setCancelable(this.d);
            ViewGroup viewGroup = (ViewGroup) tipDialog.findViewById(R.id.contentWrap);
            switch (this.a) {
                case 1:
                    QMUILoadingView qMUILoadingView = new QMUILoadingView(this.b);
                    qMUILoadingView.setColor(-1);
                    qMUILoadingView.setSize(l.a(32.0f));
                    qMUILoadingView.setLayoutParams(new LayoutParams(-2, -2));
                    viewGroup.addView(qMUILoadingView);
                    break;
                case 2:
                case 3:
                case 4:
                    ImageView imageView = new ImageView(this.b);
                    imageView.setLayoutParams(new LayoutParams(-2, -2));
                    if (this.a == 2) {
                        imageView.setImageDrawable(this.b.getResources().getDrawable(R.drawable.qmui_icon_notify_done));
                    } else if (this.a == 3) {
                        imageView.setImageDrawable(this.b.getResources().getDrawable(R.drawable.qmui_icon_notify_error));
                    } else {
                        imageView.setImageDrawable(this.b.getResources().getDrawable(R.drawable.qmui_icon_notify_info));
                    }
                    viewGroup.addView(imageView);
                    break;
            }
            if (this.c != null && this.c.length() > 0) {
                LinearLayout linearLayout = new LinearLayout(this.b);
                LayoutParams layoutParams = new LayoutParams(-1, -2);
                linearLayout.setLayoutParams(layoutParams);
                linearLayout.setOrientation(0);
                linearLayout.setGravity(1);
                if (this.a != 0) {
                    layoutParams.topMargin = l.a(12.0f);
                }
                TextView textView = new TextView(this.b);
                textView.setEllipsize(TruncateAt.END);
                textView.setGravity(17);
                textView.setMaxLines(2);
                textView.setTextColor(ContextCompat.getColor(this.b, R.color.qmui_config_color_white));
                textView.setTextSize(2, 14.0f);
                textView.setText(this.c);
                LayoutParams layoutParams2 = new LayoutParams(-2, -2);
                linearLayout.addView(textView, layoutParams2);
                DotsTextView dotsTextView = new DotsTextView(this.b);
                dotsTextView.setTextSize(2, 14.0f);
                dotsTextView.setTextColor(ContextCompat.getColor(this.b, R.color.qmui_config_color_white));
                linearLayout.addView(dotsTextView, layoutParams2);
                viewGroup.addView(linearLayout);
            }
            return tipDialog;
        }
    }

    public TipDialog(Context context) {
        this(context, R.style.QMUI_TipDialog);
    }

    public TipDialog(Context context, int i) {
        super(context, i);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
    }

    private void a() {
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            window.setAttributes(attributes);
        }
    }
}
