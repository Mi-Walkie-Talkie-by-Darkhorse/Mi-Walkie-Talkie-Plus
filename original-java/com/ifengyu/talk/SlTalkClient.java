package com.ifengyu.talk;

import android.app.Notification;
import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.ifengyu.library.BuildConfig;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.DeviceIdUtil;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.message.msgBody.GroupNameChangeBody;
import com.ifengyu.talk.message.msgBody.GroupTransBody;
import com.ifengyu.talk.message.msgBody.MemberChangeBody;
import com.ifengyu.talk.message.msgBody.MemberChangeBodyItem;
import com.ifengyu.talk.message.msgBody.SpeechActionBody;
import com.ifengyu.talk.message.msgBody.SpeechInfoBody;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.p236f.AccountHelper;
import com.ifengyu.talk.p236f.ExternalMsgHelper;
import com.ifengyu.talk.p236f.GroupHelper;
import com.ifengyu.talk.p236f.MediaHelper;
import com.ifengyu.talk.p236f.RecentTalkHelper;
import com.ifengyu.talk.p236f.ResultHelper;
import com.ifengyu.talk.p236f.SessionHelper;
import com.lzy.okgo.interceptor.HttpLoggingInterceptor;
import com.shanlitech.p245et.core.p250sl.model.IAccountOption;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.p246b.PocSDKRunner;
import com.shanlitech.p245et.p248c.DurationUtils;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import p048b.p065c.p066a.OkGo;

/* renamed from: com.ifengyu.talk.d */
/* loaded from: classes2.dex */
public class SlTalkClient {

    /* renamed from: h */
    public static final String f16562h;

    /* renamed from: i */
    private static SlTalkClient f16563i;

    /* renamed from: a */
    private AccountHelper f16564a;

    /* renamed from: b */
    private GroupHelper f16565b;

    /* renamed from: c */
    private MediaHelper f16566c;

    /* renamed from: d */
    private SessionHelper f16567d;

    /* renamed from: e */
    private ResultHelper f16568e;

    /* renamed from: f */
    private ExternalMsgHelper f16569f;

    /* renamed from: g */
    private RecentTalkHelper f16570g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SlTalkClient.java */
    /* renamed from: com.ifengyu.talk.d$a */
    /* loaded from: classes2.dex */
    public class C4983a extends IAccountOption {

        /* renamed from: a */
        final /* synthetic */ Context f16571a;

