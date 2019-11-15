.class Lcom/amap/api/mapcore/util/ct$a;
.super Lcom/amap/api/mapcore/util/cw;
.source "PopupOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cw;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ct$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "aMVP"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct$a;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ct$a;->a:I

    const-string v0, "aVertex"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct$a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ct$a;->b:I

    const-string v0, "aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ct$a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ct$a;->c:I

    goto :goto_0
.end method
