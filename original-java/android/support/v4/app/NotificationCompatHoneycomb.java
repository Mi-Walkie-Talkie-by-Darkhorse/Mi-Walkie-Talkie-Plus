package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.RequiresApi;
import android.widget.RemoteViews;

@TargetApi(11)
@RequiresApi(11)
class NotificationCompatHoneycomb {
    NotificationCompatHoneycomb() {
    }

    static Notification add(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        Builder ongoing = new Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0);
        if ((notification.flags & 8) != 0) {
            z = true;
        } else {
            z = false;
        }
        Builder onlyAlertOnce = ongoing.setOnlyAlertOnce(z);
        if ((notification.flags & 16) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Builder deleteIntent = onlyAlertOnce.setAutoCancel(z2).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 128) == 0) {
            z3 = false;
        }
        return deleteIntent.setFullScreenIntent(pendingIntent2, z3).setLargeIcon(bitmap).setNumber(i).getNotification();
    }
}
