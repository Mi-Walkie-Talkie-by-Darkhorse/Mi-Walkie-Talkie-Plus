.class public Lcom/amap/api/col/l3/er;
.super Ljava/lang/Object;
.source "RectPacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/er$c;,
        Lcom/amap/api/col/l3/er$b;,
        Lcom/amap/api/col/l3/er$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/er$b;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/er$b;

    new-instance v7, Lcom/amap/api/col/l3/er$c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x200

    const/16 v6, 0x400

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/l3/er$c;-><init>(Lcom/amap/api/col/l3/er;IIII)V

    invoke-direct {v0, p0, v7}, Lcom/amap/api/col/l3/er$b;-><init>(Lcom/amap/api/col/l3/er;Lcom/amap/api/col/l3/er$c;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/er;->a:Lcom/amap/api/col/l3/er$b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/er;->a:Lcom/amap/api/col/l3/er$b;

    iget-object v0, v0, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    iget v0, v0, Lcom/amap/api/col/l3/er$c;->c:I

    return v0
.end method

.method public final a(IILjava/lang/String;)Lcom/amap/api/col/l3/er$c;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/er;->a:Lcom/amap/api/col/l3/er$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/col/l3/er$b;->a(IILjava/lang/String;)Lcom/amap/api/col/l3/er$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Lcom/amap/api/col/l3/er$c;

    iget-object p1, p1, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    iget v2, p1, Lcom/amap/api/col/l3/er$c;->a:I

    iget v3, p1, Lcom/amap/api/col/l3/er$c;->b:I

    iget v4, p1, Lcom/amap/api/col/l3/er$c;->c:I

    iget v5, p1, Lcom/amap/api/col/l3/er$c;->d:I

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/er$c;-><init>(Lcom/amap/api/col/l3/er;IIII)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/er;->a:Lcom/amap/api/col/l3/er$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/er$b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/er;->a:Lcom/amap/api/col/l3/er$b;

    iget-object v0, v0, Lcom/amap/api/col/l3/er$b;->b:Lcom/amap/api/col/l3/er$c;

    iget v0, v0, Lcom/amap/api/col/l3/er$c;->d:I

    return v0
.end method
