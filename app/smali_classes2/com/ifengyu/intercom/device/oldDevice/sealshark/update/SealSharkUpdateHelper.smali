.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;
.super Ljava/lang/Object;
.source "SealSharkUpdateHelper.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;,
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;,
        Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$UpdateState;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

.field private h:Ljava/util/concurrent/locks/Lock;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private j:Landroid/app/AlarmManager;

.field private k:I

.field private volatile l:Z

.field private m:I

.field private n:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

.field private o:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;

.field private final p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->e:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->i:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->k:I

    .line 9
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l:Z

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->p:Landroid/content/BroadcastReceiver;

    .line 11
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->b:Ljava/lang/String;

    const-string v1, "alarm"

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j:Landroid/app/AlarmManager;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 15
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j:Landroid/app/AlarmManager;

    invoke-direct {p1, v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/g;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 17
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/k;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j:Landroid/app/AlarmManager;

    invoke-direct {p1, v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/k;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->a()Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->g(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/d;)V

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->a()Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/h;->f(Ljava/lang/String;)V

    return-void
.end method

.method private A(ZI)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->b()Z

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l()V

    .line 6
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->release()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->x()V

    .line 8
    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j:Landroid/app/AlarmManager;

    .line 9
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l:Z

    .line 10
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;ZI)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 12
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l()V

    .line 14
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->release()V

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->x()V

    .line 16
    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j:Landroid/app/AlarmManager;

    .line 17
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l:Z

    .line 18
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;ZI)V

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 20
    :goto_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l()V

    .line 21
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {v4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->release()V

    .line 22
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->x()V

    .line 23
    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j:Landroid/app/AlarmManager;

    .line 24
    iput-boolean v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l:Z

    .line 25
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    .line 26
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;ZI)V

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    .line 27
    throw v3

    :cond_1
    :goto_2
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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->i:Ljava/util/concurrent/locks/Lock;

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

.method static synthetic c(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->q()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m:I

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->n:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->s()V

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->C()V

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/z0/d;->T()I

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/z0/d;->T()I

    move-result v1

    :cond_1
    :goto_0
    const/16 v0, 0xa0

    if-lt v1, v0, :cond_3

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    const/16 v0, 0xc8

    goto :goto_1

    :cond_3
    const v0, 0x186a0

    .line 8
    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->e:I

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    .line 10
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d:I

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSendInterval: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealSharkUpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->j:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->o()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private m(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->e:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d:I

    if-gt v0, v1, :cond_1

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    if-ge v0, v1, :cond_0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d:I

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrease sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealSharkUpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private o()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private p(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "unknow"

    return-object p1

    :cond_0
    const-string p1, "completed"

    return-object p1

    :cond_1
    const-string p1, "transmitting"

    return-object p1

    :cond_2
    const-string p1, "ready"

    return-object p1
.end method

.method private q()V
    .locals 4

    const-string v0, "SealSharkUpdateHelper"

    const-string v1, "handleAckWaitingTimerFired"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->k:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const-string v1, "Too many consecutive failures, discard update."

    .line 4
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    if-nez v1, :cond_1

    const-string v1, "update request timeout, discard update."

    .line 8
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "wait crc32 result timeout, discard update."

    .line 10
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->s()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw v0
.end method

.method private r()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->e:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d:I

    if-gt v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x5

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increase sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealSharkUpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->i:Ljava/util/concurrent/locks/Lock;

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
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->y()V

    const/16 p1, 0x64

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m(II)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "SealSharkUpdateHelper"

    const-string v1, "update failed, maybe crc32 is not right."

    .line 7
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    :goto_0
    return-void
.end method

.method private u(ZI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result v0

    const-string v1, "SealSharkUpdateHelper"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady, result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->g(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->y()V

    const/4 p1, 0x5

    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m(II)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->o:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->o:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->o:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string p1, "response false or not expected offset, exit update."

    .line 10
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    :goto_0
    return-void
.end method

.method private v(ZI)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransport: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealSharkUpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->y()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->n()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->f(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->g(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x63

    const/4 p2, 0x2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m(II)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->d()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->x()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->s()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->r()V

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->q()V

    :goto_0
    return-void
.end method

.method private w(ILjava/lang/String;)Z
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

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealSharkUpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->l:Z

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->k()V

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {v1, p2, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->e(Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->o:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->o:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$d;

    :cond_0
    return-void
.end method

.method private y()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->k:I

    return-void
.end method

.method private z(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->A(ZI)V

    return-void
.end method


# virtual methods
.method public B(ILjava/lang/String;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->n:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->w(ILjava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const-string p1, "SealSharkUpdateHelper"

    const-string p3, "prepare update error."

    .line 4
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->z(Z)V

    return-void

    .line 6
    :cond_1
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->a()Z

    return-void
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->A(ZI)V

    return-void
.end method

.method public b(ZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current update state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SealSharkUpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m:I

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f:I

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->t(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->v(ZI)V

    goto :goto_0

    .line 7
    :cond_2
    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->u(ZI)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->n:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->g:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    iget p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->m:I

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->g(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V

    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1
.end method
