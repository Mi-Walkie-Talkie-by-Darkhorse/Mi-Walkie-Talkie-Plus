.class public Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;
.super Ljava/lang/Object;
.source "ZLibCompression.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/util/compress/ICompression;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress([B)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v1, [B

    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->reset()V

    invoke-virtual {v2, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v4, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v5, "compress fail"

    invoke-static {v4, v5, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v3, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v4, "close fail"

    invoke-static {v3, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v3, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v4, "close fail"

    invoke-static {v3, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_5
    sget-object v4, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v5, "compress out of memory"

    invoke-static {v4, v5, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    sget-object v3, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v4, "close fail"

    invoke-static {v3, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_3
    throw v0

    :catch_5
    move-exception v1

    sget-object v2, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v3, "close fail"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public decompress([B)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v1, [B

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->reset()V

    invoke-virtual {v2, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v4, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v5, "decompress fail"

    invoke-static {v4, v5, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v3, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v4, "close fail"

    invoke-static {v3, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v3, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v4, "close fail"

    invoke-static {v3, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_5
    sget-object v4, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v5, "decompress out of memory"

    invoke-static {v4, v5, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    sget-object v3, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v4, "close fail"

    invoke-static {v3, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_3
    throw v0

    :catch_5
    move-exception v1

    sget-object v2, Lcom/mi/milinkforgame/sdk/util/compress/ZLibCompression;->TAG:Ljava/lang/String;

    const-string v3, "close fail"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
