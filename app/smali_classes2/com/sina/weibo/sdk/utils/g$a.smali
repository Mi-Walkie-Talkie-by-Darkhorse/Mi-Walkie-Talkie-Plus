.class public Lcom/sina/weibo/sdk/utils/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/PendingIntent;

.field private e:[J

.field private f:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static a()Lcom/sina/weibo/sdk/utils/g$a;
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/utils/g$a;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/g$a;-><init>()V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "com_sina_weibo_sdk_weibo_logo"

    const-string v1, "drawable"

    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x108009b

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/g$a;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/g$a;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/g$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/g;
    .locals 3

    new-instance v0, Landroidx/core/app/NotificationCompat$b;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationCompat$b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(Z)Landroidx/core/app/NotificationCompat$b;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/g$a;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$b;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/g$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->c(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/g$a;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(I)Landroidx/core/app/NotificationCompat$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$b;->a(J)Landroidx/core/app/NotificationCompat$b;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/g$a;->f:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$b;

    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/g$a;->e:[J

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a([J)Landroidx/core/app/NotificationCompat$b;

    :cond_1
    const-string v1, "weibosdk_notification_icon.png"

    invoke-static {p1, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$b;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/g$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/utils/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/sina/weibo/sdk/utils/g;-><init>(Landroid/content/Context;Landroid/app/Notification;Lcom/sina/weibo/sdk/utils/g;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/g$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/g$a;->a:Ljava/lang/String;

    return-object p0
.end method
