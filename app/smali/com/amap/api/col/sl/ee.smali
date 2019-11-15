.class public final Lcom/amap/api/col/sl/ee;
.super Lcom/amap/api/col/sl/ek;
.source "ByteJoinDataStrategy.java"


# instance fields
.field a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/ek;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ee;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/sl/ek;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/ek;-><init>(Lcom/amap/api/col/sl/ek;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ee;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/ee;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ee;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ee;->a:Ljava/io/ByteArrayOutputStream;

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b([B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ee;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
