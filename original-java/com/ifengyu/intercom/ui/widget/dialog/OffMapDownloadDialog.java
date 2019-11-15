package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

public class OffMapDownloadDialog extends b {
    private Activity a;
    private OnClickListener b;
    private OFF_MAP_DIALOG_CHECK c;
    private boolean d;

    public enum OFF_MAP_DIALOG_CHECK {
        STOP_OR_CONTINUE,
        RENAME
    }

    public interface OnClickListener {
        void a();

        void b();

        void c();
    }

    public OffMapDownloadDialog(Activity activity, OFF_MAP_DIALOG_CHECK off_map_dialog_check, boolean z) {
        super(activity);
        this.a = activity;
        this.c = off_map_dialog_check;
        this.d = z;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_pic_selector);
        a(this.a);
        TextView textView = (TextView) findViewById(R.id.photo);
        TextView textView2 = (TextView) findViewById(R.id.local);
        TextView textView3 = (TextView) findViewById(R.id.cancle);
        if (this.c != OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE) {
            textView.setText(R.string.rename);
        } else if (this.d) {
            textView.setText(R.string.common_pause);
        } else {
            textView.setText(R.string.common_carry_on);
        }
        textView2.setText(R.string.common_delete);
        textView3.setText(R.string.common_cancel);
        a(R.id.photo, R.id.local, R.id.cancle);
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.photo /*2131755482*/:
                if (this.c == OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE) {
                    this.b.a();
                    dismiss();
                    return;
                }
                dismiss();
                this.b.b();
                return;
            case R.id.local /*2131755524*/:
                this.b.c();
                dismiss();
                return;
            case R.id.cancle /*2131755525*/:
                dismiss();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.b = onClickListener;
    }
}
