.class public final Lcom/amap/api/col/l3/dg$b;
.super Lcom/amap/api/col/l3/df;
.source "GLShaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/dg;
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

.field final synthetic i:Lcom/amap/api/col/l3/dg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/dg;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/dg$b;->i:Lcom/amap/api/col/l3/dg;

    invoke-direct {p0}, Lcom/amap/api/col/l3/df;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3/df;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "aMVP"

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$b;->a:I

    const-string p1, "aVertex"

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$b;->b:I

    const-string p1, "aTextureCoord"

    .line 5
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$b;->c:I

    const-string p1, "aTransform"

    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$b;->g:I

    const-string p1, "aColor"

    .line 7
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$b;->h:I

    return-void
.end method