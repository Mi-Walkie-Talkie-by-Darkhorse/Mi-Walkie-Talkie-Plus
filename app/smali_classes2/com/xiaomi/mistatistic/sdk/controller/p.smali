.class public Lcom/xiaomi/mistatistic/sdk/controller/p;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/controller/p;


# instance fields
.field private b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/p$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/controller/p;
    .locals 2

    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/p;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/p$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p;IJ)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c()V
    .locals 6

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "UPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY_INTERVAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "UPE"

    const-string v1, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY %d with delay %dms "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onEventRecorded exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "UPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->e:J

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/p$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$4;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public e()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "RemoteDataUploadManager isUploading, should NOT upload now"

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v2}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->d()I

    move-result v2

    iget-boolean v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Z

    if-nez v3, :cond_2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    :cond_2
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Z

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Z

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->e:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_3
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->b:Z

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->d:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p;->c:I

    return v0
.end method
