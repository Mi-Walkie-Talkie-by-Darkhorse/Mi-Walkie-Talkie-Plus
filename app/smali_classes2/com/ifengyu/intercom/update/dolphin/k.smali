.class public Lcom/ifengyu/intercom/update/dolphin/k;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/dolphin/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/update/dolphin/k$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ifengyu/intercom/update/dolphin/k;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field private g:Lcom/ifengyu/intercom/update/dolphin/g;

.field private h:Ljava/util/concurrent/locks/Lock;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private j:Landroid/app/AlarmManager;

.field private k:I

.field private l:I

.field private volatile m:Z

.field private volatile n:Z

.field private o:Lcom/ifengyu/intercom/update/dolphin/k$a;

.field private final p:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Ljava/util/concurrent/locks/Lock;

    iput v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    iput v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Z

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/k$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/k$1;-><init>(Lcom/ifengyu/intercom/update/dolphin/k;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->p:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/a;->a(Lcom/ifengyu/intercom/update/dolphin/f;)V

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Z)Lcom/ifengyu/intercom/update/dolphin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/k;)Lcom/ifengyu/intercom/update/dolphin/g;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    return-object v0
.end method

.method private a(Z)Lcom/ifengyu/intercom/update/dolphin/g;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/i;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:Landroid/app/AlarmManager;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/i;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:Landroid/app/AlarmManager;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/d;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/ifengyu/intercom/update/dolphin/k;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    const-string v0, "UpdateHelper"

    const-string v1, "handleAckWaitingTimerFired"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:I

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "UpdateHelper"

    const-string v1, "Too many consecutive failures, discard update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    if-ne v0, v1, :cond_1

    const-string v0, "UpdateHelper"

    const-string v1, "update request timeout, discard update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    if-ne v0, v1, :cond_2

    const-string v0, "UpdateHelper"

    const-string v1, "wait crc32 result timeout, discard update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/update/dolphin/g;->b(I)V

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->m()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/k;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestAckReceived, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->g()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->i()V

    const/4 v0, 0x5

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Lcom/ifengyu/intercom/update/dolphin/k$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/update/dolphin/k$a;-><init>(Lcom/ifengyu/intercom/update/dolphin/k;Lcom/ifengyu/intercom/update/dolphin/k$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Lcom/ifengyu/intercom/update/dolphin/k$a;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Lcom/ifengyu/intercom/update/dolphin/k$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k$a;->start()V

    :goto_0
    return-void

    :cond_2
    const-string v0, "UpdateHelper"

    const-string v1, "response false or not expected ack, exit update."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->l()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->k()Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->g()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->f()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:Landroid/app/AlarmManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Z

    :cond_1
    return-void
.end method

.method private b(ZI)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransportAckReceived: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->g()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->i()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/update/dolphin/g;->c(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x63

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->f()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->m()V

    goto :goto_0

    :cond_3
    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response false or not expected ackId, ackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected ackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v2}, Lcom/ifengyu/intercom/update/dolphin/g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->j()V

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(I)V

    goto :goto_0
.end method

.method private b(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)Z
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

    const-string v3, ", updateType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->e()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0, p3, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/g;->a(Ljava/lang/String;ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->g()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->i()V

    const/16 v0, 0x64

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "UpdateHelper"

    const-string v1, "update failed, maybe crc32 is not right."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    goto :goto_0
.end method

.method private e()V
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

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x64

    :cond_1
    :goto_0
    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

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

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Lcom/ifengyu/intercom/update/dolphin/k$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Lcom/ifengyu/intercom/update/dolphin/k$a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Lcom/ifengyu/intercom/update/dolphin/k$a;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->h()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private h()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:I

    return-void
.end method

.method private j()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increase sendInterval to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private k()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    :cond_0
    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrease sendInterval to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Ljava/util/concurrent/locks/Lock;

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

.method private m()V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Ljava/util/concurrent/locks/Lock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Ljava/util/concurrent/locks/Lock;

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
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/update/a;->a()Lcom/ifengyu/intercom/update/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/update/a;->a(Lcom/ifengyu/intercom/update/dolphin/f;)V

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/ifengyu/intercom/update/dolphin/k;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/node/a/d;->a(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public a(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/update/dolphin/k;->b(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UpdateHelper"

    const-string v1, "prepare update error."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/node/a/d;->a(Ljava/lang/String;Z)V

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->h()Z

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "UpdateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processReceivedAck state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v2, Lcom/ifengyu/intercom/update/dolphin/k$2;->a:[I

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :pswitch_0
    :try_start_1
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, v2, :cond_0

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    :try_start_2
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, v2, :cond_1

    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->b(ZI)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, v2, :cond_2

    :goto_3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;ZI)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "UpdateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processReceivedAck: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    if-ne v2, p1, :cond_0

    :goto_0
    const-string v1, "invalid state, Expecting state is %s, but got %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/b/k;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k$2;->a:[I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_1
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/update/dolphin/k;->b(ZI)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()I
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k$2;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    return v0

    :pswitch_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    const/16 v1, 0x62

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Lcom/ifengyu/intercom/update/dolphin/g;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/g;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Z

    return v0
.end method
