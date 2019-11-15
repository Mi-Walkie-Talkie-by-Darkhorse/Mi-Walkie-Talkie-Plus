package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.app.RemoteInputCompatBase.RemoteInput;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(9)
@RestrictTo({Scope.LIBRARY_GROUP})
@TargetApi(9)
public class NotificationCompatBase {
    private static Method sSetLatestEventInfo;

    public static abstract class Action {

        public interface Factory {
            Action build(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z);

            Action[] newArray(int i);
        }

        public abstract PendingIntent getActionIntent();

        public abstract boolean getAllowGeneratedReplies();

        public abstract Bundle getExtras();

        public abstract int getIcon();

        public abstract RemoteInput[] getRemoteInputs();

        public abstract CharSequence getTitle();
    }

    public static abstract class UnreadConversation {

        public interface Factory {
            UnreadConversation build(String[] strArr, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j);
        }

        /* access modifiers changed from: 0000 */
        public abstract long getLatestTimestamp();

        /* access modifiers changed from: 0000 */
        public abstract String[] getMessages();

        /* access modifiers changed from: 0000 */
        public abstract String getParticipant();

        /* access modifiers changed from: 0000 */
        public abstract String[] getParticipants();

        /* access modifiers changed from: 0000 */
        public abstract PendingIntent getReadPendingIntent();

        /* access modifiers changed from: 0000 */
        public abstract RemoteInput getRemoteInput();

        /* access modifiers changed from: 0000 */
        public abstract PendingIntent getReplyPendingIntent();
    }

    public static Notification add(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        if (sSetLatestEventInfo == null) {
            try {
                sSetLatestEventInfo = Notification.class.getMethod("setLatestEventInfo", new Class[]{Context.class, CharSequence.class, CharSequence.class, PendingIntent.class});
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
        }
        try {
            sSetLatestEventInfo.invoke(notification, new Object[]{context, charSequence, charSequence2, pendingIntent});
            notification.fullScreenIntent = pendingIntent2;
            return notification;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }
}
