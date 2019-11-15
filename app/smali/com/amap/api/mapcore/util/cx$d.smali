.class public Lcom/amap/api/mapcore/util/cx$d;
.super Lcom/amap/api/mapcore/util/cw;
.source "GLShaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field final synthetic g:Lcom/amap/api/mapcore/util/cx;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/cx;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cx$d;->g:Lcom/amap/api/mapcore/util/cx;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cw;-><init>()V

    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/cx$d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "aMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$d;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$d;->a:I

    const-string v0, "aColor"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$d;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$d;->c:I

    const-string v0, "aVertex"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cx$d;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cx$d;->b:I

    goto :goto_0
.end method
