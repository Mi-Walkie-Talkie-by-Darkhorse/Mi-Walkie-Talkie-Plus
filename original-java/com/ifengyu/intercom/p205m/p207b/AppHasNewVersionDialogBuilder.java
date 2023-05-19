package com.ifengyu.intercom.p205m.p207b;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;

/* renamed from: com.ifengyu.intercom.m.b.b */
/* loaded from: classes2.dex */
public class AppHasNewVersionDialogBuilder extends BaseQMUIDialogBuilder<AppHasNewVersionDialogBuilder> {

    /* renamed from: u */
    private VersionInfo f14335u;

    public AppHasNewVersionDialogBuilder(Context context) {
        super(context);
    }

    /* renamed from: E */
    private void m11454E(TextView textView, String str) {
        textView.setText(str.replace("\\n", "\n"));
    }

    /* renamed from: F */
    public AppHasNewVersionDialogBuilder m11453F(VersionInfo versionInfo) {
        this.f14335u = versionInfo;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: k */
    protected View mo7246k(@NonNull QMUIDialog qMUIDialog, @NonNull QMUIDialogView qMUIDialogView, @NonNull Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_apk_update_info, (ViewGroup) qMUIDialogView, false);
        TextView textView = (TextView) inflate.findViewById(R.id.apk_version_name);
        TextView textView2 = (TextView) inflate.findViewById(R.id.apk_update_info);
        if (this.f14335u != null) {
            textView.setText(Html.fromHtml(UIUtils.m8603o(R.string.apk_update_title) + "：<font color=#00BFFF>" + this.f14335u.getVersionName() + "</color>"));
            m11454E(textView2, this.f14335u.getInfo());
        }
        return inflate;
    }
}
