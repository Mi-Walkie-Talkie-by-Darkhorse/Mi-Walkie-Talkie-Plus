.class final Lcom/amap/api/col/l3/ec$a;
.super Lcom/amap/api/col/l3/es;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/es<",
        "Lcom/amap/api/col/l3/ec$a;",
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

    invoke-direct {p0}, Lcom/amap/api/col/l3/es;-><init>()V

    return-void
.end method
