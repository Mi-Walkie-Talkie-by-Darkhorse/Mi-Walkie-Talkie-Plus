.class public Lcom/ksyun/ks3/auth/d$a;
.super Ljava/io/FilterOutputStream;
.source "RepeatableInputStreamRequestEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/ks3/auth/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ksyun/ks3/model/b/d;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Ljava/io/OutputStream;JLcom/ksyun/ks3/model/b/d;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p4, p0, Lcom/ksyun/ks3/auth/d$a;->a:Lcom/ksyun/ks3/model/b/d;

    iput-wide p2, p0, Lcom/ksyun/ks3/auth/d$a;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->b:J

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "CountingOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CountingOutputStream finalize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/ksyun/ks3/auth/d$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->b:J

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->b:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/ksyun/ks3/auth/d$a;->c:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ksyun/ks3/auth/d$a;->a:Lcom/ksyun/ks3/model/b/d;

    invoke-interface {v2, v0, v1}, Lcom/ksyun/ks3/model/b/d;->onTaskProgress(D)V

    :cond_0
    return-void

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/ksyun/ks3/auth/d$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->b:J

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/ksyun/ks3/auth/d$a;->b:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/ksyun/ks3/auth/d$a;->c:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ksyun/ks3/auth/d$a;->a:Lcom/ksyun/ks3/model/b/d;

    invoke-interface {v2, v0, v1}, Lcom/ksyun/ks3/model/b/d;->onTaskProgress(D)V

    :cond_0
    return-void

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method
