.class public Lcom/xiaomi/push/fb;
.super Lcom/xiaomi/push/eu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/fb$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/fb$a;

.field private b:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private volatile d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/push/eu;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->c:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/fb;->b:J

    new-instance p1, Lcom/xiaomi/push/fb$a;

    invoke-direct {p1}, Lcom/xiaomi/push/fb$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const-string p1, "[Policy] Intelligent policy"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)J
    .locals 14

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v0, v0, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/32 v2, 0xea60

    rem-long v4, v0, v2

    const-wide/32 v6, 0x927c0

    const-wide/16 v8, 0x7530

    const-wide/32 v10, 0x33450

    if-nez p1, :cond_2

    const-wide/16 v12, 0x0

    cmp-long p1, v4, v12

    if-eqz p1, :cond_0

    cmp-long v4, v0, v10

    if-ltz v4, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    add-long/2addr v0, v8

    :goto_0
    if-eqz p1, :cond_1

    cmp-long p1, v0, v6

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v6, v0

    goto :goto_1

    :cond_2
    cmp-long p1, v0, v10

    if-gtz p1, :cond_3

    return-wide v0

    :cond_3
    sub-long v6, v0, v8

    :goto_1
    return-wide v6
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iput p1, v0, Lcom/xiaomi/push/fb$a;->a:I

    const-string p1, "WIFI-ID-UNKNOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "W-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iput-object p2, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget p1, p1, Lcom/xiaomi/push/fb$a;->a:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->d:Z

    return-void
.end method

