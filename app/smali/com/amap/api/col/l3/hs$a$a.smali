.class final Lcom/amap/api/col/l3/hs$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/hs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/hs$a;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3/hs$a;Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/hs$a$a;->a:Lcom/amap/api/col/l3/hs$a;

    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3/hs$a;Ljava/io/OutputStream;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/hs$a$a;-><init>(Lcom/amap/api/col/l3/hs$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/amap/api/col/l3/hs$a$a;->a:Lcom/amap/api/col/l3/hs$a;

    invoke-static {v0}, Lcom/amap/api/col/l3/hs$a;->c(Lcom/amap/api/col/l3/hs$a;)Z

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/amap/api/col/l3/hs$a$a;->a:Lcom/amap/api/col/l3/hs$a;

    invoke-static {v0}, Lcom/amap/api/col/l3/hs$a;->c(Lcom/amap/api/col/l3/hs$a;)Z

    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    iget-object p1, p0, Lcom/amap/api/col/l3/hs$a$a;->a:Lcom/amap/api/col/l3/hs$a;

    invoke-static {p1}, Lcom/amap/api/col/l3/hs$a;->c(Lcom/amap/api/col/l3/hs$a;)Z

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    iget-object p1, p0, Lcom/amap/api/col/l3/hs$a$a;->a:Lcom/amap/api/col/l3/hs$a;

    invoke-static {p1}, Lcom/amap/api/col/l3/hs$a;->c(Lcom/amap/api/col/l3/hs$a;)Z

    return-void
.end method
