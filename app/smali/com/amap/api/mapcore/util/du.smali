.class public Lcom/amap/api/mapcore/util/du;
.super Lcom/amap/api/mapcore/util/em;
.source "NativeBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/du$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/em",
        "<",
        "Lcom/amap/api/mapcore/util/du$a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/amap/api/mapcore/util/du$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/em;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/amap/api/mapcore/util/du$a;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/du;->a:Lcom/amap/api/mapcore/util/el;

    check-cast v0, Lcom/amap/api/mapcore/util/du$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/util/du$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/du$a;-><init>()V

    move-object v1, v0

    :goto_0
    iget v0, v1, Lcom/amap/api/mapcore/util/du$a;->e:I

    if-ge v0, p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/du$a;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/du;->b:Lcom/amap/api/mapcore/util/du$a;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/el;->a(Lcom/amap/api/mapcore/util/el;Lcom/amap/api/mapcore/util/el;)Lcom/amap/api/mapcore/util/el;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/du$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/du;->b:Lcom/amap/api/mapcore/util/du$a;

    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->f:Lcom/amap/api/mapcore/util/el;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/du;->a:Lcom/amap/api/mapcore/util/el;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->f:Lcom/amap/api/mapcore/util/el;

    move-object v1, v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/du;->b:Lcom/amap/api/mapcore/util/du$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/du;->b(Lcom/amap/api/mapcore/util/el;)Lcom/amap/api/mapcore/util/el;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/du$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/du;->b:Lcom/amap/api/mapcore/util/du$a;

    return-void
.end method

.method public b(I)Ljava/nio/ShortBuffer;
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/du;->a(I)Lcom/amap/api/mapcore/util/du$a;

    move-result-object v0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->b:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->b:Ljava/nio/ShortBuffer;

    :goto_0
    iget-object v0, v0, Lcom/amap/api/mapcore/util/du$a;->b:Ljava/nio/ShortBuffer;

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->b:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public c(I)Ljava/nio/FloatBuffer;
    .locals 2

    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/du;->a(I)Lcom/amap/api/mapcore/util/du$a;

    move-result-object v0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->c:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->c:Ljava/nio/FloatBuffer;

    :goto_0
    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/du$a;->c:Ljava/nio/FloatBuffer;

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/amap/api/mapcore/util/du$a;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method