.method private a(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v1, v0, Lcom/xiaomi/push/fb$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/fb$a;->c:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/push/fb$a;->b:I

    iput-wide p1, v0, Lcom/xiaomi/push/fb$a;->a:J

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, v0, Lcom/xiaomi/push/fb$a;->b:Z

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    :goto_0
    iput v0, p1, Lcom/xiaomi/push/fb$a;->b:I

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v1, p1, Lcom/xiaomi/push/fb$a;->b:I

    if-ltz v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    iput v1, p1, Lcom/xiaomi/push/fb$a;->b:I

    :goto_1
    return-void
.end method

.method private a(J)Z
    .locals 5

    const/4 v0, 0x1

    const-wide/32 v1, 0x927c0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x395f8

    const/4 v3, -0x4

    cmp-long v4, p1, v1

    if-gez v4, :cond_1

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget p1, p1, Lcom/xiaomi/push/fb$a;->b:I

    if-gt p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget p1, p1, Lcom/xiaomi/push/fb$a;->b:I

    if-gt p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iput-wide p1, v0, Lcom/xiaomi/push/fb$a;->a:J

    const/4 p1, 0x0

    iput p1, v0, Lcom/xiaomi/push/fb$a;->b:I

    iput p1, v0, Lcom/xiaomi/push/fb$a;->c:I

    iput-boolean p1, v0, Lcom/xiaomi/push/fb$a;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/xiaomi/push/fb$a;->b:J

    iput-boolean p1, v0, Lcom/xiaomi/push/fb$a;->b:Z

    iput-wide v1, v0, Lcom/xiaomi/push/fb$a;->c:J

    return-void
.end method

.method private b(Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HB] adjustHeartbeat isTimeOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v3, v2, Lcom/xiaomi/push/fb$a;->a:Z

    if-nez v3, :cond_0

    iget-wide v3, v2, Lcom/xiaomi/push/fb$a;->c:J

    iget-wide v5, v2, Lcom/xiaomi/push/fb$a;->a:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/xiaomi/push/fb$a;->c:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HB] adjustHeartbeat duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v3, v3, Lcom/xiaomi/push/fb$a;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v3, v2, Lcom/xiaomi/push/fb$a;->a:Z

    const-wide/16 v4, 0x7530

    const-string v6, "[HB] update Alarm interval = "

    const-wide/16 v7, 0x3a98

    const-wide/32 v9, 0x33450

    const-wide/32 v11, 0x395f8

    if-eqz v3, :cond_4

    iget-wide v2, v2, Lcom/xiaomi/push/fb$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/eu;->a(ZJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v13, v3, Lcom/xiaomi/push/fb$a;->b:J

    const-wide v15, 0x9a7ec800L

    add-long/2addr v13, v15

    sub-long/2addr v13, v1

    const-wide/16 v1, 0x0

    cmp-long v15, v13, v1

    if-lez v15, :cond_1

    return-void

    :cond_1
    iget-wide v13, v3, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/32 v15, 0xea60

    rem-long v17, v13, v15

    cmp-long v3, v13, v11

    if-lez v3, :cond_3

    cmp-long v3, v17, v1

    if-nez v3, :cond_2

    sub-long/2addr v13, v15

    goto :goto_0

    :cond_2
    sub-long/2addr v13, v4

    :cond_3
    :goto_0
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/fb;->b(J)V

    sub-long v3, v1, v7

    invoke-static {v3, v4}, Lcom/xiaomi/push/fh;->a(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/fb;->a(Z)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/push/fb;->a(J)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v14, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v15, v14, Lcom/xiaomi/push/fb$a;->b:I

    const/4 v7, -0x4

    if-gt v15, v7, :cond_5

    cmp-long v7, v2, v11

    if-lez v7, :cond_5

    iget-wide v7, v14, Lcom/xiaomi/push/fb$a;->a:J

    sub-long/2addr v7, v4

    iput-wide v7, v14, Lcom/xiaomi/push/fb$a;->a:J

    :cond_5
    iget-object v4, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/xiaomi/push/fb$a;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/xiaomi/push/fb$a;->b:J

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HB] adjustHeartbeat fixed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", continuousCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v5, v5, Lcom/xiaomi/push/fb$a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v7, v5, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v7, v5, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v4, v5, v13, v7, v8}, Lcom/xiaomi/push/ev;->a(Lcom/xiaomi/push/fb$a;ZJ)V

    if-eqz v13, :cond_7

    iget-object v1, v0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v2, v2, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v1, :cond_8

    iget-object v4, v0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v5, v5, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/fb;->a(JZ)V

    cmp-long v1, v2, v9

    if-lez v1, :cond_9

    const-wide/16 v4, 0x3a98

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Lcom/xiaomi/push/fh;->a(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v1, v1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;)Lcom/xiaomi/push/fb$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fb$a;->a(Lcom/xiaomi/push/fb$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HB] reload interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v1, v1, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x33450

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/fb;->b(J)V

    const-string v0, "[HB] reload no cache"

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    sget-boolean v0, Lcom/xiaomi/push/service/receivers/BatteryReceiver;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "[HB] interval battery"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-wide/32 v0, 0x3a980

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->b:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v0, v0, Lcom/xiaomi/push/fb$a;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/eu;->a:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HB] compute interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v1, v1, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v0, v0, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/32 v2, 0x33450

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const-wide/32 v0, 0x2f9b8

    return-wide v0

    :cond_2
    const-wide/16 v2, 0x3a98

    sub-long/2addr v0, v2

    return-wide v0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/eu;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v0, v0, Lcom/xiaomi/push/fb$a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/push/eu;->a()V

    return-void
.end method

.method public a(J)V
    .locals 5

    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v0, v0, Lcom/xiaomi/push/fb$a;->a:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "[HB] onReadOrWrite = "

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/fb;->b:J

    sub-long/2addr v0, v2

    iput-wide p1, p0, Lcom/xiaomi/push/fb;->b:J

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->c:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/net/NetworkInfo;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "WIFI-ID-UNKNOWN"

    invoke-direct {p0, v3, p1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/eu;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/push/fb;->b:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/fb;->e()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/push/fb$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v0, v0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 6

    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v0, v0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HB] onPong isWifiChanged ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/eu;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/xiaomi/push/eu;->a:Z

    iput-boolean v1, p0, Lcom/xiaomi/push/fb;->c:Z

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v2, v0, Lcom/xiaomi/push/fb$a;->a:Z

    if-nez v2, :cond_4

    iget-wide v2, v0, Lcom/xiaomi/push/fb$a;->c:J

    iget-wide v4, v0, Lcom/xiaomi/push/fb$a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/xiaomi/push/fb$a;->c:J

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/fb;->a(Z)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/fb;->b(Z)V

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/xiaomi/push/fb;->c:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/fb;->b:J

    :cond_5
    :goto_1
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v0, v0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "[HB] onPingTimeout"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/fb;->a(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/push/fb;->b(Z)V

    iput-boolean v0, p0, Lcom/xiaomi/push/fb;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/fb;->b:J

    :cond_2
    :goto_0
    return-void
.end method
