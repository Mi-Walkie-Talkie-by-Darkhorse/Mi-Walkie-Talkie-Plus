.class final Lcom/efs/sdk/pa/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/efs/sdk/pa/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/e;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/efs/sdk/pa/a/e;->c:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/efs/sdk/pa/a/e;->d:J

    iput-wide v0, p0, Lcom/efs/sdk/pa/a/e;->e:J

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/e;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 10

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/efs/sdk/pa/a/e;->d:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/efs/sdk/pa/a/e;->e:J

    iput-object p1, p0, Lcom/efs/sdk/pa/a/e;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/efs/sdk/pa/a/e;->b:Z

    iget-object p1, p0, Lcom/efs/sdk/pa/a/e;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/efs/sdk/pa/a/e;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/efs/sdk/pa/a/e;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/efs/sdk/pa/a/e;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/efs/sdk/pa/a/e;->f:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/efs/sdk/pa/a/e;->e:J

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcom/efs/sdk/pa/a/e;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/efs/sdk/pa/a/d;

    iget-object v5, p0, Lcom/efs/sdk/pa/a/e;->c:Ljava/lang/String;

    move-wide v6, v0

    move-wide v8, v2

    invoke-interface/range {v4 .. v9}, Lcom/efs/sdk/pa/a/d;->a(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_2
    return-void
.end method
