.class public Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/sealshark/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;,
        Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;,
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

.field private volatile k:Z

.field private l:I

.field private m:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

.field private n:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;

.field private final o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j:I

    .line 9
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:Z

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->o:Landroid/content/BroadcastReceiver;

    .line 11
    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    const-string v0, "alarm"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 14
    new-instance p1, Lcom/ifengyu/intercom/update/sealshark/g;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    invoke-direct {p1, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/g;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 16
    new-instance p1, Lcom/ifengyu/intercom/update/sealshark/i;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    invoke-direct {p1, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/i;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/h/a;->a()Lcom/ifengyu/intercom/h/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/h/a;->a(Lcom/ifengyu/intercom/update/sealshark/d;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
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

.method private a(II)V
    .locals 0

    .line 29
    iput p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    .line 31
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j()V

    const/16 p1, 0x64

    const/4 v1, 0x2

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    .line 33
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/update/sealshark/e;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "UpdateHelper"

    const-string v1, "update failed, maybe crc32 is not right."

    .line 36
    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    :goto_0
    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 2

    .line 22
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
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

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:Z

    .line 25
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b()V

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v1, p2, p1}, Lcom/ifengyu/intercom/update/sealshark/e;->a(Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:I

    return p0
.end method

.method private b()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/p;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/16 v0, 0x64

    goto :goto_1

    :cond_1
    const/16 v0, 0xc8

    goto :goto_1

    :cond_2
    const v0, 0x186a0

    .line 5
    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    .line 7
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    .line 8
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

.method private b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d(ZI)V

    return-void
.end method

.method private b(ZI)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    const-string v1, "UpdateHelper"

    if-eqz v0, :cond_0

    .line 11
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

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/update/sealshark/e;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j()V

    const/4 p1, 0x5

    const/4 p2, 0x1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;

    if-nez p1, :cond_1

    .line 17
    new-instance p1, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$a;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string p1, "response false or not expected offset, exit update."

    .line 19
    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private c(ZI)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
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

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j()V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d()V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/update/sealshark/e;->b(I)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/update/sealshark/e;->c(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x63

    const/4 p2, 0x2

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(II)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/update/sealshark/e;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g()V

    .line 17
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 29
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    if-gt v0, v1, :cond_1

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    .line 30
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    if-ge v0, v1, :cond_0

    .line 31
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrease sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private d(ZI)V
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:Z

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/update/sealshark/e;->b()Z

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    .line 7
    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v3}, Lcom/ifengyu/intercom/update/sealshark/e;->release()V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i()V

    .line 9
    iput-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    .line 10
    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:Z

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$c;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;ZI)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 13
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    .line 15
    iget-object v3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v3}, Lcom/ifengyu/intercom/update/sealshark/e;->release()V

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i()V

    .line 17
    iput-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    .line 18
    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:Z

    .line 19
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    .line 20
    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$c;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;ZI)V

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 21
    :goto_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c()V

    .line 22
    iget-object v4, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {v4}, Lcom/ifengyu/intercom/update/sealshark/e;->release()V

    .line 23
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i()V

    .line 24
    iput-object v2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->i:Landroid/app/AlarmManager;

    .line 25
    iput-boolean v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k:Z

    .line 26
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    .line 27
    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$c;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;ZI)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    .line 28
    throw v3

    :cond_1
    :goto_2
    return-void
.end method

.method private e()Landroid/app/PendingIntent;
    .locals 4

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h()V

    return-void
.end method

.method private f()V
    .locals 4

    const-string v0, "UpdateHelper"

    const-string v1, "handleAckWaitingTimerFired"

    .line 2
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const-string v1, "Too many consecutive failures, discard update."

    .line 5
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    if-nez v1, :cond_1

    const-string v1, "update request timeout, discard update."

    .line 9
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    goto :goto_0

    .line 11
    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "wait crc32 result timeout, discard update."

    .line 12
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->k()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c:I

    if-gt v0, v1, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increase sendInterval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

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

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->n:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$d;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->j:I

    return-void
.end method

.method private k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->h:Ljava/util/concurrent/locks/Lock;

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


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->d(ZI)V

    return-void
.end method

.method public a(ILjava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;)V
    .locals 2

    .line 15
    iget v0, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 16
    :cond_0
    iput-object p3, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(ILjava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const-string p1, "UpdateHelper"

    const-string p3, "prepare update error."

    .line 18
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(Z)V

    return-void

    .line 20
    :cond_1
    iput p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/update/sealshark/e;->a()Z

    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current update state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:I

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    :try_start_0
    iget p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->e:I

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->c(ZI)V

    goto :goto_0

    .line 9
    :cond_2
    iget p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->b(ZI)V

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->m:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->f:Lcom/ifengyu/intercom/update/sealshark/e;

    iget p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->l:I

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/update/sealshark/e;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;-><init>(Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;)V

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw p1
.end method
