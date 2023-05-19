.class public Lcom/ifengyu/intercom/service/b/b;
.super Ljava/lang/Object;
.source "ApkDownloadNotifier.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;

.field private c:Landroidx/core/app/NotificationCompat$b;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/service/b/b;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/ifengyu/intercom/service/b/b;->d:I

    .line 4
    new-instance p2, Landroidx/core/app/NotificationCompat$b;

    const-string v0, "channel1"

    invoke-direct {p2, p1, v0}, Landroidx/core/app/NotificationCompat$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0e0006

    .line 5
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$b;->m(I)Landroidx/core/app/NotificationCompat$b;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$b;->d(Z)Landroidx/core/app/NotificationCompat$b;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$b;->j(Z)Landroidx/core/app/NotificationCompat$b;

    .line 8
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$b;->l(Z)Landroidx/core/app/NotificationCompat$b;

    const v2, 0x7f110054

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$b;->h(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    const v2, 0x7f11040c

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    iput-object p2, p0, Lcom/ifengyu/intercom/service/b/b;->c:Landroidx/core/app/NotificationCompat$b;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 12
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 p2, 0x2

    const-string v2, "com.ifengyu.intercom"

    invoke-direct {p1, v0, v2, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/b/b;->b()Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "application/vnd.android.package-archive"

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v0, v1, p2, v2}, Lcom/ifengyu/library/utils/i;->c(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/io/File;Z)V

    return-object v0
.end method

.method private b()Landroid/app/NotificationManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/service/b/b;->b:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/service/b/b;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/service/b/b;->b:Landroid/app/NotificationManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/service/b/b;->b:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/service/b/b;->a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/service/b/b;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/service/b/b;->a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/service/b/b;->c:Landroidx/core/app/NotificationCompat$b;

    iget-object v2, p0, Lcom/ifengyu/intercom/service/b/b;->a:Landroid/content/Context;

    const v3, 0x7f11040d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v2, v2}, Landroidx/core/app/NotificationCompat$b;->k(IIZ)Landroidx/core/app/NotificationCompat$b;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$b;->d(Z)Landroidx/core/app/NotificationCompat$b;

    .line 7
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$b;->j(Z)Landroidx/core/app/NotificationCompat$b;

    const v4, 0x7f110410

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v5, 0x64

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$b;->h(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    iget-object v2, p0, Lcom/ifengyu/intercom/service/b/b;->a:Landroid/content/Context;

    iget v3, p0, Lcom/ifengyu/intercom/service/b/b;->d:I

    shl-int/lit8 v3, v3, 0x3

    const/high16 v4, 0x8000000

    .line 9
    invoke-static {v2, v3, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$b;->f(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$b;

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/b/b;->b()Landroid/app/NotificationManager;

    move-result-object p1

    iget v1, p0, Lcom/ifengyu/intercom/service/b/b;->d:I

    iget-object v2, p0, Lcom/ifengyu/intercom/service/b/b;->c:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/service/b/b;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/service/b/b;->c(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/b/b;->b()Landroid/app/NotificationManager;

    move-result-object p1

    iget v0, p0, Lcom/ifengyu/intercom/service/b/b;->d:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/service/b/b;->e:I

    if-eq p1, v0, :cond_1

    rem-int/lit8 v0, p1, 0x5

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/service/b/b;->c:Landroidx/core/app/NotificationCompat$b;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/core/app/NotificationCompat$b;->k(IIZ)Landroidx/core/app/NotificationCompat$b;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/service/b/b;->c:Landroidx/core/app/NotificationCompat$b;

    const v1, 0x7f110410

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->h(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/b/b;->b()Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/service/b/b;->d:I

    iget-object v2, p0, Lcom/ifengyu/intercom/service/b/b;->c:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/service/b/b;->e:I

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/service/b/b;->c:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->b()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/service/b/b;->a:Landroid/content/Context;

    const/16 v3, 0xc8

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    .line 4
    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/service/b/b;->b()Landroid/app/NotificationManager;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/service/b/b;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
