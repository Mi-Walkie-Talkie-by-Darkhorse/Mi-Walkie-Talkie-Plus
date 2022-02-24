package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class OffMapDownloadDialog extends d {

    /* renamed from: a  reason: collision with root package name */
    private Activity f6902a;

    /* renamed from: b  reason: collision with root package name */
    private OnClickListener f6903b;

    /* renamed from: c  reason: collision with root package name */
    private OFF_MAP_DIALOG_CHECK f6904c;
    private boolean d;

    /* loaded from: classes2.dex */
    public enum OFF_MAP_DIALOG_CHECK {
        STOP_OR_CONTINUE,
        RENAME
    }

    /* loaded from: classes2.dex */
    public interface OnClickListener {
        void a();

        void b();

        void c();
    }

    public OffMapDownloadDialog(Activity activity, OFF_MAP_DIALOG_CHECK off_map_dialog_check, boolean z) {
        super(activity);
        this.f6902a = activity;
        this.f6904c = off_map_dialog_check;
        this.d = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        if (i == R.id.cancle) {
            dismiss();
        } else if (i == R.id.local) {
            this.f6903b.a();
            dismiss();
        } else if (i == R.id.photo) {
            if (this.f6904c == OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE) {
                this.f6903b.b();
                dismiss();
                return;
            }
            dismiss();
            this.f6903b.c();
        }
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_pic_selector);
        a(this.f6902a);
        TextView textView = (TextView) findViewById(R.id.photo);
        TextView textView2 = (TextView) findViewById(R.id.local);
        TextView textView3 = (TextView) findViewById(R.id.cancle);
        if (this.f6904c != OFF_MAP_DIALOG_CHECK.STOP_OR_CONTINUE) {
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

    public void setOnClickListener(OnClickListener onClickListener) {
        this.f6903b = onClickListener;
    }
}
