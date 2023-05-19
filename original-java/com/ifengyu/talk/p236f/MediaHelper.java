package com.ifengyu.talk.p236f;

import com.ifengyu.library.utils.C4971k;
import com.ifengyu.talk.p238h.OnMediaListener;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.notice.event.HistoryAudioPlayEvent;
import com.shanlitech.p245et.notice.event.SpeakEvent;
import java.util.HashSet;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.talk.f.d0 */
/* loaded from: classes2.dex */
public class MediaHelper {

    /* renamed from: b */
    private static final String f16607b = "d0";

    /* renamed from: a */
    private final Set<OnMediaListener> f16608a = new HashSet();

    /* compiled from: MediaHelper.java */
    /* renamed from: com.ifengyu.talk.f.d0$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C4996a {

        /* renamed from: a */
        static final /* synthetic */ int[] f16609a;

        static {
            int[] iArr = new int[SpeakEvent.SpeakType.values().length];
            f16609a = iArr;
            try {
                iArr[SpeakEvent.SpeakType.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16609a[SpeakEvent.SpeakType.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16609a[SpeakEvent.SpeakType.STOPED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16609a[SpeakEvent.SpeakType.MEMBER_STARTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16609a[SpeakEvent.SpeakType.MEMBER_STOPED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16609a[SpeakEvent.SpeakType.START_PLAYING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16609a[SpeakEvent.SpeakType.STOP_PLAYING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public MediaHelper(Account account) {
        EventBus.m174c().m159r(this);
    }

    public void addListener(OnMediaListener onMediaListener) {
        if (onMediaListener != null) {
            this.f16608a.add(onMediaListener);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onHistoryAudioPlayEvent(HistoryAudioPlayEvent historyAudioPlayEvent) {
        String str = f16607b;
        C4971k.m8654f(str, "onHistoryAudioPlayEvent :" + historyAudioPlayEvent.toString());
        if (historyAudioPlayEvent.getStatus() == 0) {
            for (OnMediaListener onMediaListener : this.f16608a) {
                onMediaListener.mo8356i(historyAudioPlayEvent.getSID());
            }
        } else if (historyAudioPlayEvent.getStatus() == 1) {
            for (OnMediaListener onMediaListener2 : this.f16608a) {
                onMediaListener2.mo8359e(historyAudioPlayEvent.getSID());
            }
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onSpeakEvent(SpeakEvent speakEvent) {
        String str = f16607b;
        C4971k.m8654f(str, "onSpeakEvent :" + speakEvent.toString());
        switch (C4996a.f16609a[speakEvent.getSpeakType().ordinal()]) {
            case 1:
                for (OnMediaListener onMediaListener : this.f16608a) {
                    onMediaListener.mo8355l(speakEvent);
                }
                return;
            case 2:
                for (OnMediaListener onMediaListener2 : this.f16608a) {
                    onMediaListener2.mo8358f(speakEvent);
                }
                return;
            case 3:
                for (OnMediaListener onMediaListener3 : this.f16608a) {
                    onMediaListener3.mo8354m(speakEvent);
                }
                return;
            case 4:
                for (OnMediaListener onMediaListener4 : this.f16608a) {
                    onMediaListener4.mo8360d(speakEvent);
                }
                return;
            case 5:
                for (OnMediaListener onMediaListener5 : this.f16608a) {
                    onMediaListener5.mo8361c(speakEvent);
                }
                return;
            case 6:
                for (OnMediaListener onMediaListener6 : this.f16608a) {
                    onMediaListener6.mo8362a(speakEvent);
                }
                return;
            case 7:
                for (OnMediaListener onMediaListener7 : this.f16608a) {
                    onMediaListener7.mo8357h(speakEvent);
                }
                return;
            default:
                return;
        }
    }

    public void removeListener(OnMediaListener onMediaListener) {
        if (onMediaListener != null) {
            this.f16608a.remove(onMediaListener);
        }
    }
}
