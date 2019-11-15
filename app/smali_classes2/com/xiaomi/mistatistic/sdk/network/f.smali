.class final Lcom/xiaomi/mistatistic/sdk/network/f;
.super Ljava/io/OutputStream;
.source "MIOutputStream.java"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Lcom/xiaomi/mistatistic/sdk/network/c;

.field private c:Lcom/xiaomi/mistatistic/sdk/network/d;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/d;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->b:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->c:Lcom/xiaomi/mistatistic/sdk/network/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/f;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/f;->a(Ljava/lang/Exception;)V

    throw v0
.end method
