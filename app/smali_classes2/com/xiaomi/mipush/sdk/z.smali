.class public Lcom/xiaomi/mipush/sdk/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/z$a;
    }
.end annotation


# static fields
.field private static b:Lcom/xiaomi/mipush/sdk/z;

.field private static f:Z

.field private static final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mipush/sdk/z$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Messenger;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/content/Intent;

.field private l:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/z;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/z;->a:Z

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->h:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->i:Ljava/util/List;

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/z;->j:Z

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->k:Landroid/content/Intent;

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->l:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/z;->a:Z

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->n()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/z;->f:Z

    new-instance v0, Lcom/xiaomi/mipush/sdk/aa;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mipush/sdk/aa;-><init>(Lcom/xiaomi/mipush/sdk/z;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/z;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/z;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/z;->e:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/z;->b:Lcom/xiaomi/mipush/sdk/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/z;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/z;->b:Lcom/xiaomi/mipush/sdk/z;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/z;->b:Lcom/xiaomi/mipush/sdk/z;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/z;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/z;->l:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/z;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/z;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/af;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v1, p1, v6}, Lcom/xiaomi/xmpush/thrift/af;-><init>(Ljava/lang/String;Z)V

    const-class v2, Lcom/xiaomi/mipush/sdk/u;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaomi/mipush/sdk/u;->a(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p2, :cond_5

    sget-object v2, Lcom/xiaomi/xmpush/thrift/p;->L:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/p;->L:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    const-string v2, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/af;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/af;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "mipush_payload"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "mipush_app_id"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mipush_app_token"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v7}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_3

    move v3, v6

    :cond_3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/af;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v1, p1, v6}, Lcom/xiaomi/xmpush/thrift/af;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/xiaomi/xmpush/thrift/p;->M:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/p;->M:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    const-string v2, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/z;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/z;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aj;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/f;->T:Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/f;->a()I

    move-result v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->a:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/aj;->a(II)I

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->h()I

    move-result v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->b:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/z;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->b:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v0

    :goto_1
    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->c(I)Z

    :cond_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/z;->c(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->a:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/xiaomi/mipush/sdk/z;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->i:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized c(Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/z;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/z;->d(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->e:Landroid/os/Messenger;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    new-instance v1, Lcom/xiaomi/mipush/sdk/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/ac;-><init>(Lcom/xiaomi/mipush/sdk/z;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/z;->j:Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/z;->d(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/z;->d(Landroid/content/Intent;)Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->e:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private d(Landroid/content/Intent;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/mipush/sdk/z;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->e:Landroid/os/Messenger;

    return-object v0
.end method

.method private declared-synchronized d(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "service_boot_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "service_boot_mode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private j()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/z;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->l()V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->m()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_0

    const-string v0, "com.xiaomi.push.service.XMPushService"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "com.xiaomi.xmsf.push.service.XMPushService"

    goto :goto_0
.end method

.method private l()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private n()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x6c

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private o()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/ag;Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->k:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/ac;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "register fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "mipush_session"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_env_chanage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "mipush_env_type"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/network/d;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/z;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->k:Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/an;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/a;->b:Lcom/xiaomi/xmpush/thrift/a;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unregister fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/e;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "send tinydata failed, because tinyDataBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Lcom/xiaomi/xmpush/thrift/s;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/mipush/sdk/z$a;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/z$a;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/z$a;->a:Lorg/apache/thrift/a;

    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/z$a;->b:Lcom/xiaomi/xmpush/thrift/a;

    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/z$a;->c:Z

    sget-object v1, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Z",
            "Lcom/xiaomi/xmpush/thrift/s;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/s;Z)V

    return-void
.end method

.method public final a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Z",
            "Lcom/xiaomi/xmpush/thrift/s;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/s;Z)V

    return-void
.end method

.method public final a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/s;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "ZZ",
            "Lcom/xiaomi/xmpush/thrift/s;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/s;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/s;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "ZZ",
            "Lcom/xiaomi/xmpush/thrift/s;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "drop the message before initialization."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p7

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ac;

    move-result-object v0

    if-eqz p5, :cond_2

    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/ac;->a(Lcom/xiaomi/xmpush/thrift/s;)Lcom/xiaomi/xmpush/thrift/ac;

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "send message fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/z;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v0

    const-string v1, "disable_syncing"

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/u;->f(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/mipush/sdk/z;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/u;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/u;

    move-result-object v0

    const-string v1, "enable_syncing"

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/u;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public b(I)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/z;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/c;->l()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/z;->d(I)V

    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/p;->N:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    iget-object v2, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "boot_mode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->k:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->k:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/z;->k:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 9

    sget-object v7, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/z$a;

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/z$a;->a:Lorg/apache/thrift/a;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/z$a;->b:Lcom/xiaomi/xmpush/thrift/a;

    iget-boolean v3, v0, Lcom/xiaomi/mipush/sdk/z$a;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/s;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public f()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->j()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/ao;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/z;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public g()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/z;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/z;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->l:Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/aq;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/aq;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->l:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/xiaomi/mipush/sdk/ab;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/mipush/sdk/ab;-><init>(Lcom/xiaomi/mipush/sdk/z;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/z;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/aq;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/aq;->c()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/z;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
