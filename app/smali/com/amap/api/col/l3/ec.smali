.class public final Lcom/amap/api/col/l3/ec;
.super Lcom/amap/api/col/l3/et;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/ec$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/et<",
        "Lcom/amap/api/col/l3/ec$a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/amap/api/col/l3/ec$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3/et;-><init>()V

    return-void
.end method

.method private b(I)Lcom/amap/api/col/l3/ec$a;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/et;->a:Lcom/amap/api/col/l3/es;

    check-cast v0, Lcom/amap/api/col/l3/ec$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/ec$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ec$a;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/amap/api/col/l3/es;->f:Lcom/amap/api/col/l3/es;

    iput-object v2, p0, Lcom/amap/api/col/l3/et;->a:Lcom/amap/api/col/l3/es;

    iput-object v1, v0, Lcom/amap/api/col/l3/es;->f:Lcom/amap/api/col/l3/es;

    :goto_0
    iget v2, v0, Lcom/amap/api/col/l3/ec$a;->e:I

    if-ge v2, p1, :cond_2

    const v2, 0x8000

    if-ge p1, v2, :cond_1

    const p1, 0x8000

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/l3/ec$a;->a:Ljava/nio/ByteBuffer;

    iput p1, v0, Lcom/amap/api/col/l3/ec$a;->e:I

    iput-object v1, v0, Lcom/amap/api/col/l3/ec$a;->b:Ljava/nio/ShortBuffer;

    iput-object v1, v0, Lcom/amap/api/col/l3/ec$a;->d:Ljava/nio/IntBuffer;

    iput-object v1, v0, Lcom/amap/api/col/l3/ec$a;->c:Ljava/nio/FloatBuffer;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/ec;->b:Lcom/amap/api/col/l3/ec$a;

    iget-object v1, v0, Lcom/amap/api/col/l3/es;->f:Lcom/amap/api/col/l3/es;

    if-nez v1, :cond_3

    iput-object p1, v0, Lcom/amap/api/col/l3/es;->f:Lcom/amap/api/col/l3/es;

    iput-object v0, p0, Lcom/amap/api/col/l3/ec;->b:Lcom/amap/api/col/l3/ec$a;

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'item\' is a list"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/ec;->b(I)Lcom/amap/api/col/l3/ec$a;

    move-result-object p1

    iget-object v0, p1, Lcom/amap/api/col/l3/ec$a;->c:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/amap/api/col/l3/ec$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p1, Lcom/amap/api/col/l3/ec$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/col/l3/ec$a;->c:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p1, Lcom/amap/api/col/l3/ec$a;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p1, Lcom/amap/api/col/l3/ec$a;->c:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ec;->b:Lcom/amap/api/col/l3/ec$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/et;->a(Lcom/amap/api/col/l3/es;)Lcom/amap/api/col/l3/es;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ec;->b:Lcom/amap/api/col/l3/ec$a;

    return-void
.end method

.method public final b()Ljava/nio/ShortBuffer;
    .locals 2

    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/ec;->b(I)Lcom/amap/api/col/l3/ec$a;

    move-result-object v0

    iget-object v1, v0, Lcom/amap/api/col/l3/ec$a;->b:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/l3/ec$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/amap/api/col/l3/ec$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3/ec$a;->b:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, v0, Lcom/amap/api/col/l3/ec$a;->b:Ljava/nio/ShortBuffer;

    return-object v0
.end method
