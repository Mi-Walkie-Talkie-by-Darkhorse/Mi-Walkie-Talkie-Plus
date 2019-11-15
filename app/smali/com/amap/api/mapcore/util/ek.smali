.class public Lcom/amap/api/mapcore/util/ek;
.super Ljava/lang/Object;
.source "RectPacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ek$c;,
        Lcom/amap/api/mapcore/util/ek$b;,
        Lcom/amap/api/mapcore/util/ek$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/ek$b;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/amap/api/mapcore/util/ek$b;

    new-instance v0, Lcom/amap/api/mapcore/util/ek$c;

    move-object v1, p0

    move v3, v2

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ek$c;-><init>(Lcom/amap/api/mapcore/util/ek;IIII)V

    invoke-direct {v6, p0, v0}, Lcom/amap/api/mapcore/util/ek$b;-><init>(Lcom/amap/api/mapcore/util/ek;Lcom/amap/api/mapcore/util/ek$c;)V

    iput-object v6, p0, Lcom/amap/api/mapcore/util/ek;->a:Lcom/amap/api/mapcore/util/ek$b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek;->a:Lcom/amap/api/mapcore/util/ek$b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->c:I

    return v0
.end method

.method public a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ek$c;
    .locals 6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek;->a:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ek$b;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ek$b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/ek$c;

    iget-object v2, v1, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v2, v2, Lcom/amap/api/mapcore/util/ek$c;->a:I

    iget-object v3, v1, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v3, v3, Lcom/amap/api/mapcore/util/ek$c;->b:I

    iget-object v4, v1, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v4, v4, Lcom/amap/api/mapcore/util/ek$c;->c:I

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v5, v1, Lcom/amap/api/mapcore/util/ek$c;->d:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ek$c;-><init>(Lcom/amap/api/mapcore/util/ek;IIII)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek;->a:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ek$b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek;->a:Lcom/amap/api/mapcore/util/ek$b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->d:I

    return v0
.end method
