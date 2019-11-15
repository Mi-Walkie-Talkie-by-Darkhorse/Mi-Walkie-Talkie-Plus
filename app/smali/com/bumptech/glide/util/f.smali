.class public Lcom/bumptech/glide/util/f;
.super Ljava/io/FilterInputStream;
.source "MarkEnforcingInputStream.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bumptech/glide/util/f;->a:I

    return-void
.end method

.method private a(J)J
    .locals 3

    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    if-nez v0, :cond_1

    const-wide/16 p1, -0x1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    int-to-long p1, v0

    goto :goto_0
.end method

.method private b(J)V
    .locals 3

    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/util/f;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/bumptech/glide/util/f;->a:I

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public mark(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iput p1, p0, Lcom/bumptech/glide/util/f;->a:I

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x1

    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/util/f;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/util/f;->b(J)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    int-to-long v2, p3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/util/f;->a(J)J

    move-result-wide v2

    long-to-int v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/util/f;->b(J)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/bumptech/glide/util/f;->a:I

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/util/f;->a(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, v2, v3}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/util/f;->b(J)V

    goto :goto_0
.end method
