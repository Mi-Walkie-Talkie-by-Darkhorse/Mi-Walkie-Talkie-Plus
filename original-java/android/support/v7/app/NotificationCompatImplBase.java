package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.RequiresApi;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationCompatBase.Action;
import android.support.v7.appcompat.R;
import android.widget.RemoteViews;
import java.util.List;

@TargetApi(9)
@RequiresApi(9)
class NotificationCompatImplBase {
    private static final int MAX_ACTION_BUTTONS = 3;
    static final int MAX_MEDIA_BUTTONS = 5;
    static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;

    NotificationCompatImplBase() {
    }

    @TargetApi(11)
    @RequiresApi(11)
    public static <T extends Action> RemoteViews overrideContentViewMedia(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, List<T> list, int[] iArr, boolean z2, PendingIntent pendingIntent, boolean z3) {
        RemoteViews generateContentViewMedia = generateContentViewMedia(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, i2, list, iArr, z2, pendingIntent, z3);
        notificationBuilderWithBuilderAccessor.getBuilder().setContent(generateContentViewMedia);
        if (z2) {
            notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
        }
        return generateContentViewMedia;
    }

    @TargetApi(11)
    @RequiresApi(11)
    private static <T extends Action> RemoteViews generateContentViewMedia(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, List<T> list, int[] iArr, boolean z2, PendingIntent pendingIntent, boolean z3) {
        int min;
        RemoteViews applyStandardTemplate = applyStandardTemplate(context, charSequence, charSequence2, charSequence3, i, 0, bitmap, charSequence4, z, j, i2, 0, z3 ? R.layout.notification_template_media_custom : R.layout.notification_template_media, true);
        int size = list.size();
        if (iArr == null) {
            min = 0;
        } else {
            min = Math.min(iArr.length, 3);
        }
        applyStandardTemplate.removeAllViews(R.id.media_actions);
        if (min > 0) {
            for (int i3 = 0; i3 < min; i3++) {
                if (i3 >= size) {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[]{Integer.valueOf(i3), Integer.valueOf(size - 1)}));
                }
                applyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton(context, (Action) list.get(iArr[i3])));
            }
        }
        if (z2) {
            applyStandardTemplate.setViewVisibility(R.id.end_padder, 8);
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 0);
            applyStandardTemplate.setOnClickPendingIntent(R.id.cancel_action, pendingIntent);
            applyStandardTemplate.setInt(R.id.cancel_action, "setAlpha", context.getResources().getInteger(R.integer.cancel_button_image_alpha));
        } else {
            applyStandardTemplate.setViewVisibility(R.id.end_padder, 0);
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
        }
        return applyStandardTemplate;
    }

    @TargetApi(16)
    @RequiresApi(16)
    public static <T extends Action> void overrideMediaBigContentView(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, int i3, List<T> list, boolean z2, PendingIntent pendingIntent, boolean z3) {
        notification.bigContentView = generateMediaBigView(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, i2, i3, list, z2, pendingIntent, z3);
        if (z2) {
            notification.flags |= 2;
        }
    }

    @TargetApi(11)
    @RequiresApi(11)
    public static <T extends Action> RemoteViews generateMediaBigView(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, int i3, List<T> list, boolean z2, PendingIntent pendingIntent, boolean z3) {
        int min = Math.min(list.size(), 5);
        RemoteViews applyStandardTemplate = applyStandardTemplate(context, charSequence, charSequence2, charSequence3, i, 0, bitmap, charSequence4, z, j, i2, i3, getBigMediaLayoutResource(z3, min), false);
        applyStandardTemplate.removeAllViews(R.id.media_actions);
        if (min > 0) {
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 >= min) {
                    break;
                }
                applyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton(context, (Action) list.get(i5)));
                i4 = i5 + 1;
            }
        }
        if (z2) {
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 0);
            applyStandardTemplate.setInt(R.id.cancel_action, "setAlpha", context.getResources().getInteger(R.integer.cancel_button_image_alpha));
            applyStandardTemplate.setOnClickPendingIntent(R.id.cancel_action, pendingIntent);
        } else {
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
        }
        return applyStandardTemplate;
    }

    @TargetApi(11)
    @RequiresApi(11)
    private static RemoteViews generateMediaActionButton(Context context, Action action) {
        boolean z = action.getActionIntent() == null;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.notification_media_action);
        remoteViews.setImageViewResource(R.id.action0, action.getIcon());
        if (!z) {
            remoteViews.setOnClickPendingIntent(R.id.action0, action.getActionIntent());
        }
        if (VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R.id.action0, action.getTitle());
        }
        return remoteViews;
    }

    @TargetApi(11)
    @RequiresApi(11)
    private static int getBigMediaLayoutResource(boolean z, int i) {
        return i <= 3 ? z ? R.layout.notification_template_big_media_narrow_custom : R.layout.notification_template_big_media_narrow : z ? R.layout.notification_template_big_media_custom : R.layout.notification_template_big_media;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.widget.RemoteViews applyStandardTemplateWithActions(android.content.Context r7, java.lang.CharSequence r8, java.lang.CharSequence r9, java.lang.CharSequence r10, int r11, int r12, android.graphics.Bitmap r13, java.lang.CharSequence r14, boolean r15, long r16, int r18, int r19, int r20, boolean r21, java.util.ArrayList<android.support.v4.app.NotificationCompat.Action> r22) {
        /*
            android.widget.RemoteViews r5 = applyStandardTemplate(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r18, r19, r20, r21)
            int r1 = android.support.v7.appcompat.R.id.actions
            r5.removeAllViews(r1)
            r2 = 0
            if (r22 == 0) goto L_0x0045
            int r1 = r22.size()
            if (r1 <= 0) goto L_0x0045
            r3 = 1
            r2 = 3
            if (r1 <= r2) goto L_0x0043
            r1 = 3
            r2 = r1
        L_0x0018:
            r1 = 0
            r4 = r1
        L_0x001a:
            if (r4 >= r2) goto L_0x0031
            r0 = r22
            java.lang.Object r1 = r0.get(r4)
            android.support.v4.app.NotificationCompat$Action r1 = (android.support.v4.app.NotificationCompat.Action) r1
            android.widget.RemoteViews r1 = generateActionButton(r7, r1)
            int r6 = android.support.v7.appcompat.R.id.actions
            r5.addView(r6, r1)
            int r1 = r4 + 1
            r4 = r1
            goto L_0x001a
        L_0x0031:
            r1 = r3
        L_0x0032:
            if (r1 == 0) goto L_0x0040
            r1 = 0
        L_0x0035:
            int r2 = android.support.v7.appcompat.R.id.actions
            r5.setViewVisibility(r2, r1)
            int r2 = android.support.v7.appcompat.R.id.action_divider
            r5.setViewVisibility(r2, r1)
            return r5
        L_0x0040:
            r1 = 8
            goto L_0x0035
        L_0x0043:
            r2 = r1
            goto L_0x0018
        L_0x0045:
            r1 = r2
            goto L_0x0032
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.NotificationCompatImplBase.applyStandardTemplateWithActions(android.content.Context, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, int, android.graphics.Bitmap, java.lang.CharSequence, boolean, long, int, int, int, boolean, java.util.ArrayList):android.widget.RemoteViews");
    }

    private static RemoteViews generateActionButton(Context context, NotificationCompat.Action action) {
        int actionLayoutResource;
        boolean z = action.actionIntent == null;
        String packageName = context.getPackageName();
        if (z) {
            actionLayoutResource = getActionTombstoneLayoutResource();
        } else {
            actionLayoutResource = getActionLayoutResource();
        }
        RemoteViews remoteViews = new RemoteViews(packageName, actionLayoutResource);
        remoteViews.setImageViewBitmap(R.id.action_image, createColoredBitmap(context, action.getIcon(), context.getResources().getColor(R.color.notification_action_color_filter)));
        remoteViews.setTextViewText(R.id.action_text, action.title);
        if (!z) {
            remoteViews.setOnClickPendingIntent(R.id.action_container, action.actionIntent);
        }
        if (VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R.id.action_container, action.title);
        }
        return remoteViews;
    }

    private static Bitmap createColoredBitmap(Context context, int i, int i2) {
        return createColoredBitmap(context, i, i2, 0);
    }

    private static Bitmap createColoredBitmap(Context context, int i, int i2, int i3) {
        Drawable drawable = context.getResources().getDrawable(i);
        int i4 = i3 == 0 ? drawable.getIntrinsicWidth() : i3;
        if (i3 == 0) {
            i3 = drawable.getIntrinsicHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(i4, i3, Config.ARGB_8888);
        drawable.setBounds(0, 0, i4, i3);
        if (i2 != 0) {
            drawable.mutate().setColorFilter(new PorterDuffColorFilter(i2, Mode.SRC_IN));
        }
        drawable.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    private static int getActionLayoutResource() {
        return R.layout.notification_action;
    }

    private static int getActionTombstoneLayoutResource() {
        return R.layout.notification_action_tombstone;
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0119  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x01e5  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01e9  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x01ed  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.widget.RemoteViews applyStandardTemplate(android.content.Context r13, java.lang.CharSequence r14, java.lang.CharSequence r15, java.lang.CharSequence r16, int r17, int r18, android.graphics.Bitmap r19, java.lang.CharSequence r20, boolean r21, long r22, int r24, int r25, int r26, boolean r27) {
        /*
            android.content.res.Resources r6 = r13.getResources()
            android.widget.RemoteViews r2 = new android.widget.RemoteViews
            java.lang.String r3 = r13.getPackageName()
            r0 = r26
            r2.<init>(r3, r0)
            r4 = 0
            r5 = 0
            r3 = -1
            r0 = r24
            if (r0 >= r3) goto L_0x011e
            r3 = 1
        L_0x0017:
            int r7 = android.os.Build.VERSION.SDK_INT
            r8 = 16
            if (r7 < r8) goto L_0x0037
            int r7 = android.os.Build.VERSION.SDK_INT
            r8 = 21
            if (r7 >= r8) goto L_0x0037
            if (r3 == 0) goto L_0x0121
            int r3 = android.support.v7.appcompat.R.id.notification_background
            java.lang.String r7 = "setBackgroundResource"
            int r8 = android.support.v7.appcompat.R.drawable.notification_bg_low
            r2.setInt(r3, r7, r8)
            int r3 = android.support.v7.appcompat.R.id.icon
            java.lang.String r7 = "setBackgroundResource"
            int r8 = android.support.v7.appcompat.R.drawable.notification_template_icon_low_bg
            r2.setInt(r3, r7, r8)
        L_0x0037:
            if (r19 == 0) goto L_0x014c
            int r3 = android.os.Build.VERSION.SDK_INT
            r7 = 16
            if (r3 < r7) goto L_0x0135
            int r3 = android.support.v7.appcompat.R.id.icon
            r7 = 0
            r2.setViewVisibility(r3, r7)
            int r3 = android.support.v7.appcompat.R.id.icon
            r0 = r19
            r2.setImageViewBitmap(r3, r0)
        L_0x004c:
            if (r18 == 0) goto L_0x0077
            int r3 = android.support.v7.appcompat.R.dimen.notification_right_icon_size
            int r3 = r6.getDimensionPixelSize(r3)
            int r7 = android.support.v7.appcompat.R.dimen.notification_small_icon_background_padding
            int r7 = r6.getDimensionPixelSize(r7)
            int r7 = r7 * 2
            int r7 = r3 - r7
            int r8 = android.os.Build.VERSION.SDK_INT
            r9 = 21
            if (r8 < r9) goto L_0x013e
            r0 = r18
            r1 = r25
            android.graphics.Bitmap r3 = createIconWithBackground(r13, r0, r3, r7, r1)
            int r7 = android.support.v7.appcompat.R.id.right_icon
            r2.setImageViewBitmap(r7, r3)
        L_0x0071:
            int r3 = android.support.v7.appcompat.R.id.right_icon
            r7 = 0
            r2.setViewVisibility(r3, r7)
        L_0x0077:
            if (r14 == 0) goto L_0x007e
            int r3 = android.support.v7.appcompat.R.id.title
            r2.setTextViewText(r3, r14)
        L_0x007e:
            if (r15 == 0) goto L_0x01f0
            int r3 = android.support.v7.appcompat.R.id.text
            r2.setTextViewText(r3, r15)
            r3 = 1
        L_0x0086:
            int r4 = android.os.Build.VERSION.SDK_INT
            r7 = 21
            if (r4 >= r7) goto L_0x018a
            if (r19 == 0) goto L_0x018a
            r8 = 1
        L_0x008f:
            if (r16 == 0) goto L_0x018d
            int r3 = android.support.v7.appcompat.R.id.info
            r0 = r16
            r2.setTextViewText(r3, r0)
            int r3 = android.support.v7.appcompat.R.id.info
            r4 = 0
            r2.setViewVisibility(r3, r4)
            r3 = 1
            r8 = 1
            r9 = r3
        L_0x00a1:
            if (r20 == 0) goto L_0x01d1
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 16
            if (r3 < r4) goto L_0x01d1
            int r3 = android.support.v7.appcompat.R.id.text
            r0 = r20
            r2.setTextViewText(r3, r0)
            if (r15 == 0) goto L_0x01ca
            int r3 = android.support.v7.appcompat.R.id.text2
            r2.setTextViewText(r3, r15)
            int r3 = android.support.v7.appcompat.R.id.text2
            r4 = 0
            r2.setViewVisibility(r3, r4)
            r3 = 1
        L_0x00be:
            if (r3 == 0) goto L_0x00de
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 16
            if (r3 < r4) goto L_0x00de
            if (r27 == 0) goto L_0x00d5
            int r3 = android.support.v7.appcompat.R.dimen.notification_subtext_size
            int r3 = r6.getDimensionPixelSize(r3)
            float r3 = (float) r3
            int r4 = android.support.v7.appcompat.R.id.text
            r5 = 0
            r2.setTextViewTextSize(r4, r5, r3)
        L_0x00d5:
            int r3 = android.support.v7.appcompat.R.id.line1
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r2.setViewPadding(r3, r4, r5, r6, r7)
        L_0x00de:
            r4 = 0
            int r3 = (r22 > r4 ? 1 : (r22 == r4 ? 0 : -1))
            if (r3 == 0) goto L_0x01ed
            if (r21 == 0) goto L_0x01d4
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 16
            if (r3 < r4) goto L_0x01d4
            int r3 = android.support.v7.appcompat.R.id.chronometer
            r4 = 0
            r2.setViewVisibility(r3, r4)
            int r3 = android.support.v7.appcompat.R.id.chronometer
            java.lang.String r4 = "setBase"
            long r6 = android.os.SystemClock.elapsedRealtime()
            long r10 = java.lang.System.currentTimeMillis()
            long r6 = r6 - r10
            long r6 = r6 + r22
            r2.setLong(r3, r4, r6)
            int r3 = android.support.v7.appcompat.R.id.chronometer
            java.lang.String r4 = "setStarted"
            r5 = 1
            r2.setBoolean(r3, r4, r5)
        L_0x010c:
            r3 = 1
        L_0x010d:
            int r4 = android.support.v7.appcompat.R.id.right_side
            if (r3 == 0) goto L_0x01e5
            r3 = 0
        L_0x0112:
            r2.setViewVisibility(r4, r3)
            int r4 = android.support.v7.appcompat.R.id.line3
            if (r9 == 0) goto L_0x01e9
            r3 = 0
        L_0x011a:
            r2.setViewVisibility(r4, r3)
            return r2
        L_0x011e:
            r3 = 0
            goto L_0x0017
        L_0x0121:
            int r3 = android.support.v7.appcompat.R.id.notification_background
            java.lang.String r7 = "setBackgroundResource"
            int r8 = android.support.v7.appcompat.R.drawable.notification_bg
            r2.setInt(r3, r7, r8)
            int r3 = android.support.v7.appcompat.R.id.icon
            java.lang.String r7 = "setBackgroundResource"
            int r8 = android.support.v7.appcompat.R.drawable.notification_template_icon_bg
            r2.setInt(r3, r7, r8)
            goto L_0x0037
        L_0x0135:
            int r3 = android.support.v7.appcompat.R.id.icon
            r7 = 8
            r2.setViewVisibility(r3, r7)
            goto L_0x004c
        L_0x013e:
            int r3 = android.support.v7.appcompat.R.id.right_icon
            r7 = -1
            r0 = r18
            android.graphics.Bitmap r7 = createColoredBitmap(r13, r0, r7)
            r2.setImageViewBitmap(r3, r7)
            goto L_0x0071
        L_0x014c:
            if (r18 == 0) goto L_0x0077
            int r3 = android.support.v7.appcompat.R.id.icon
            r7 = 0
            r2.setViewVisibility(r3, r7)
            int r3 = android.os.Build.VERSION.SDK_INT
            r7 = 21
            if (r3 < r7) goto L_0x017c
            int r3 = android.support.v7.appcompat.R.dimen.notification_large_icon_width
            int r3 = r6.getDimensionPixelSize(r3)
            int r7 = android.support.v7.appcompat.R.dimen.notification_big_circle_margin
            int r7 = r6.getDimensionPixelSize(r7)
            int r3 = r3 - r7
            int r7 = android.support.v7.appcompat.R.dimen.notification_small_icon_size_as_large
            int r7 = r6.getDimensionPixelSize(r7)
            r0 = r18
            r1 = r25
            android.graphics.Bitmap r3 = createIconWithBackground(r13, r0, r3, r7, r1)
            int r7 = android.support.v7.appcompat.R.id.icon
            r2.setImageViewBitmap(r7, r3)
            goto L_0x0077
        L_0x017c:
            int r3 = android.support.v7.appcompat.R.id.icon
            r7 = -1
            r0 = r18
            android.graphics.Bitmap r7 = createColoredBitmap(r13, r0, r7)
            r2.setImageViewBitmap(r3, r7)
            goto L_0x0077
        L_0x018a:
            r8 = 0
            goto L_0x008f
        L_0x018d:
            if (r17 <= 0) goto L_0x01c0
            int r3 = android.support.v7.appcompat.R.integer.status_bar_notification_info_maxnum
            int r3 = r6.getInteger(r3)
            r0 = r17
            if (r0 <= r3) goto L_0x01af
            int r3 = android.support.v7.appcompat.R.id.info
            int r4 = android.support.v7.appcompat.R.string.status_bar_notification_info_overflow
            java.lang.String r4 = r6.getString(r4)
            r2.setTextViewText(r3, r4)
        L_0x01a4:
            int r3 = android.support.v7.appcompat.R.id.info
            r4 = 0
            r2.setViewVisibility(r3, r4)
            r3 = 1
            r8 = 1
            r9 = r3
            goto L_0x00a1
        L_0x01af:
            java.text.NumberFormat r3 = java.text.NumberFormat.getIntegerInstance()
            int r4 = android.support.v7.appcompat.R.id.info
            r0 = r17
            long r8 = (long) r0
            java.lang.String r3 = r3.format(r8)
            r2.setTextViewText(r4, r3)
            goto L_0x01a4
        L_0x01c0:
            int r4 = android.support.v7.appcompat.R.id.info
            r7 = 8
            r2.setViewVisibility(r4, r7)
            r9 = r3
            goto L_0x00a1
        L_0x01ca:
            int r3 = android.support.v7.appcompat.R.id.text2
            r4 = 8
            r2.setViewVisibility(r3, r4)
        L_0x01d1:
            r3 = r5
            goto L_0x00be
        L_0x01d4:
            int r3 = android.support.v7.appcompat.R.id.time
            r4 = 0
            r2.setViewVisibility(r3, r4)
            int r3 = android.support.v7.appcompat.R.id.time
            java.lang.String r4 = "setTime"
            r0 = r22
            r2.setLong(r3, r4, r0)
            goto L_0x010c
        L_0x01e5:
            r3 = 8
            goto L_0x0112
        L_0x01e9:
            r3 = 8
            goto L_0x011a
        L_0x01ed:
            r3 = r8
            goto L_0x010d
        L_0x01f0:
            r3 = r4
            goto L_0x0086
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.NotificationCompatImplBase.applyStandardTemplate(android.content.Context, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, int, int, android.graphics.Bitmap, java.lang.CharSequence, boolean, long, int, int, int, boolean):android.widget.RemoteViews");
    }

    public static Bitmap createIconWithBackground(Context context, int i, int i2, int i3, int i4) {
        int i5 = R.drawable.notification_icon_background;
        if (i4 == 0) {
            i4 = 0;
        }
        Bitmap createColoredBitmap = createColoredBitmap(context, i5, i4, i2);
        Canvas canvas = new Canvas(createColoredBitmap);
        Drawable mutate = context.getResources().getDrawable(i).mutate();
        mutate.setFilterBitmap(true);
        int i6 = (i2 - i3) / 2;
        mutate.setBounds(i6, i6, i3 + i6, i3 + i6);
        mutate.setColorFilter(new PorterDuffColorFilter(-1, Mode.SRC_ATOP));
        mutate.draw(canvas);
        return createColoredBitmap;
    }

    public static void buildIntoRemoteViews(Context context, RemoteViews remoteViews, RemoteViews remoteViews2) {
        hideNormalContent(remoteViews);
        remoteViews.removeAllViews(R.id.notification_main_column);
        remoteViews.addView(R.id.notification_main_column, remoteViews2.clone());
        remoteViews.setViewVisibility(R.id.notification_main_column, 0);
        if (VERSION.SDK_INT >= 21) {
            remoteViews.setViewPadding(R.id.notification_main_column_container, 0, calculateTopPadding(context), 0, 0);
        }
    }

    private static void hideNormalContent(RemoteViews remoteViews) {
        remoteViews.setViewVisibility(R.id.title, 8);
        remoteViews.setViewVisibility(R.id.text2, 8);
        remoteViews.setViewVisibility(R.id.text, 8);
    }

    public static int calculateTopPadding(Context context) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.notification_top_pad);
        float constrain = (constrain(context.getResources().getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
        return Math.round((((float) dimensionPixelSize) * (1.0f - constrain)) + (((float) context.getResources().getDimensionPixelSize(R.dimen.notification_top_pad_large_text)) * constrain));
    }

    public static float constrain(float f, float f2, float f3) {
        if (f < f2) {
            return f2;
        }
        return f > f3 ? f3 : f;
    }
}
