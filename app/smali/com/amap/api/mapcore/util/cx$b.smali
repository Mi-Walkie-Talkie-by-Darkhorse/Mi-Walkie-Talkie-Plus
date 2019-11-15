.class public Lcom/amap/api/mapcore/util/cx$b;
.super Lcom/amap/api/mapcore/util/cw;
.source "GLShaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public g:I

.field public h:I

.field final synthetic i:Lcom/amap/api/mapcore/util/cx;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/cx;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cx$b;->i:Lcom/amap/api/mapcore/util/cx;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cw;-><init>()V

    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/cx$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "aMVP"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$b;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$b;->a:I

    const-string v0, "aVertex"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$b;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$b;->b:I

    const-string v0, "aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$b;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$b;->c:I

    const-string v0, "aTransform"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$b;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$b;->g:I

    const-string v0, "aColor"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$b;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$b;->h:I

    goto :goto_0
.end method
