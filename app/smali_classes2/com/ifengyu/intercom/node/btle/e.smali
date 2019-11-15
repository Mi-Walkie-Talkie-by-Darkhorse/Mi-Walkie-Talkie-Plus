.class public Lcom/ifengyu/intercom/node/btle/e;
.super Ljava/io/OutputStream;
.source "BtleOutputStream.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private c:Lcom/ifengyu/intercom/node/btle/i;

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/btle/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/btle/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/ifengyu/intercom/node/btle/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/e;->d:Z

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Lcom/ifengyu/intercom/node/btle/i;

    return-void
.end method

.method private a(I)I
    .locals 1

    add-int/lit8 v0, p1, -0x3

    return v0
.end method

.method private a(IZ)I
    .locals 2

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x4

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 p1, v0, 0x4

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    if-lt p1, v0, :cond_0

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/btle/i;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Lcom/ifengyu/intercom/node/btle/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/e;->d:Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/btle/e;->a:Ljava/lang/String;

    const-string v1, "closing BtleOutputStream"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/e;->d:Z

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/btle/e;->a:Ljava/lang/String;

    const-string v1, "Ignoring flush()"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .locals 5
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/node/btle/e;->a:Ljava/lang/String;

    const-string v1, "write byte"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lez v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    iget v3, p0, Lcom/ifengyu/intercom/node/btle/e;->b:I

    if-ge v1, v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ifengyu/intercom/node/btle/i;->a([B)V

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/e;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write to BtleOutputStream as it is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_0
    if-lez v1, :cond_3

    if-ne v1, p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/node/btle/e;->a(IZ)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/e;->c:Lcom/ifengyu/intercom/node/btle/i;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v4, v3, p3, v0}, Lcom/ifengyu/intercom/node/btle/i;->a([BIZ)V

    add-int/2addr p2, v2

    sub-int v0, v1, v2

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move v1, p3

    goto :goto_0
.end method