        C4983a(SlTalkClient slTalkClient, Context context) {
            this.f16571a = context;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public boolean alertNotOrgAccountSourceType() {
            return true;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public String buildDeviceID() {
            return DeviceIdUtil.m8679c(this.f16571a);
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public boolean enableContact() {
            return true;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public boolean enableContactInvitation() {
            return true;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public int getAudioStream() {
            return 3;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public Context getContext() {
            return this.f16571a;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public Notification getNotification() {
            return null;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public String getTag() {
            return "SlTalkHelper";
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public boolean logEnable() {
            return false;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public String logPath() {
            return this.f16571a.getExternalCacheDir().getPath();
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public int platformId() {
            return 0;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public boolean useAlarm() {
            return true;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public boolean useCPULock() {
            return false;
        }

        @Override // com.shanlitech.p245et.core.p250sl.model.IAccountOption
        public boolean useIMCache() {
            return super.useIMCache();
        }
    }

    static {
        BuildConfig.f16360a.booleanValue();
        StringBuilder sb = new StringBuilder();
        sb.append(UIUtils.m8613e().getExternalCacheDir().getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append("speech");
        sb.append(str);
        f16562h = sb.toString();
    }

    private SlTalkClient() {
    }

    /* renamed from: c */
    public static String[] m8528c(Group group) {
        return !TextUtils.isEmpty(group.getAvatar()) ? new String[]{group.getAvatar()} : new String[]{ImageLoader.f16374c};
    }

    /* renamed from: d */
    public static String m8527d(TempGroup tempGroup) {
        if (tempGroup == null) {
            return "";
        }
        if (!TextUtils.isEmpty(tempGroup.getGname())) {
            return tempGroup.getGname();
        }
        String valueOf = String.valueOf(tempGroup.getGid());
        return UIUtils.m8602p(R$string.group_default_name_s, valueOf.substring(valueOf.length() - 4));
    }

    /* renamed from: e */
    public static String m8526e(Group group) {
        if (group == null) {
            return "";
        }
        if (!TextUtils.isEmpty(group.getName())) {
            return group.getName();
        }
        String valueOf = String.valueOf(group.getGid());
        return UIUtils.m8602p(R$string.group_default_name_s, valueOf.substring(valueOf.length() - 4));
    }

    /* renamed from: h */
    public static String m8523h(Member member) {
        return TextUtils.isEmpty(member.getNickName()) ? member.getUser().getName() : member.getNickName();
    }

    /* renamed from: l */
    public static String[] m8519l(TempGroup tempGroup) {
        return !TextUtils.isEmpty(tempGroup.getAvatar()) ? new String[]{tempGroup.getAvatar()} : new String[]{ImageLoader.f16374c};
    }

    /* renamed from: m */
    public static boolean m8518m(Group group) {
        return m8516o(group, m8513r().m8530a().m8455f());
    }

    /* renamed from: n */
    public static boolean m8517n(TempGroup tempGroup, long j) {
        if (tempGroup == null) {
            return false;
        }
        return tempGroup.getOwner().equals(String.valueOf(j));
    }

    /* renamed from: o */
    public static boolean m8516o(Group group, long j) {
        return group != null && group.getCreator() == j;
    }

    /* renamed from: p */
    private void m8515p(Account account) {
        this.f16564a = new AccountHelper(account);
        this.f16565b = new GroupHelper(account);
        this.f16566c = new MediaHelper(account);
        this.f16567d = new SessionHelper(account);
        this.f16568e = new ResultHelper(account);
        this.f16569f = new ExternalMsgHelper(account);
        this.f16570g = new RecentTalkHelper(account);
    }

    /* renamed from: r */
    public static SlTalkClient m8513r() {
        if (f16563i == null) {
            synchronized (SlTalkClient.class) {
                if (f16563i == null) {
                    f16563i = new SlTalkClient();
                }
            }
        }
        return f16563i;
    }

    /* renamed from: s */
    public static boolean m8512s(Group group, Group group2) {
        if (group == null || group2 == null || group.getType() != group2.getType()) {
            return false;
        }
        try {
            if (group.getName().equals(group2.getName()) && group.getCreator() == group2.getCreator()) {
                if (group.getAvatar().equals(group2.getAvatar())) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static /* synthetic */ int m8511t(Group group, Group group2) {
        return group.getCreateTime() - group2.getCreateTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static /* synthetic */ int m8510u(User user, User user2) {
        if (user.isMe()) {
            return -1;
        }
        if (user2.isMe()) {
            return 1;
        }
        int i = user.online;
        int i2 = user2.online;
        if (i == i2) {
            return user.getName().compareTo(user2.getName());
        }
        return String.valueOf(i2).compareTo(String.valueOf(user.online));
    }

    /* renamed from: w */
    public static HistoryMsgModel m8508w(String str) {
        HistoryMsgModel historyMsgModel = (HistoryMsgModel) new Gson().fromJson(str, (Class<Object>) HistoryMsgModel.class);
        if (historyMsgModel == null) {
            return null;
        }
        m8507x(historyMsgModel);
        if (historyMsgModel.getBodyParse() == null) {
            return null;
        }
        return historyMsgModel;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x03a5  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static HistoryMsgModel m8507x(@NotNull HistoryMsgModel historyMsgModel) {
        String str;
        if (historyMsgModel.getMsgType() > 0) {
            long m8455f = m8513r().m8530a().m8455f();
            int msgType = historyMsgModel.getMsgType();
            if (msgType == 3) {
                SpeechInfoBody speechInfoBody = (SpeechInfoBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) SpeechInfoBody.class);
                historyMsgModel.setBodyParse(speechInfoBody);
                if (speechInfoBody.getUid() == m8455f) {
                    str = UIUtils.m8602p(R$string.message_type_talk, UIUtils.m8603o(R$string.is_me));
                } else {
                    int i = R$string.message_type_talk;
                    Object[] objArr = new Object[1];
                    objArr[0] = TextUtils.isEmpty(speechInfoBody.getName()) ? Long.valueOf(speechInfoBody.getUid()) : speechInfoBody.getName();
                    str = UIUtils.m8602p(i, objArr);
                }
            } else if (msgType == 15) {
                GroupNameChangeBody groupNameChangeBody = (GroupNameChangeBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) GroupNameChangeBody.class);
                historyMsgModel.setBodyParse(groupNameChangeBody);
                if (groupNameChangeBody.getAcc().equals(String.valueOf(m8455f))) {
                    str = UIUtils.m8602p(R$string.message_type_you_change_group_name_to, groupNameChangeBody.getGname());
                } else {
                    str = UIUtils.m8602p(R$string.message_type_someone_change_group_name_to, groupNameChangeBody.getName(), groupNameChangeBody.getGname());
                }
            } else if (msgType == 5) {
                StringBuilder sb = new StringBuilder();
                MemberChangeBody memberChangeBody = (MemberChangeBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) MemberChangeBody.class);
                historyMsgModel.setBodyParse(memberChangeBody);
                Iterator<MemberChangeBodyItem> it2 = memberChangeBody.getIds().iterator();
                while (it2.hasNext()) {
                    MemberChangeBodyItem next = it2.next();
                    if (next.getId() == m8455f) {
                        sb.append(UIUtils.m8603o(R$string.is_you));
                        sb.append("、");
                    } else {
                        sb.append(next.getName());
                        sb.append("、");
                    }
                }
                String sb2 = sb.toString();
                if (!TextUtils.isEmpty(sb2)) {
                    sb2 = sb2.substring(0, sb2.length() - 1);
                }
                if (memberChangeBody.getId() == m8455f) {
                    str = UIUtils.m8602p(R$string.message_type_me_invite_someone_to_group, sb2);
                } else if (UIUtils.m8603o(R$string.is_you).equals(sb2)) {
                    str = UIUtils.m8602p(R$string.message_type_other_invite_me_to_group, memberChangeBody.getName());
                } else {
                    str = UIUtils.m8602p(R$string.message_type_other_invite_someone_to_group, memberChangeBody.getName(), sb2);
                }
            } else if (msgType == 6) {
                StringBuilder sb3 = new StringBuilder();
                MemberChangeBody memberChangeBody2 = (MemberChangeBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) MemberChangeBody.class);
                historyMsgModel.setBodyParse(memberChangeBody2);
                if (memberChangeBody2.getIds() != null && memberChangeBody2.getIds().size() != 0) {
                    Iterator<MemberChangeBodyItem> it3 = memberChangeBody2.getIds().iterator();
                    while (it3.hasNext()) {
                        MemberChangeBodyItem next2 = it3.next();
                        if (next2.getId() == m8455f) {
                            sb3.append(UIUtils.m8603o(R$string.is_you));
                            sb3.append("、");
                        } else {
                            sb3.append(next2.getName());
                            sb3.append("、");
                        }
                    }
                    String sb4 = sb3.toString();
                    if (!TextUtils.isEmpty(sb4)) {
                        sb4 = sb4.substring(0, sb4.length() - 1);
                    }
                    if (!TextUtils.isEmpty(memberChangeBody2.getToken())) {
                        if (UIUtils.m8603o(R$string.is_you).equals(sb4)) {
                            str = UIUtils.m8602p(R$string.message_type_me_enter_group_by_code, memberChangeBody2.getToken());
                        } else {
                            str = UIUtils.m8602p(R$string.message_type_someone_enter_group_by_code, sb4, memberChangeBody2.getToken());
                        }
                    }
                }
            } else if (msgType == 7) {
                StringBuilder sb5 = new StringBuilder();
                MemberChangeBody memberChangeBody3 = (MemberChangeBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) MemberChangeBody.class);
                historyMsgModel.setBodyParse(memberChangeBody3);
                if (memberChangeBody3.getId() == m8455f) {
                    Iterator<MemberChangeBodyItem> it4 = memberChangeBody3.getIds().iterator();
                    while (it4.hasNext()) {
                        sb5.append(it4.next().getName());
                        sb5.append("、");
                    }
                    String sb6 = sb5.toString();
                    if (!TextUtils.isEmpty(sb6)) {
                        sb6 = sb6.substring(0, sb6.length() - 1);
                    }
                    str = UIUtils.m8602p(R$string.message_type_you_remove_someone_from_group, sb6);
                } else if (memberChangeBody3.getIds().size() == 1 && memberChangeBody3.getId() == 0) {
                    str = UIUtils.m8602p(R$string.message_type_someone_exit_group, memberChangeBody3.getIds().get(0).getName());
                } else {
                    Iterator<MemberChangeBodyItem> it5 = memberChangeBody3.getIds().iterator();
                    boolean z = false;
                    while (it5.hasNext()) {
                        MemberChangeBodyItem next3 = it5.next();
                        sb5.append(next3.getName());
                        sb5.append("、");
                        if (next3.getId() == m8455f) {
                            z = true;
                        }
                    }
                    if (z) {
                        str = UIUtils.m8603o(R$string.message_type_you_are_removed_by_owner);
                    } else {
                        String sb7 = sb5.toString();
                        if (!TextUtils.isEmpty(sb7)) {
                            sb7 = sb7.substring(0, sb7.length() - 1);
                        }
                        str = UIUtils.m8602p(R$string.message_type_someone_are_removed_by_owner, sb7);
                    }
                }
            } else if (msgType != 8) {
                switch (msgType) {
                    case HistoryMsgModel.MSG_TYPE_SPEECH_ACTION_ING /* 1010101 */:
                        SpeechActionBody speechActionBody = (SpeechActionBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) SpeechActionBody.class);
                        historyMsgModel.setBodyParse(speechActionBody);
                        if (speechActionBody.getUid() == m8455f) {
                            str = UIUtils.m8602p(R$string.message_type_is_speaking, UIUtils.m8603o(R$string.is_me));
                            break;
                        } else {
                            str = UIUtils.m8602p(R$string.message_type_is_speaking, speechActionBody.getName());
                            break;
                        }
                    case HistoryMsgModel.MSG_TYPE_SPEECH_ACTION_FINISH /* 1010102 */:
                        SpeechActionBody speechActionBody2 = (SpeechActionBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) SpeechActionBody.class);
                        historyMsgModel.setBodyParse(speechActionBody2);
                        if (speechActionBody2.getUid() == m8455f) {
                            str = UIUtils.m8602p(R$string.message_type_talk, UIUtils.m8603o(R$string.is_me));
                            break;
                        } else {
                            str = UIUtils.m8602p(R$string.message_type_talk, speechActionBody2.getName());
                            break;
                        }
                }
            } else {
                GroupTransBody groupTransBody = (GroupTransBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) GroupTransBody.class);
                historyMsgModel.setBodyParse(groupTransBody);
                if (groupTransBody.getNid() == m8455f) {
                    str = UIUtils.m8603o(R$string.message_type_you_are_become_owner);
                } else {
                    str = UIUtils.m8602p(R$string.message_type_someone_are_become_owner, groupTransBody.getNname());
                }
            }
            if (!TextUtils.isEmpty(str)) {
                historyMsgModel.setToWord(str);
            }
            return historyMsgModel;
        }
        str = null;
        if (!TextUtils.isEmpty(str)) {
        }
        return historyMsgModel;
    }

    /* renamed from: a */
    public AccountHelper m8530a() {
        return this.f16564a;
    }

    /* renamed from: b */
    public ExternalMsgHelper m8529b() {
        return this.f16569f;
    }

    /* renamed from: f */
    public GroupHelper m8525f() {
        return this.f16565b;
    }

    /* renamed from: g */
    public MediaHelper m8524g() {
        return this.f16566c;
    }

    /* renamed from: i */
    public RecentTalkHelper m8522i() {
        return this.f16570g;
    }

    /* renamed from: j */
    public ResultHelper m8521j() {
        return this.f16568e;
    }

    /* renamed from: k */
    public SessionHelper m8520k() {
        return this.f16567d;
    }

    /* renamed from: q */
    public void m8514q(Context context, String str) {
        DurationUtils.m6920b().m6917e("SlTalkHelper");
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("OkGo_SL");
        httpLoggingInterceptor.m8264h(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.m8265g(Level.INFO);
        builder.addInterceptor(httpLoggingInterceptor);
        builder.connectionPool(new ConnectionPool(32, 5L, TimeUnit.MINUTES));
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(60000L, timeUnit).readTimeout(60000L, timeUnit).writeTimeout(60000L, timeUnit);
        OkGo.m21114h().m21109m(builder.build());
        Account build = Account.build(new C4983a(this, context));
        DurationUtils.m6920b().m6919c("SlTalkHelper");
        Account.account().configAccountServer(null);
        Account.account().configAudioServer(null);
        DurationUtils.m6920b().m6916f("SlTalkHelper");
        PocSDKRunner.m6936d(C4980a.f16559a);
        PocSDKRunner.m6934f(C4982c.f16561a);
        PocSDKRunner.m6935e(C4981b.f16560a);
        Account.account().configAudioServer(str);
        m8515p(build);
    }
}
