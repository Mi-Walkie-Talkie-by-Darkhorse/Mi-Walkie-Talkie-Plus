.class Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

.field private b:Lcom/ifengyu/intercom/network/a/b;

.field private c:Landroid/app/NotificationManager;

.field private d:Landroid/app/Notification;

.field private e:I

.field private f:Landroid/app/Activity;

.field private g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field private h:Landroid/support/v7/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/network/a/b;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->e:I

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->f:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    iput-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->b:Lcom/ifengyu/intercom/network/a/b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/high16 v4, 0x7f030000

    const/16 v2, 0x10

    const/4 v6, 0x1

    const/16 v3, 0x64

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->f:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->c:Landroid/app/NotificationManager;

    new-instance v0, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0, v6}, Landroid/support/v7/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, v5, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->c:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0, v6}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->b:Lcom/ifengyu/intercom/network/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/network/a/b;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->b:Lcom/ifengyu/intercom/network/a/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/network/a/b;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/i;->a(FF)I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->e:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->b:Lcom/ifengyu/intercom/network/a/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/network/a/b;->b()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->b:Lcom/ifengyu/intercom/network/a/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/network/a/b;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    const v2, 0x7f090144

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->c:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->e:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, v3, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    const v1, 0x7f090142

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mitalki"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mitalki.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->f:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->f:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->c:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$3;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mitalki.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/network/OnDownloadListener;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->f:Landroid/app/Activity;

    const-string v2, "mitalki.apk"

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mcu_bin.bin"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "md5"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/ifengyu/intercom/network/OnDownloadListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, v3, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    const v1, 0x7f090143

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->h:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->c:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->d:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->g:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ifengyu/intercom/network/OnDownloadListener;->a()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
