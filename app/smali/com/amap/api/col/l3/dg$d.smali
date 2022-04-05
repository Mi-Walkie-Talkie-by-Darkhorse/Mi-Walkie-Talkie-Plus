.class public final Lcom/amap/api/col/l3/dg$d;
.super Lcom/amap/api/col/l3/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field final synthetic g:Lcom/amap/api/col/l3/dg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/dg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/dg$d;->g:Lcom/amap/api/col/l3/dg;

    invoke-direct {p0}, Lcom/amap/api/col/l3/df;-><init>()V

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3/df;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "aMVPMatrix"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$d;->a:I

    const-string p1, "aColor"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$d;->c:I

    const-string p1, "aVertex"

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/df;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/dg$d;->b:I

    return-void
.end method
