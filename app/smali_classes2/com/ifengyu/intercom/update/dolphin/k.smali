.class public Lcom/ifengyu/intercom/update/dolphin/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/update/dolphin/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/update/dolphin/k$c;
    }
.end annotation


# static fields
.field private static p:Lcom/ifengyu/intercom/update/dolphin/k;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field private f:Lcom/ifengyu/intercom/update/dolphin/g;

.field private g:Ljava/util/concurrent/locks/Lock;

.field private final h:Ljava/util/concurrent/locks/Lock;

.field private i:Landroid/app/AlarmManager;

.field private j:I

.field private k:I

.field private volatile l:Z

.field private volatile m:Z

.field private n:Lcom/ifengyu/intercom/update/dolphin/k$c;

.field private final o:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/k$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/k$a;-><init>(Lcom/ifengyu/intercom/update/dolphin/k;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Landroid/app/AlarmManager;

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/h/a;->a(Lcom/ifengyu/intercom/update/dolphin/f;)V

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Z)Lcom/ifengyu/intercom/update/dolphin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/k;)Lcom/ifengyu/intercom/update/dolphin/g;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    return-object p0
.end method

.method private a(Z)Lcom/ifengyu/intercom/update/dolphin/g;
    .locals 2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/ifengyu/intercom/update/dolphin/i;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Landroid/app/AlarmManager;

    invoke-direct {p1, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/i;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/ifengyu/intercom/update/dolphin/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Landroid/app/AlarmManager;

    invoke-direct {p1, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/d;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Z)Lcom/ifengyu/intercom/update/dolphin/k;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k;->p:Lcom/ifengyu/intercom/update/dolphin/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/ifengyu/intercom/update/dolphin/k;->p:Lcom/ifengyu/intercom/update/dolphin/k;

    :cond_0
    sget-object p0, Lcom/ifengyu/intercom/update/dolphin/k;->p:Lcom/ifengyu/intercom/update/dolphin/k;

    return-object p0
.end method

.method private a(I)V
    .locals 4

    const-string v0, "UpdateHelper"

    const-string v1, "handleAckWaitingTimerFired"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const-string p1, "Too many consecutive failures, discard update."

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    if-ne v1, v2, :cond_1

    const-string p1, "update request timeout, discard update."

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    if-ne v1, v2, :cond_2

    const-string p1, "wait crc32 result timeout, discard update."

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/update/dolphin/g;->b(I)V

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/k;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    const-string v1, "UpdateHelper"

    if-eqz v0, :cond_0

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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->f()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->l()V

    const/4 p1, 0x5

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->TRANSPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Lcom/ifengyu/intercom/update/dolphin/k$c;

    if-nez p1, :cond_1

    new-instance p1, Lcom/ifengyu/intercom/update/dolphin/k$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/update/dolphin/k$c;-><init>(Lcom/ifengyu/intercom/update/dolphin/k;Lcom/ifengyu/intercom/update/dolphin/k$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Lcom/ifengyu/intercom/update/dolphin/k$c;

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Lcom/ifengyu/intercom/update/dolphin/k$c;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string p1, "response false or not expected ack, exit update."

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->m()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->f()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->l()V

    const/16 p1, 0x64

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->RESTART:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/update/dolphin/g;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "UpdateHelper"

    const-string v1, "update failed, maybe crc32 is not right."

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    :goto_0
    return-void
.end method

.method private b(ZI)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    const-string v1, "UpdateHelper"

    if-eqz v0, :cond_0

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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->f()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->l()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->g()V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/update/dolphin/g;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/update/dolphin/g;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x63

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->FINISH:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/update/dolphin/g;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->k()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->j()V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response false or not expected ackId, ackId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected ackId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->i()V

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(I)V

    :goto_0
    return-void
.end method

.method private b(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->e()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0, p3, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/g;->a(Ljava/lang/String;ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;)V

    const/4 p1, 0x2

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private c(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->b()Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->f()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/dolphin/g;->release()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Landroid/app/AlarmManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:Z

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/p;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_2

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto :goto_1

    :cond_1
    const/16 v0, 0xc8

    goto :goto_1

    :cond_2
    const v0, 0x186a0

    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSendInterval: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->i:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/update/dolphin/k;->h()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    if-gt v0, v1, :cond_1

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    if-ge v0, v1, :cond_0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrease sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private h()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->d:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->c:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increase sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Lcom/ifengyu/intercom/update/dolphin/k$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k$c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->n:Lcom/ifengyu/intercom/update/dolphin/k$c;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->k:I

    return-void
.end method

.method private m()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->h:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()I
    .locals 4

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k$b;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

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

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    if-ge v0, v2, :cond_4

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    const/16 v1, 0x63

    if-ge v0, v1, :cond_4

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    const/16 v1, 0x62

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/update/dolphin/g;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    if-ge v0, v1, :cond_4

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    :cond_4
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->j:I

    return v0
.end method

.method public a(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/update/dolphin/k;->b(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "UpdateHelper"

    const-string p2, "prepare update error."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->c(Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;Z)V

    :cond_1
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->REQUEST:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->f:Lcom/ifengyu/intercom/update/dolphin/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/update/dolphin/g;->a()Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processReceivedAck state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k$b;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

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

    :cond_0
    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->b(ZI)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;ZI)V
    .locals 7

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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "invalid state, Expecting state is %s, but got %s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ifengyu/intercom/update/dolphin/k;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0, v3, v5}, Lcom/ifengyu/intercom/i/o;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/dolphin/k;->b(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/update/dolphin/k;->b(ZI)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/k;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->m:Z

    return v0
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/k;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/h/a;->a(Lcom/ifengyu/intercom/update/dolphin/f;)V

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/k;->p:Lcom/ifengyu/intercom/update/dolphin/k;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/ifengyu/intercom/update/dolphin/k;->p:Lcom/ifengyu/intercom/update/dolphin/k;

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/node/q/d;->a(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
