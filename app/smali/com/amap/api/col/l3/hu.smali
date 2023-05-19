.class public final Lcom/amap/api/col/l3/hu;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/col/l3/hu;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3
    sget-object p3, Lcom/amap/api/col/l3/hv;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iput-object p1, p0, Lcom/amap/api/col/l3/hu;->a:Ljava/io/InputStream;

    .line 5
    iput-object p2, p0, Lcom/amap/api/col/l3/hu;->b:Ljava/nio/charset/Charset;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lcom/amap/api/col/l3/hu;->c:[B

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/hu;)Ljava/nio/charset/Charset;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/hu;->b:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/hu;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/amap/api/col/l3/hu;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iput v3, p0, Lcom/amap/api/col/l3/hu;->d:I

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/hu;->e:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/hu;->a:Ljava/io/InputStream;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/hu;->c:[B

    if-eqz v1, :cond_7

    .line 4
    iget v1, p0, Lcom/amap/api/col/l3/hu;->d:I

    iget v2, p0, Lcom/amap/api/col/l3/hu;->e:I

    if-lt v1, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/amap/api/col/l3/hu;->b()V

    .line 6
    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3/hu;->d:I

    :goto_0
    iget v2, p0, Lcom/amap/api/col/l3/hu;->e:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/amap/api/col/l3/hu;->c:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_2

    .line 8
    iget v3, p0, Lcom/amap/api/col/l3/hu;->d:I

    if-eq v1, v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 9
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3/hu;->c:[B

    iget v5, p0, Lcom/amap/api/col/l3/hu;->d:I

    sub-int/2addr v3, v5

    iget-object v6, p0, Lcom/amap/api/col/l3/hu;->b:Ljava/nio/charset/Charset;

    .line 10
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 11
    iput v1, p0, Lcom/amap/api/col/l3/hu;->d:I

    .line 12
    monitor-exit v0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    new-instance v1, Lcom/amap/api/col/l3/hu$1;

    iget v2, p0, Lcom/amap/api/col/l3/hu;->e:I

    iget v4, p0, Lcom/amap/api/col/l3/hu;->d:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/amap/api/col/l3/hu$1;-><init>(Lcom/amap/api/col/l3/hu;I)V

    .line 14
    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3/hu;->c:[B

    iget v4, p0, Lcom/amap/api/col/l3/hu;->d:I

    iget v5, p0, Lcom/amap/api/col/l3/hu;->e:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 15
    iput v2, p0, Lcom/amap/api/col/l3/hu;->e:I

    .line 16
    invoke-direct {p0}, Lcom/amap/api/col/l3/hu;->b()V

    .line 17
    iget v2, p0, Lcom/amap/api/col/l3/hu;->d:I

    :goto_2
    iget v4, p0, Lcom/amap/api/col/l3/hu;->e:I

    if-eq v2, v4, :cond_4

    .line 18
    iget-object v4, p0, Lcom/amap/api/col/l3/hu;->c:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_6

    .line 19
    iget v3, p0, Lcom/amap/api/col/l3/hu;->d:I

    if-eq v2, v3, :cond_5

    sub-int v5, v2, v3

    .line 20
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 21
    iput v2, p0, Lcom/amap/api/col/l3/hu;->d:I

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0

    throw v1
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/hu;->a:Ljava/io/InputStream;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/hu;->c:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/amap/api/col/l3/hu;->c:[B

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/hu;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
