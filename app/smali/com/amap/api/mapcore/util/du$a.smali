.class final Lcom/amap/api/mapcore/util/du$a;
.super Lcom/amap/api/mapcore/util/el;
.source "NativeBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/el",
        "<",
        "Lcom/amap/api/mapcore/util/du$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:Ljava/nio/ShortBuffer;

.field c:Ljava/nio/FloatBuffer;

.field d:Ljava/nio/IntBuffer;

.field e:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/el;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    const v0, 0x8000

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/du$a;->a:Ljava/nio/ByteBuffer;

    iput p1, p0, Lcom/amap/api/mapcore/util/du$a;->e:I

    iput-object v2, p0, Lcom/amap/api/mapcore/util/du$a;->b:Ljava/nio/ShortBuffer;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/du$a;->d:Ljava/nio/IntBuffer;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/du$a;->c:Ljava/nio/FloatBuffer;

    return-void
.end method
