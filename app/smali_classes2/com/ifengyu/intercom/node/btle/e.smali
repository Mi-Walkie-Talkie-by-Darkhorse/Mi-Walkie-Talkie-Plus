.class public Lcom/ifengyu/intercom/node/btle/e;
.super Ljava/io/OutputStream;
.source "BtleOutputStream.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:I

.field private b:Lcom/ifengyu/intercom/node/btle/i;

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/node/btle/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/ifengyu/intercom/node/btle/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/e;->a(I)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/e;->a:I

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/e;->b:Lcom/ifengyu/intercom/node/btle/i;

    return-void
.end method

.method private a(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x3

    return p1
.end method

.method private a(IZ)I
    .locals 1

    if-eqz p2, :cond_1

    .line 3
    iget p2, p0, Lcom/ifengyu/intercom/node/btle/e;->a:I

    if-ge p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x4

    if-ge v0, p2, :cond_0

    return p1

    .line 4
    :cond_0
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/e;->a:I

    add-int/lit8 p1, p1, -0x8

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 5
    :cond_1
    iget p2, p0, Lcom/ifengyu/intercom/node/btle/e;->a:I

    if-ge p1, p2, :cond_2

    return p1

    :cond_2
    return p2
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/btle/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/e;->b:Lcom/ifengyu/intercom/node/btle/i;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/node/btle/e;->d:Ljava/lang/String;

    const-string v1, "closing BtleOutputStream"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Z

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/node/btle/e;->d:Ljava/lang/String;

    const-string v1, "Ignoring flush()"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/node/btle/e;->d:Ljava/lang/String;

    const-string v1, "write byte"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 4
    iget v2, p0, Lcom/ifengyu/intercom/node/btle/e;->a:I

    if-ge v0, v2, :cond_0

    move v2, v0

    .line 5
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p1, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/e;->b:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ifengyu/intercom/node/btle/i;->a([B)V

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Z

    if-nez v0, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 9
    array-length v1, p1

    if-gt v0, v1, :cond_2

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    if-ne v0, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/node/btle/e;->a(IZ)I

    move-result v2

    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 12
    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/e;->b:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v4, v3, p3, v1}, Lcom/ifengyu/intercom/node/btle/i;->a([BIZ)V

    add-int/2addr p2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot write to BtleOutputStream as it is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
