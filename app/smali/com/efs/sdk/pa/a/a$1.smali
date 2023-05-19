.class final Lcom/efs/sdk/pa/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/pa/a/a;


# direct methods
.method constructor <init>(Lcom/efs/sdk/pa/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 2
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 4
    iget-wide v3, v2, Lcom/efs/sdk/pa/a/a;->j:J

    sub-long/2addr v0, v3

    .line 5
    iget-wide v3, v2, Lcom/efs/sdk/pa/a/a;->k:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 6
    iget-object v2, v2, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/efs/sdk/pa/PAANRListener;->unexcept(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 9
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 13
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 14
    iget-object v1, v0, Lcom/efs/sdk/pa/a/a;->b:Landroid/os/Handler;

    .line 15
    iget-object v0, v0, Lcom/efs/sdk/pa/a/a;->n:Ljava/lang/Runnable;

    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 18
    iget-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 19
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 21
    iget-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 22
    iget-wide v3, v0, Lcom/efs/sdk/pa/a/a;->e:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-boolean v2, v0, Lcom/efs/sdk/pa/a/a;->l:Z

    if-eqz v2, :cond_3

    .line 25
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->c:Ljava/lang/Thread;

    invoke-static {v2}, Lcom/efs/sdk/pa/a/a;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {v1}, Lcom/efs/sdk/pa/a/a;->a(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 27
    :goto_0
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 28
    iget-object v0, v0, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/efs/sdk/pa/PAANRListener;->anrStack(Ljava/lang/String;)V

    .line 29
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 30
    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->j:J

    .line 31
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 32
    iget-object v1, v0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    .line 33
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->m:Ljava/lang/Runnable;

    .line 34
    iget-wide v3, v0, Lcom/efs/sdk/pa/a/a;->d:J

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
