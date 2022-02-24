.class public final Lcom/ifengyu/intercom/node/q/c;
.super Ljava/lang/Object;
.source "ConnectionRetryTimer.java"


# static fields
.field public static c:Lcom/ifengyu/intercom/node/q/c;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Lcom/ifengyu/intercom/node/q/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/node/q/c;->c:Lcom/ifengyu/intercom/node/q/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/node/q/c;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/q/c;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/node/q/c;->c:Lcom/ifengyu/intercom/node/q/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/q/c;->c:Lcom/ifengyu/intercom/node/q/c;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/node/q/c;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/q/c;->a:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 2
    iget-wide v2, p0, Lcom/ifengyu/intercom/node/q/c;->b:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ifengyu/intercom/node/q/c;->b:J

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/q/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x36ee80

    :cond_0
    return-wide v0
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/q/c;->e()V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 4

    const-string v0, "ConnectionRetryTimer"

    const-string v1, "onError"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x8

    .line 2
    iput-wide v0, p0, Lcom/ifengyu/intercom/node/q/c;->a:J

    .line 3
    iget-wide v0, p0, Lcom/ifengyu/intercom/node/q/c;->b:J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/q/c;->b:J

    return-void
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/ifengyu/intercom/node/q/c;->a:J

    .line 2
    iput-wide v0, p0, Lcom/ifengyu/intercom/node/q/c;->b:J

    return-void
.end method
