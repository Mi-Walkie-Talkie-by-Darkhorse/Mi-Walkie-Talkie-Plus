.class public Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/sealshark/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;,
        Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;,
        Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$UpdateState;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/ifengyu/intercom/update/sealshark/e;

.field private g:Ljava/util/concurrent/locks/Lock;

.field private final h:Ljava/util/concurrent/locks/Lock;

.field private i:Landroid/app/AlarmManager;

.field private j:I

.field private k:I

.field private volatile l:Z

.field private volatile m:Z

.field private n:I

.field private o:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

.field private p:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

.field private final q:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    iput v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j:I

    iput v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Z

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$1;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->q:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/g;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/update/sealshark/g;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->q:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/a;->a(Lcom/ifengyu/intercom/update/sealshark/d;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/i;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/update/sealshark/i;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "unknow"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "ready"

    goto :goto_0

    :pswitch_1
    const-string v0, "transmitting"

    goto :goto_0

    :pswitch_2
    const-string v0, "completed"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(II)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j:I

    iput p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(ZI)V

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareForUpdate: version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v1, p2, p1}, Lcom/ifengyu/intercom/update/sealshark/e;->a(Ljava/lang/String;I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:I

    return v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q;

    move-result-object v2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/q;->b()I

    move-result v1

    :cond_0
    const/16 v2, 0xa0

    if-lt v1, v2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/16 v0, 0x64

    :cond_1
    :goto_0
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iput v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    const-string v1, "UpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSendInterval: interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v0, 0x186a0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g()V

    const/16 v0, 0x64

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "UpdateHelper"

    const-string v1, "update failed, maybe crc32 is not right."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    goto :goto_0
.end method

.method private b(ZI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/e;->f()Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/e;->b()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    iput-object v4, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    iput-boolean v3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:Z

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Z

    iput v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;ZI)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/e;->b()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    iput-object v4, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    iput-boolean v3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:Z

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Z

    iput v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;ZI)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e()V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v1}, Lcom/ifengyu/intercom/update/sealshark/e;->b()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    iput-object v4, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    iput-boolean v3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:Z

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Z

    iput v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    new-instance v1, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$3;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;ZI)V

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    throw v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/e;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->p:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->p:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->p:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    :cond_0
    return-void
.end method

.method private c(ZI)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/update/sealshark/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->p:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->p:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->p:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;->start()V

    :goto_0
    return-void

    :cond_2
    const-string v0, "UpdateHelper"

    const-string v1, "response false or not expected offset, exit update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->o:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    return-object v0
.end method

.method private d()V
    .locals 2

    const-string v0, "UpdateHelper"

    const-string v1, "handleAckWaitingTimerFired"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:I

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "UpdateHelper"

    const-string v1, "Too many consecutive failures, discard update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    if-nez v0, :cond_1

    const-string v0, "UpdateHelper"

    const-string v1, "update request timeout, discard update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "UpdateHelper"

    const-string v1, "wait crc32 result timeout, discard update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private d(ZI)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransport: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/update/sealshark/e;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/update/sealshark/e;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x63

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k()V

    return-void
.end method

.method private f()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:I

    return-void
.end method

.method private h()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increase sendInterval to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private i()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    :cond_0
    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrease sendInterval to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(ZI)V

    return-void
.end method

.method public a(ILjava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->o:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UpdateHelper"

    const-string v1, "prepare update error."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/e;->d()Z

    goto :goto_0
.end method

.method public a(ZI)V
    .locals 3

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current update state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->o:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:I

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/update/sealshark/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$2;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:I

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:I

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d(ZI)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
