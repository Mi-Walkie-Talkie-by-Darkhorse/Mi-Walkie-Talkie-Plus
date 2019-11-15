.class public Lcom/xiaomi/push/service/ae;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/ae$a;,
        Lcom/xiaomi/push/service/ae$b;
    }
.end annotation


# static fields
.field public static a:J

.field private static final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/xmpush/thrift/ac;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/ae;->a:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 5

    const/4 v4, 0x1

    const-string v0, "extraNotification"

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/reflect/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "setCustomizedIcon"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static a(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    :try_start_0
    const-class v0, Landroid/app/Notification;

    const-string v1, "extraNotification"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTargetPkg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;Lcom/xiaomi/xmpush/thrift/s;[B)Landroid/app/PendingIntent;
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/xiaomi/xmpush/thrift/s;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/xiaomi/xmpush/thrift/s;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/push/service/ae;->b(Lcom/xiaomi/xmpush/thrift/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.xmsf"

    const-string v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "mipush_notified"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/s;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/ac;->f:Ljava/lang/String;

    const-string v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "mipush_notified"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/s;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/ae;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_1

    move v1, v2

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Lcom/xiaomi/push/service/ae$a;
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v5, Lcom/xiaomi/push/service/ae$a;

    invoke-direct {v5}, Lcom/xiaomi/push/service/ae$a;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ac;->m()Lcom/xiaomi/xmpush/thrift/s;

    move-result-object v6

    invoke-static {p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v6}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/s;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    if-nez v8, :cond_9

    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_1
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v2, "mipush_notification"

    invoke-static {p0, v7, v2}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "mipush_small_notification"

    invoke-static {p0, v7, v3}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v2, :cond_b

    if-lez v3, :cond_b

    invoke-static {p0, v2}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_3
    if-nez v8, :cond_c

    const/4 v2, 0x0

    move-object v4, v2

    :goto_4
    if-eqz v8, :cond_d

    const-string v2, "__adiom"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_2

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/g;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_2
    const/4 v2, 0x1

    :goto_6
    const/4 v3, 0x0

    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    const-string v10, "http"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {p0, v4}, Lcom/xiaomi/push/service/ai;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/ai$b;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/xiaomi/push/service/ai$b;->a:Landroid/graphics/Bitmap;

    iget-wide v10, v4, Lcom/xiaomi/push/service/ai$b;->b:J

    iput-wide v10, v5, Lcom/xiaomi/push/service/ae$a;->b:J

    :cond_3
    :goto_7
    if-eqz v2, :cond_11

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    move v4, v2

    :goto_8
    if-eqz v8, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4

    const-string v2, "notification_group"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "notification_is_summary"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v10, "setGroup"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v9, v10, v11}, Lcom/xiaomi/channel/commonutils/reflect/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setGroupSummary"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v9, v2, v10}, Lcom/xiaomi/channel/commonutils/reflect/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz v8, :cond_5

    const-string v2, "ticker"

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ticker"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_5
    sget-wide v2, Lcom/xiaomi/push/service/ae;->a:J

    sub-long v2, v10, v2

    const-wide/16 v12, 0x2710

    cmp-long v2, v2, v12

    if-lez v2, :cond_6

    sput-wide v10, Lcom/xiaomi/push/service/ae;->a:J

    iget v2, v6, Lcom/xiaomi/xmpush/thrift/s;->f:I

    invoke-static {p0, v7}, Lcom/xiaomi/push/service/ae;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {p0, v7}, Lcom/xiaomi/push/service/ae;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move v3, v2

    :goto_9
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    if-eqz v8, :cond_6

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_6

    const-string v2, "sound_uri"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :cond_6
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/g;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/xiaomi/push/service/ae;->a(Landroid/app/Notification;)Landroid/app/Notification;

    :cond_7
    iput-object v2, v5, Lcom/xiaomi/push/service/ae$a;->a:Landroid/app/Notification;

    return-object v5

    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    :cond_9
    const-string v2, "notification_show_when"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_b
    invoke-static {p0, v7}, Lcom/xiaomi/push/service/ae;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    :cond_c
    const-string v2, "__dynamic_icon_uri"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-static {p0, v4}, Lcom/xiaomi/push/service/ai;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_7

    :cond_10
    move v3, v2

    goto/16 :goto_9

    :cond_11
    move v4, v3

    goto/16 :goto_8
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;[B)Lcom/xiaomi/push/service/ae$b;
    .locals 18

    new-instance v8, Lcom/xiaomi/push/service/ae$b;

    invoke-direct {v8}, Lcom/xiaomi/push/service/ae$b;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/channel/commonutils/android/b;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/b$a;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/channel/commonutils/android/b$a;->c:Lcom/xiaomi/channel/commonutils/android/b$a;

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not notify because user block "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u2018s notification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    move-object v4, v8

    :goto_0
    return-object v4

    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/xiaomi/push/service/az;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/az;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not notify because user block "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u2018s notification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    move-object v4, v8

    goto :goto_0

    :cond_1
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/ac;->m()Lcom/xiaomi/xmpush/thrift/s;

    move-result-object v9

    invoke-static/range {p0 .. p2}, Lcom/xiaomi/push/service/ae;->b(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;[B)Landroid/widget/RemoteViews;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v9, v2}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;Lcom/xiaomi/xmpush/thrift/s;[B)Landroid/app/PendingIntent;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v4, "The click PendingIntent is null. "

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    move-object v4, v8

    goto :goto_0

    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v10, v5}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;)Lcom/xiaomi/push/service/ae$a;

    move-result-object v5

    iget-wide v6, v5, Lcom/xiaomi/push/service/ae$a;->b:J

    iput-wide v6, v8, Lcom/xiaomi/push/service/ae$b;->b:J

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/xiaomi/push/service/ae$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/xiaomi/push/service/ae$a;->a:Landroid/app/Notification;

    move-object v6, v5

    :goto_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/g;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v5, v7, :cond_4

    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "message_id"

    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->u()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_d

    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "score_info"

    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_e

    const/4 v5, 0x0

    :goto_3
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/g;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6, v5}, Lcom/xiaomi/push/service/ae;->a(Landroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_5
    :goto_4
    const-string v5, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/xiaomi/push/service/ae;->a(Landroid/app/Notification;Ljava/lang/String;)Landroid/app/Notification;

    :cond_6
    const-string v5, "com.xiaomi.xmsf"

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/xiaomi/push/service/az;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;Landroid/app/Notification;)V

    :cond_7
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->q()I

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v4, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_1
    sget-object v6, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_8

    sget-object v4, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v8

    goto/16 :goto_0

    :cond_9
    new-instance v7, Landroid/app/Notification;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/ae;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v7, v6, v11, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/s;)[Ljava/lang/String;

    move-result-object v6

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setLatestEventInfo"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/CharSequence;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ljava/lang/CharSequence;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-class v15, Landroid/app/PendingIntent;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget-object v14, v6, v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-object v6, v6, v14

    aput-object v6, v12, v13

    const/4 v6, 0x3

    aput-object v5, v12, v6

    invoke-virtual {v11, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_5
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_a

    const-string v5, "ticker"

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "ticker"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-wide v14, Lcom/xiaomi/push/service/ae;->a:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x2710

    cmp-long v5, v14, v16

    if-lez v5, :cond_b

    sput-wide v12, Lcom/xiaomi/push/service/ae;->a:J

    iget v5, v9, Lcom/xiaomi/xmpush/thrift/s;->f:I

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/push/service/ae;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/xiaomi/push/service/ae;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    move v6, v5

    :goto_6
    iput v6, v7, Landroid/app/Notification;->defaults:I

    if-eqz v11, :cond_b

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_b

    const-string v5, "sound_uri"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android.resource://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    xor-int/lit8 v6, v6, 0x1

    iput v6, v7, Landroid/app/Notification;->defaults:I

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_b
    iget v5, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v7, Landroid/app/Notification;->flags:I

    if-eqz v10, :cond_c

    iput-object v10, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_c
    move-object v6, v7

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_1
    move-exception v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_2
    move-exception v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_3
    move-exception v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->u()Ljava/util/Map;

    move-result-object v5

    const-string v7, "score_info"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v5

    const-string v7, "message_count"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_3

    :catch_4
    move-exception v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_f
    move v6, v5

    goto/16 :goto_6
.end method

.method static a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ac;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ac;->m()Lcom/xiaomi/xmpush/thrift/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v0

    const-string v1, "miui_package_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/ac;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Landroid/app/Notification;I)V
    .locals 5

    const-string v0, "extraNotification"

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/reflect/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "setMessageCount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    add-int v3, v1, p2

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    if-ltz p2, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    sget-object v5, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaomi/xmpush/thrift/ac;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v7

    if-ltz p2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    :try_start_1
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {p0, v4}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Ljava/util/LinkedList;)V

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget-object v4, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaomi/xmpush/thrift/ac;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ac;->m()Lcom/xiaomi/xmpush/thrift/s;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/s;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/s;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p2, v6}, Lcom/xiaomi/push/service/ae;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p3, v2}, Lcom/xiaomi/push/service/ae;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/push/service/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {p0, v3}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Ljava/util/LinkedList;)V

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v2, "category_clear_notification"

    const-string v3, "clear_notification"

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v4, v0

    const-string v6, ""

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/push/service/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "notify_foreground"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "notify_foreground"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/s;)[Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/s;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/s;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    const/16 v4, 0x140

    if-gt v0, v4, :cond_2

    const-string v0, "title_short"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v0

    :cond_0
    const-string v0, "description_short"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    move-object v2, v0

    :cond_1
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-object v0

    :cond_2
    const/16 v4, 0x168

    if-le v0, v4, :cond_1

    const-string v0, "title_long"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v1, v0

    :cond_3
    const-string v0, "description_long"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;[B)Landroid/widget/RemoteViews;
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ac;->m()Lcom/xiaomi/xmpush/thrift/s;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/push/service/ae;->a(Lcom/xiaomi/xmpush/thrift/ac;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/s;->s()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "layout_name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "layout_value"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const-string v3, "layout"

    invoke-virtual {v5, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-direct {v3, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "text"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "text"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v5, v0, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v3, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v0, "image"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "image"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v5, v0, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v9, "drawable"

    invoke-virtual {v5, v8, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v0, :cond_6

    invoke-virtual {v3, v0, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    :cond_7
    const-string v0, "time"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "time"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    const-string v1, "yy-MM-dd hh:mm"

    :cond_9
    const-string v8, "id"

    invoke-virtual {v5, v0, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_a
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Lcom/xiaomi/xmpush/thrift/ac;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ac;->m()Lcom/xiaomi/xmpush/thrift/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/s;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const-string v0, "mipush_notification"

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "mipush_small_notification"

    invoke-static {p0, p1, v1}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_1

    :goto_0
    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    :cond_0
    return v0

    :cond_1
    if-lez v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0
.end method
