.class Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/network/d/b;

.field private b:Landroid/app/NotificationManager;

.field private c:Landroid/app/Notification;

.field private d:I

.field private e:Landroid/app/Activity;

.field private f:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field private g:Landroidx/core/app/NotificationCompat$b;

.field final synthetic h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/network/d/b;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->d:I

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->e:Landroid/app/Activity;

    .line 4
    iput-object p4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->f:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    .line 5
    iput-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->a:Lcom/ifengyu/intercom/network/d/b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_d

    const/4 v0, 0x6

    if-eq p1, v0, :cond_b

    const/4 v0, 0x7

    const/16 v4, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->f:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1, v1, v1, v3}, Landroidx/core/app/NotificationCompat$b;->a(IIZ)Landroidx/core/app/NotificationCompat$b;

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    const v0, 0x7f110215

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$b;->b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    .line 7
    iput v4, p1, Landroid/app/Notification;->flags:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z

    goto/16 :goto_4

    .line 10
    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_e

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Lcom/ifengyu/intercom/network/OnDownloadListener;->h()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->f:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const-string v5, "/"

    const-string v6, "mitalki.apk"

    if-ne p1, v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1, v1, v1, v3}, Landroidx/core/app/NotificationCompat$b;->a(IIZ)Landroidx/core/app/NotificationCompat$b;

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    const v0, 0x7f110214

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$b;->b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    .line 18
    iput v4, p1, Landroid/app/Notification;->flags:I

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const-string v7, "application/vnd.android.package-archive"

    if-lt v1, v4, :cond_4

    .line 23
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->e:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->e:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".provider"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 26
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-static {v1, v3, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->b:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    invoke-virtual {p1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z

    .line 30
    :cond_5
    sget-object p1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$c;->a:[I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->f:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v2, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    goto/16 :goto_4

    .line 31
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_7

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mcu_bin.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "md5"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/network/OnDownloadListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_9

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/network/OnDownloadListener;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->e:Landroid/app/Activity;

    invoke-static {p1, v0, v6}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 36
    :cond_b
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->f:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_e

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->a:Lcom/ifengyu/intercom/network/d/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/network/d/b;->b()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->a:Lcom/ifengyu/intercom/network/d/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/network/d/b;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/n;->a(FF)I

    move-result p1

    .line 38
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->d:I

    if-ne p1, v0, :cond_c

    return-void

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->a:Lcom/ifengyu/intercom/network/d/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/network/d/b;->a()I

    move-result v1

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->a:Lcom/ifengyu/intercom/network/d/b;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/network/d/b;->b()I

    move-result v4

    invoke-virtual {v0, v1, v4, v3}, Landroidx/core/app/NotificationCompat$b;->a(IIZ)Landroidx/core/app/NotificationCompat$b;

    .line 40
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    const v1, 0x7f110216

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$b;->b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    .line 41
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    .line 42
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 43
    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->d:I

    goto/16 :goto_4

    .line 44
    :cond_d
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->f:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_e

    .line 45
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->e:Landroid/app/Activity;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->b:Landroid/app/NotificationManager;

    .line 46
    new-instance p1, Landroidx/core/app/NotificationCompat$b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/core/app/NotificationCompat$b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    const v0, 0x7f0e0005

    .line 47
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$b;->a(I)Landroidx/core/app/NotificationCompat$b;

    .line 48
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$b;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$b;

    .line 49
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$b;->a(Z)Landroidx/core/app/NotificationCompat$b;

    .line 50
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$b;->b(Z)Landroidx/core/app/NotificationCompat$b;

    .line 51
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$b;->c(Z)Landroidx/core/app/NotificationCompat$b;

    .line 52
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f110048

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$b;->b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    .line 53
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1, v1, v3, v3}, Landroidx/core/app/NotificationCompat$b;->a(IIZ)Landroidx/core/app/NotificationCompat$b;

    .line 54
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->g:Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    .line 55
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-static {v1, v3, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 57
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->c:Landroid/app/Notification;

    const/16 v0, 0x20

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 58
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 59
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;->h:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z

    :cond_e
    :goto_4
    return-void
.end method
