package com.ifengyu.intercom.p205m.p207b;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.ifengyu.library.p233c.ImageLoader;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;

/* renamed from: com.ifengyu.intercom.m.b.j */
/* loaded from: classes2.dex */
public class SessionInviteDialogBuilder extends BaseQMUIDialogBuilder<SessionInviteDialogBuilder> {

    /* renamed from: u */
    private GroupSessionEvent f14382u;

    public SessionInviteDialogBuilder(Context context) {
        super(context);
    }

    /* renamed from: E */
    public SessionInviteDialogBuilder m11410E(GroupSessionEvent groupSessionEvent) {
        this.f14382u = groupSessionEvent;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: k */
    protected View mo7246k(@NonNull QMUIDialog qMUIDialog, @NonNull QMUIDialogView qMUIDialogView, @NonNull Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_session_invite, (ViewGroup) qMUIDialogView, false);
        QMUIRadiusImageView qMUIRadiusImageView = (QMUIRadiusImageView) inflate.findViewById(R.id.iv_avatar);
        TextView textView = (TextView) inflate.findViewById(R.id.inviter_name);
        GroupSessionEvent groupSessionEvent = this.f14382u;
        if (groupSessionEvent != null) {
            User inviter = groupSessionEvent.getInviter();
            ImageLoader.m8706e((Activity) m7294h(), qMUIRadiusImageView, inviter.getAvatar());
            textView.setText(inviter.getName());
        }
        return inflate;
    }
}
