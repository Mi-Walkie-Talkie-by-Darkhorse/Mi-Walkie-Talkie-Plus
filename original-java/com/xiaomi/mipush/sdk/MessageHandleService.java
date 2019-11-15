package com.xiaomi.mipush.sdk;

import android.app.IntentService;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.concurrent.ConcurrentLinkedQueue;

public class MessageHandleService extends IntentService {
    private static ConcurrentLinkedQueue<a> a = new ConcurrentLinkedQueue<>();

    public static class a {
        private PushMessageReceiver a;
        private Intent b;

        public a(Intent intent, PushMessageReceiver pushMessageReceiver) {
            this.a = pushMessageReceiver;
            this.b = intent;
        }

        public PushMessageReceiver a() {
            return this.a;
        }

        public Intent b() {
            return this.b;
        }
    }

    public MessageHandleService() {
        super("MessageHandleThread");
    }

    protected static void a(Service service, Intent intent) {
        if (intent != null) {
            try {
                a aVar = (a) a.poll();
                if (aVar != null) {
                    PushMessageReceiver a2 = aVar.a();
                    Intent b = aVar.b();
                    switch (b.getIntExtra(PushMessageHelper.MESSAGE_TYPE, 1)) {
                        case 1:
                            a a3 = x.a((Context) service).a(b);
                            if (a3 == null) {
                                return;
                            }
                            if (a3 instanceof MiPushMessage) {
                                MiPushMessage miPushMessage = (MiPushMessage) a3;
                                if (!miPushMessage.isArrivedMessage()) {
                                    a2.onReceiveMessage(service, miPushMessage);
                                }
                                if (miPushMessage.getPassThrough() == 1) {
                                    a2.onReceivePassThroughMessage(service, miPushMessage);
                                    return;
                                } else if (miPushMessage.isNotified()) {
                                    a2.onNotificationMessageClicked(service, miPushMessage);
                                    return;
                                } else {
                                    a2.onNotificationMessageArrived(service, miPushMessage);
                                    return;
                                }
                            } else if (a3 instanceof MiPushCommandMessage) {
                                MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) a3;
                                a2.onCommandResult(service, miPushCommandMessage);
                                if (TextUtils.equals(miPushCommandMessage.getCommand(), MiPushClient.COMMAND_REGISTER)) {
                                    a2.onReceiveRegisterResult(service, miPushCommandMessage);
                                    return;
                                }
                                return;
                            } else {
                                return;
                            }
                        case 3:
                            MiPushCommandMessage miPushCommandMessage2 = (MiPushCommandMessage) b.getSerializableExtra(PushMessageHelper.KEY_COMMAND);
                            a2.onCommandResult(service, miPushCommandMessage2);
                            if (TextUtils.equals(miPushCommandMessage2.getCommand(), MiPushClient.COMMAND_REGISTER)) {
                                a2.onReceiveRegisterResult(service, miPushCommandMessage2);
                                return;
                            }
                            return;
                        case 4:
                            return;
                        default:
                            return;
                    }
                    b.a((Throwable) e);
                }
            } catch (RuntimeException e) {
                b.a((Throwable) e);
            }
        }
    }

    public static void addJob(a aVar) {
        if (aVar != null) {
            a.add(aVar);
        }
    }

    /* access modifiers changed from: protected */
    public void onHandleIntent(Intent intent) {
        a(this, intent);
    }
}
