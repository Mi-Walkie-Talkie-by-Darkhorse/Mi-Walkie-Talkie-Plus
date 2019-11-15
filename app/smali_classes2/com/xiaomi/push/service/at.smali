.class Lcom/xiaomi/push/service/at;
.super Ljava/lang/Object;


# static fields
.field private static e:I


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x493e0

    sput v0, Lcom/xiaomi/push/service/at;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/at;->d:I

    iput-object p1, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/xiaomi/push/service/at;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/at;->c:J

    return-void
.end method

.method private b()I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/push/service/at;->d:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    const v0, 0x493e0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/xiaomi/push/service/at;->d:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    const v0, 0xea60

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/xiaomi/push/service/at;->d:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const/16 v0, 0x2710

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/xiaomi/push/service/at;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/push/service/at;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    iget v0, p0, Lcom/xiaomi/push/service/at;->b:I

    sget v1, Lcom/xiaomi/push/service/at;->e:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/xiaomi/push/service/at;->b:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/xiaomi/push/service/at;->b:I

    iget v1, p0, Lcom/xiaomi/push/service/at;->b:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/xiaomi/push/service/at;->b:I

    goto :goto_0

    :cond_5
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/xiaomi/push/service/at;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/at;->c:J

    iget-object v0, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/at;->d:I

    return-void
.end method

.method public a(Z)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/at;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/at;->d:I

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$d;

    iget-object v2, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/push/service/at;->b()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->b(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/xiaomi/push/service/at;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/at;->d:I

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$d;

    iget-object v3, p0, Lcom/xiaomi/push/service/at;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    iget v0, p0, Lcom/xiaomi/push/service/at;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stats/f;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/push/service/ag;->b()V

    :cond_4
    iget v0, p0, Lcom/xiaomi/push/service/at;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/push/service/ag;->a()V

    goto :goto_0

    :cond_5
    const-string v0, "should not reconnect as no client or network."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
