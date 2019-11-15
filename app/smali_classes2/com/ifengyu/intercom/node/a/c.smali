.class public final Lcom/ifengyu/intercom/node/a/c;
.super Ljava/lang/Object;
.source "ConnectionRetryTimer.java"


# static fields
.field public static a:Lcom/ifengyu/intercom/node/a/c;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:J

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ifengyu/intercom/node/a/c;->b:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/node/a/c;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->d:J

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/a/c;->h:Z

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/node/a/c;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/a/c;->a:Lcom/ifengyu/intercom/node/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/a/c;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/a/c;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/node/a/c;->a:Lcom/ifengyu/intercom/node/a/c;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/a/c;->a:Lcom/ifengyu/intercom/node/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/a/c;->h:Z

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/a/c;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/a/c;->h:Z

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->f:J

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->g:J

    return-void
.end method

.method public d()J
    .locals 8

    const-wide/16 v6, 0x1

    const-wide/16 v0, 0x8

    iget-wide v2, p0, Lcom/ifengyu/intercom/node/a/c;->f:J

    add-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->f:J

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/ifengyu/intercom/node/a/c;->f:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    shl-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ifengyu/intercom/node/a/c;->g:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ifengyu/intercom/node/a/c;->g:J

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/a/c;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x36ee80

    :cond_0
    return-wide v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 4

    const-string v0, "ConnectionRetryTimer"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->f:J

    iget-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->g:J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/node/a/c;->g:J

    return-void
.end method
