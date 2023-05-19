package com.ifengyu.talk.p236f;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.EncoderUtil;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.database.TalkDatabase;
import com.ifengyu.talk.http.entity.SpeechMsg;
import com.ifengyu.talk.message.ExternalMsgType;
import com.ifengyu.talk.message.msgBody.SpeechInfoBody;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.OperatorMsgModel;
import com.ifengyu.talk.models.OperatorMsgUser;
import com.ifengyu.talk.p237g.TalkServiceClient;
import com.ifengyu.talk.p238h.OnExternalMsgListener;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.notice.event.ExternalMsgEvent;
import com.shanlitech.p245et.notice.event.MessageEvent;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.talk.f.b0 */
/* loaded from: classes2.dex */
public class ExternalMsgHelper {

    /* renamed from: b */
    private static final String f16599b = "b0";

    /* renamed from: a */
    private final Set<OnExternalMsgListener> f16600a = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExternalMsgHelper.java */
    /* renamed from: com.ifengyu.talk.f.b0$a */
    /* loaded from: classes2.dex */
    public class C4992a extends ErrorConsumer {
        C4992a(ExternalMsgHelper externalMsgHelper) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4971k.m8657c(ExternalMsgHelper.f16599b, "getSpeechMsg fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExternalMsgHelper.java */
    /* renamed from: com.ifengyu.talk.f.b0$b */
    /* loaded from: classes2.dex */
    public class C4993b extends DownloadListener2 {
        C4993b(ExternalMsgHelper externalMsgHelper) {
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            String str = ExternalMsgHelper.f16599b;
            C4971k.m8659a(str, "taskEnd->task: " + downloadTask + ", cause: " + endCause);
            if (endCause != EndCause.COMPLETED || downloadTask.getFile() == null) {
                C4971k.m8657c(ExternalMsgHelper.f16599b, "download speech failed");
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            String str = ExternalMsgHelper.f16599b;
            C4971k.m8659a(str, "taskStart->task: " + downloadTask);
        }
    }

    public ExternalMsgHelper(Account account) {
        EventBus.m174c().m159r(this);
    }

    /* renamed from: b */
    private void m8446b(SpeechInfoBody speechInfoBody) {
        long sid = speechInfoBody.getSid();
        long gid = speechInfoBody.getGid();
        String speechUrl = speechInfoBody.getSpeechUrl();
        new DownloadTask.Builder(speechUrl, SlTalkClient.f16562h + gid + File.separator, String.valueOf(sid)).setAutoCallbackToUIThread(true).build().enqueue(new C4993b(this));
    }

    /* renamed from: c */
    private HistoryMsgModel m8445c(ExternalMsgEvent externalMsgEvent) {
        HistoryMsgModel historyMsgModel;
        Group m8429c;
        String type = externalMsgEvent.getType();
        type.hashCode();
        char c = 65535;
        switch (type.hashCode()) {
            case -811043161:
                if (type.equals(ExternalMsgType.ENTER_GROUP)) {
                    c = 0;
                    break;
                }
                break;
            case -590429399:
                if (type.equals(ExternalMsgType.MOD_ENTER_GROUP)) {
                    c = 1;
                    break;
                }
                break;
            case 25200752:
                if (type.equals(ExternalMsgType.MOD_ENTER_GROUP_TOKEN)) {
                    c = 2;
                    break;
                }
                break;
            case 546515930:
                if (type.equals(ExternalMsgType.CHANGE_GROUP_NAME)) {
                    c = 3;
                    break;
                }
                break;
            case 952193970:
                if (type.equals(ExternalMsgType.ENTER_GROUP_TOKEN)) {
                    c = 4;
                    break;
                }
                break;
            case 1301820297:
                if (type.equals(ExternalMsgType.GROUP_TRANS)) {
                    c = 5;
                    break;
                }
                break;
            case 1586680557:
                if (type.equals(ExternalMsgType.SPEECH_INFO)) {
                    c = 6;
                    break;
                }
                break;
            case 1784671632:
                if (type.equals(ExternalMsgType.QUIT_GROUP)) {
                    c = 7;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
                HistoryMsgModel m8508w = SlTalkClient.m8508w(externalMsgEvent.getData());
                if (m8508w != null && !TextUtils.isEmpty(m8508w.getToWord())) {
                    SlTalkClient.m8513r().m8522i().m8419I(m8508w, externalMsgEvent.getData());
                }
                historyMsgModel = m8508w;
                break;
            case 6:
                historyMsgModel = SlTalkClient.m8508w(externalMsgEvent.getData());
                if (historyMsgModel != null && historyMsgModel.getBodyParse() != null) {
                    SpeechInfoBody speechInfoBody = (SpeechInfoBody) historyMsgModel.getBodyParse();
                    if (speechInfoBody.getGid() > 0 && speechInfoBody.getSid() > 0 && (m8429c = SlTalkClient.m8513r().m8525f().m8429c(speechInfoBody.getGid())) != null && m8429c.getType() == Group.GROUP_NORMAL) {
                        if (speechInfoBody.getSpeechUrl() != null) {
                            m8446b(speechInfoBody);
                            break;
                        } else {
                            m8432p(speechInfoBody.getGid(), speechInfoBody.getSid());
                            break;
                        }
                    }
                }
                break;
            default:
                historyMsgModel = null;
                break;
        }
        if (historyMsgModel != null) {
            if (TalkDatabase.m8505D().mo8502C().mo8478b(historyMsgModel.getId()) != null) {
                C4971k.m8654f(f16599b, "DB had saved this External Msg");
                return null;
            }
            TalkDatabase.m8505D().mo8502C().mo8475e(historyMsgModel);
        }
        return historyMsgModel;
    }

    /* renamed from: d */
    private OperatorMsgModel m8444d(ExternalMsgEvent externalMsgEvent) {
        OperatorMsgUser[] failList;
        OperatorMsgUser[] succList;
        OperatorMsgModel operatorMsgModel = (OperatorMsgModel) new Gson().fromJson(externalMsgEvent.getData(), (Class<Object>) OperatorMsgModel.class);
        if (TextUtils.isEmpty(operatorMsgModel.getOprName())) {
            return null;
        }
        if (operatorMsgModel.getSuccList() != null && operatorMsgModel.getSuccList().length > 0) {
            ArrayList arrayList = new ArrayList();
            for (OperatorMsgUser operatorMsgUser : operatorMsgModel.getSuccList()) {
                if (operatorMsgUser.getAcc() != null && !operatorMsgUser.getAcc().equals("0") && !arrayList.contains(operatorMsgUser)) {
                    arrayList.add(operatorMsgUser);
                }
            }
            operatorMsgModel.setSuccList((OperatorMsgUser[]) arrayList.toArray(new OperatorMsgUser[0]));
        }
        if (operatorMsgModel.getFailList() != null && operatorMsgModel.getFailList().length > 0) {
            ArrayList arrayList2 = new ArrayList();
            for (OperatorMsgUser operatorMsgUser2 : operatorMsgModel.getFailList()) {
                if (operatorMsgUser2.getAcc() != null && !operatorMsgUser2.getAcc().equals("0") && !arrayList2.contains(operatorMsgUser2)) {
                    arrayList2.add(operatorMsgUser2);
                }
            }
            operatorMsgModel.setFailList((OperatorMsgUser[]) arrayList2.toArray(new OperatorMsgUser[0]));
        }
        return operatorMsgModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ ObservableSource m8442f(ExternalMsgEvent externalMsgEvent) throws Exception {
        OperatorMsgModel m8444d = m8444d(externalMsgEvent);
        Objects.requireNonNull(m8444d);
        return Observable.just(m8444d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m8440h(OperatorMsgModel operatorMsgModel) throws Exception {
        C4971k.m8654f(f16599b, "handleOperatorExternalMsg success");
        for (OnExternalMsgListener onExternalMsgListener : this.f16600a) {
            onExternalMsgListener.mo8371K(operatorMsgModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ void m8439i(Throwable th) throws Exception {
        C4971k.m8657c(f16599b, "handleOperatorExternalMsg fail");
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ ObservableSource m8437k(ExternalMsgEvent externalMsgEvent) throws Exception {
        HistoryMsgModel m8445c = m8445c(externalMsgEvent);
        Objects.requireNonNull(m8445c);
        return Observable.just(m8445c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m8435m(HistoryMsgModel historyMsgModel) throws Exception {
        C4971k.m8654f(f16599b, "handleGroupHistoryExternalMsg success");
        for (OnExternalMsgListener onExternalMsgListener : this.f16600a) {
            onExternalMsgListener.mo8369t(historyMsgModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static /* synthetic */ void m8434n(Throwable th) throws Exception {
        C4971k.m8657c(f16599b, "handleGroupHistoryExternalMsg fail");
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static /* synthetic */ void m8433o(long j, long j2, SpeechMsg speechMsg) throws Exception {
        C4971k.m8654f(f16599b, "getSpeechMsg success");
        byte[] m8674b = EncoderUtil.m8674b(speechMsg.getBody());
        C4970j.m8660j(m8674b, SlTalkClient.f16562h + j + File.separator, String.valueOf(j2));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: p */
    private void m8432p(final long j, final long j2) {
        TalkServiceClient.m8374a().m8377a(j2).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ExternalMsgHelper.m8433o(j, j2, (SpeechMsg) obj);
            }
        }, new C4992a(this));
    }

    public void addListener(OnExternalMsgListener onExternalMsgListener) {
        if (onExternalMsgListener != null) {
            this.f16600a.add(onExternalMsgListener);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    @SuppressLint({"CheckResult"})
    public void onExternalMsgEvent(final ExternalMsgEvent externalMsgEvent) {
        String str = f16599b;
        C4971k.m8654f(str, "onExternalMsgEvent:" + externalMsgEvent.toString());
        if (TextUtils.isEmpty(externalMsgEvent.getType()) || TextUtils.isEmpty(externalMsgEvent.getData()) || ExternalMsgType.GROUP_SESSION.equals(externalMsgEvent.getType())) {
            return;
        }
        if (ExternalMsgType.MODE_OPERATOR.equals(externalMsgEvent.getType())) {
            Observable.defer(new Callable() { // from class: com.ifengyu.talk.f.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return ExternalMsgHelper.this.m8442f(externalMsgEvent);
                }
            }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.e
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ExternalMsgHelper.this.m8440h((OperatorMsgModel) obj);
                }
            }, C5000f.f16616a);
        } else {
            Observable.defer(new Callable() { // from class: com.ifengyu.talk.f.a
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return ExternalMsgHelper.this.m8437k(externalMsgEvent);
                }
            }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.c
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ExternalMsgHelper.this.m8435m((HistoryMsgModel) obj);
                }
            }, C4995d.f16606a);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        String str = f16599b;
        C4971k.m8654f(str, "onMessageEvent:" + messageEvent.toString());
        if (messageEvent.getCode() == -10) {
            EventBus.m174c().m164m(new SimpleEvent(3));
        } else if (messageEvent.getCode() == -40 || messageEvent.getCode() == -45) {
            for (OnExternalMsgListener onExternalMsgListener : this.f16600a) {
                onExternalMsgListener.mo8370b();
            }
        }
    }

    public void removeListener(OnExternalMsgListener onExternalMsgListener) {
        if (onExternalMsgListener != null) {
            this.f16600a.remove(onExternalMsgListener);
        }
    }
}
