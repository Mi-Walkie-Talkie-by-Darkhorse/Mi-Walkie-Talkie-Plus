package com.mi.milinkforgame.sdk.client;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.internal.MiLinkServiceHost;
import com.mi.milinkforgame.sdk.interaction.IEventCallback;
import com.mi.milinkforgame.sdk.interaction.IPacketCallback;
import com.mi.milinkforgame.sdk.session.MnsPacketDispatcher;
import com.mi.milinkforgame.sdk.session.ResponseListener;
import com.mi.milinkforgame.sdk.session.SessionManager;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class MiLinkClient extends MiLinkServiceHost {
    /* access modifiers changed from: private */
    public static final String TAG = MiLinkClient.class.getSimpleName();

    private interface MessageFuture<V> {
        boolean cancel(boolean z);

        V getResult(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, CancellationException, TimeoutException;

        boolean isCancelled();

        boolean isDone();
    }

    private abstract class MessageTask extends FutureTask<PacketData> implements MessageFuture<PacketData> {
        public abstract void doSendWork();

        public MessageTask() {
            super(new Callable<PacketData>() {
                public PacketData call() throws Exception {
                    throw new IllegalStateException("this should never be called");
                }
            });
        }

        public final MessageFuture<PacketData> start() {
            doSendWork();
            return this;
        }

        private void ensureNotOnMainThread() {
            Looper myLooper = Looper.myLooper();
            if (myLooper != null && myLooper == MiLinkClient.this.context.getMainLooper()) {
                IllegalStateException illegalStateException = new IllegalStateException("calling this from your main thread can lead to deadlock");
                ClientLog.e(MiLinkClient.TAG, "calling this from your main thread can lead to deadlock and/or ANRs", illegalStateException);
                if (MiLinkClient.this.context.getApplicationInfo().targetSdkVersion >= 8) {
                    throw illegalStateException;
                }
            }
        }

        private PacketData internalGetResult(Long l, TimeUnit timeUnit) throws InterruptedException, ExecutionException, CancellationException, TimeoutException {
            PacketData packetData;
            if (!isDone()) {
                ensureNotOnMainThread();
            }
            if (l == null) {
                try {
                    packetData = (PacketData) get();
                    cancel(true);
                } catch (CancellationException e) {
                    throw e;
                } catch (TimeoutException e2) {
                    throw e2;
                } catch (InterruptedException e3) {
                    throw e3;
                } catch (ExecutionException e4) {
                    throw e4;
                } catch (Throwable th) {
                    cancel(true);
                    throw th;
                }
            } else {
                packetData = (PacketData) get(l.longValue(), timeUnit);
                cancel(true);
            }
            return packetData;
        }

        public PacketData getResult(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, CancellationException, TimeoutException {
            return internalGetResult(Long.valueOf(j), timeUnit);
        }
    }

    public MiLinkClient(Context context, MiLinkObserver miLinkObserver) {
        super(context, miLinkObserver);
    }

    public void init(IPacketCallback iPacketCallback, IEventCallback iEventCallback, String str, String str2, String str3, String str4, boolean z) {
        SessionManager.getInstance().initApp();
        SessionManager.getInstance().setInitByAppLogin(z);
        MnsPacketDispatcher.getInstance().setCallback(iPacketCallback);
        SessionManager.getInstance().setCallback(iEventCallback);
        MiAccountManager.getInstance().login(str, str2, str3, str4, true);
    }

    public void logoff() {
        ClientLog.v(TAG, "logoff");
        SessionManager.getInstance().logoff();
    }

    public void sendAsync(PacketData packetData, int i, ResponseListener responseListener) {
        if (packetData == null) {
            throw new IllegalArgumentException("Ary you kidding me ? packet is null");
        } else if (TextUtils.isEmpty(packetData.getCommand())) {
            throw new IllegalArgumentException("Packet's command is null");
        } else {
            SessionManager.getInstance().sendData(packetData, i, responseListener);
        }
    }

    public void sendAsync(PacketData packetData, int i) {
        sendAsync(packetData, i, null);
    }

    public void sendAsync(PacketData packetData) {
        sendAsync(packetData, 0, null);
    }

    public PacketData sendSync(final PacketData packetData, final int i) {
        if (packetData == null) {
            throw new IllegalArgumentException("Ary you kidding me ? packet is null");
        } else if (TextUtils.isEmpty(packetData.getCommand())) {
            throw new IllegalArgumentException("Packet's command is null");
        } else {
            try {
                return (PacketData) new MessageTask() {
                    public void doSendWork() {
                        MiLinkClient.this.sendAsync(packetData, i, new ResponseListener() {
                            public void onDataSendSuccess(int i, PacketData packetData) {
                                if (!AnonymousClass1.this.isCancelled() && !AnonymousClass1.this.isDone()) {
                                    AnonymousClass1.this.set(packetData);
                                }
                            }

                            public void onDataSendFailed(int i, String str) {
                                if (!AnonymousClass1.this.isCancelled() && !AnonymousClass1.this.isDone()) {
                                    AnonymousClass1.this.setException(new MiLinkException(i, str));
                                }
                            }
                        });
                    }
                }.start().getResult((long) (i + 5000), TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                ClientLog.e(TAG, "task InterruptedException", e);
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (cause == null || !(cause instanceof MiLinkException)) {
                    ClientLog.e(TAG, "task ExecutionException", e2);
                } else {
                    ClientLog.e(TAG, "", cause);
                }
            } catch (CancellationException e3) {
                ClientLog.e(TAG, "task CancellationException", e3);
            } catch (TimeoutException e4) {
                ClientLog.e(TAG, "task TimeoutException, detailName=" + e4.getClass().getName());
            }
        }
        return null;
    }
}
