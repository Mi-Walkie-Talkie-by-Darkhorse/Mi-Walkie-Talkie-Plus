package com.ifengyu.intercom.p214p;

import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.SessionInviteDialogBuilder;
import com.ifengyu.intercom.p216ui.talk.SessionTalkActivity;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;

/* renamed from: com.ifengyu.intercom.p.v */
/* loaded from: classes2.dex */
public class GlobalDialogUtil {

    /* renamed from: e */
    private static GlobalDialogUtil f14486e;

    /* renamed from: a */
    private QMUIDialog f14487a;

    /* renamed from: b */
    private QMUIDialog f14488b;

    /* renamed from: c */
    private QMUIDialog f14489c;

    /* renamed from: d */
    private QMUIDialog f14490d;

    private GlobalDialogUtil() {
    }

    /* renamed from: a */
    public static GlobalDialogUtil m11067a() {
        if (f14486e == null) {
            f14486e = new GlobalDialogUtil();
        }
        return f14486e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m11064d(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        this.f14487a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ void m11063e(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        GroupSessionEvent m8383d = SlTalkClient.m8513r().m8520k().m8383d();
        if (m8383d == null) {
            return;
        }
        m8383d.refuse(100);
        if (m8383d.getGroup() != null) {
            m8383d.getGroup().deleteSession();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ void m11062f(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        GroupSessionEvent m8383d = SlTalkClient.m8513r().m8520k().m8383d();
        if (m8383d == null) {
            UIUtils.m8593y(R.string.device_dialog_talk_lose_efficacy);
        } else if (m8383d.getStatus() == 0) {
            UIUtils.m8593y(R.string.device_dialog_talk_lose_efficacy);
        } else {
            SessionTalkActivity.m9443N(MiTalkiApp.m14296h().m14297g(), m8383d);
        }
    }

    /* renamed from: b */
    public void m11066b() {
        QMUIDialog qMUIDialog = this.f14490d;
        if (qMUIDialog == null || !qMUIDialog.isShowing()) {
            return;
        }
        this.f14490d.dismiss();
        this.f14490d = null;
    }

    /* renamed from: g */
    public void m11061g() {
        try {
            if (MiTalkiApp.m14296h().m14297g() != null) {
                QMUIDialog qMUIDialog = this.f14487a;
                if (qMUIDialog == null || !qMUIDialog.isShowing()) {
                    MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(MiTalkiApp.m14296h().m14297g());
                    messageDialogBuilder.m7248E(R.string.check_device_vox_is_opened);
                    messageDialogBuilder.m7300b(0, R.string.user_guide_i_know, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.p.a
                        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                        /* renamed from: a */
                        public final void mo7305a(QMUIDialog qMUIDialog2, int i) {
                            GlobalDialogUtil.this.m11064d(qMUIDialog2, i);
                        }
                    });
                    QMUIDialog m7296f = messageDialogBuilder.m7296f(R.style.DialogTheme1);
                    this.f14487a = m7296f;
                    m7296f.show();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public void m11060h(QMUIDialogAction.InterfaceC5249b interfaceC5249b) {
        try {
            if (MiTalkiApp.m14296h().m14297g() != null) {
                QMUIDialog qMUIDialog = this.f14489c;
                if (qMUIDialog == null || !qMUIDialog.isShowing()) {
                    MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(MiTalkiApp.m14296h().m14297g());
                    messageDialogBuilder.m7282x(R.string.offline_notification);
                    MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
                    messageDialogBuilder2.m7248E(R.string.account_login_on_another_phone);
                    messageDialogBuilder2.m7286t(false);
                    MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
                    messageDialogBuilder3.m7285u(false);
                    MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
                    messageDialogBuilder4.m7300b(0, R.string.common_ok, 0, interfaceC5249b);
                    QMUIDialog m7296f = messageDialogBuilder4.m7296f(R.style.DialogTheme1);
                    this.f14489c = m7296f;
                    m7296f.show();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public void m11059i(QMUIDialogAction.InterfaceC5249b interfaceC5249b) {
        try {
            if (MiTalkiApp.m14296h().m14297g() != null) {
                QMUIDialog qMUIDialog = this.f14488b;
                if (qMUIDialog == null || !qMUIDialog.isShowing()) {
                    MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(MiTalkiApp.m14296h().m14297g());
                    messageDialogBuilder.m7282x(R.string.login_time_out);
                    MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
                    messageDialogBuilder2.m7248E(R.string.account_login_info_had_time_out);
                    messageDialogBuilder2.m7286t(false);
                    MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
                    messageDialogBuilder3.m7285u(false);
                    MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
                    messageDialogBuilder4.m7300b(0, R.string.common_ok, 0, interfaceC5249b);
                    QMUIDialog m7296f = messageDialogBuilder4.m7296f(R.style.DialogTheme1);
                    this.f14488b = m7296f;
                    m7296f.show();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public void m11058j() {
        try {
            if (MiTalkiApp.m14296h().m14297g() != null) {
                QMUIDialog qMUIDialog = this.f14490d;
                if (qMUIDialog != null && qMUIDialog.isShowing()) {
                    this.f14490d.dismiss();
                    this.f14490d = null;
                }
                GroupSessionEvent m8383d = SlTalkClient.m8513r().m8520k().m8383d();
                SessionInviteDialogBuilder sessionInviteDialogBuilder = new SessionInviteDialogBuilder(MiTalkiApp.m14296h().m14297g());
                sessionInviteDialogBuilder.m11410E(m8383d);
                sessionInviteDialogBuilder.m7286t(false);
                SessionInviteDialogBuilder sessionInviteDialogBuilder2 = sessionInviteDialogBuilder;
                sessionInviteDialogBuilder2.m7285u(false);
                SessionInviteDialogBuilder sessionInviteDialogBuilder3 = sessionInviteDialogBuilder2;
                sessionInviteDialogBuilder3.m7300b(0, R.string.device_refuse_dialog_talk, 2, C4141c.f14437a);
                SessionInviteDialogBuilder sessionInviteDialogBuilder4 = sessionInviteDialogBuilder3;
                sessionInviteDialogBuilder4.m7300b(0, R.string.device_join_dialog_talk, 0, C4139b.f14434a);
                QMUIDialog m7296f = sessionInviteDialogBuilder4.m7296f(R.style.DialogTheme1);
                this.f14490d = m7296f;
                m7296f.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
