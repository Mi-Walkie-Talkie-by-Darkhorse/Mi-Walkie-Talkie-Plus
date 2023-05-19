.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;
.super Ljava/lang/Object;
.source "DolphinUpdateHelper.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field private g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

.field private h:Ljava/util/concurrent/locks/Lock;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private j:Landroid/app/AlarmManager;

.field private k:I

.field private l:I

.field private volatile m:Z

.field private volatile n:Z

.field private o:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;

.field private final p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->e:I

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->l:I

    .line 10
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m:Z

    .line 11
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->n:Z

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->p:Landroid/content/BroadcastReceiver;

    .line 13
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->a:Landroid/content/Context;

    .line 14
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->b:Ljava/lang/String;

    const-string v1, "alarm"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j:Landroid/app/AlarmManager;

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->n(Z)Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->e(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;)V

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->f(Ljava/lang/String;)V

    return-void
.end method

.method private A(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->b()Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->release()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->y()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j:Landroid/app/AlarmManager;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m:Z

    .line 10
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->n:Z

    :cond_1
    return-void
.end method

.method private C()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->o(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->C()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/z0/d;->T()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_2

    const/16 v0, 0x15

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->x(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto :goto_1

    :cond_1
    const/16 v0, 0xc8

    goto :goto_1

    :cond_2
    const v0, 0x186a0

    .line 4
    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->e:I

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSendInterval: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->l()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private j(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->e:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d:I

    if-gt v0, v1, :cond_1

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    if-ge v0, v1, :cond_0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d:I

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrease sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private l()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private n(Z)Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j:Landroid/app/AlarmManager;

    invoke-direct {p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/q;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/h;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j:Landroid/app/AlarmManager;

    invoke-direct {p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/h;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    return-object p1
.end method

.method private o(I)V
    .locals 4

    const-string v0, "UpdateHelper"

    const-string v1, "handleAckWaitingTimerFired"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->l:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const-string p1, "Too many consecutive failures, discard update."

    .line 4
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    if-ne v1, v2, :cond_1

    const-string p1, "update request timeout, discard update."

    .line 8
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    if-ne v1, v2, :cond_2

    const-string p1, "wait crc32 result timeout, discard update."

    .line 11
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->h(I)V

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->s()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    throw p1
.end method

.method private p()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->e:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->d:I

    if-gt v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x5

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increase sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private t(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->z()V

    const/16 p1, 0x64

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "UpdateHelper"

    const-string v1, "update failed, maybe crc32 is not right."

    .line 7
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    :goto_0
    return-void
.end method

.method private u(ZI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result v0

    const-string v1, "UpdateHelper"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestAckReceived, result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ackId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->z()V

    const/4 p1, 0x5

    .line 5
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->o:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->o:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->o:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string p1, "response false or not expected ack, exit update."

    .line 9
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    :goto_0
    return-void
.end method

.method private v(ZI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result v0

    const-string v1, "UpdateHelper"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransportAckReceived: result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ackId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->i()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->z()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->j(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x63

    .line 8
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->d()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->y()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->s()V

    goto :goto_0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response false or not expected ackId, ackId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected ackId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    .line 14
    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->p()V

    .line 17
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->o(I)V

    :goto_0
    return-void
.end method

.method private w(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareForUpdate: version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m:Z

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->n:Z

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h()V

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {v0, p3, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->i(Ljava/lang/String;ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)V

    const/4 p1, 0x2

    .line 8
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->j(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->o:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->o:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$c;

    :cond_0
    return-void
.end method

.method private z()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->l:I

    return-void
.end method


# virtual methods
.method public B(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->w(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UpdateHelper"

    const-string p2, "prepare update error."

    .line 2
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->A(Z)V

    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->a()Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processReceivedAck state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$b;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->t(Z)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->v(ZI)V

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->u(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method

.method public b(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;ZI)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processReceivedAck: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "invalid state, Expecting state is %s, but got %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 5
    invoke-static {v3, v4, v6}, Lcom/ifengyu/intercom/p/p;->f(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_3

    if-eq p1, v5, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->t(Z)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->v(ZI)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->u(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method

.method public m()I
    .locals 4

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$b;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    if-ge v0, v2, :cond_4

    add-int/2addr v0, v2

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    const/16 v1, 0x63

    if-ge v0, v1, :cond_4

    add-int/2addr v0, v2

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    const/16 v1, 0x62

    if-ge v0, v1, :cond_4

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->g:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/o;->c(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    goto :goto_0

    .line 8
    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    if-ge v0, v1, :cond_4

    add-int/2addr v0, v2

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    .line 10
    :cond_4
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->k:I

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->n:Z

    return v0
.end method

.method public x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->a()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/i;->e(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/n;)V

    :cond_0
    return-void
.end method
