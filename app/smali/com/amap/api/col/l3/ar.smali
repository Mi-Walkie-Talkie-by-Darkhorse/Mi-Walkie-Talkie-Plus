.class public final Lcom/amap/api/col/l3/ar;
.super Ljava/lang/Object;
.source "IBounds.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/col/l3/ar;->a(IIII)V

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/ar;->a:I

    .line 2
    iput p3, p0, Lcom/amap/api/col/l3/ar;->b:I

    .line 3
    iput p2, p0, Lcom/amap/api/col/l3/ar;->c:I

    .line 4
    iput p4, p0, Lcom/amap/api/col/l3/ar;->d:I

    add-int/2addr p1, p2

    .line 5
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amap/api/col/l3/ar;->e:I

    add-int/2addr p3, p4

    .line 6
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/amap/api/col/l3/ar;->f:I

    return-void
.end method

.method public final a(II)Z
    .locals 1

    .line 7
    iget v0, p0, Lcom/amap/api/col/l3/ar;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/ar;->c:I

    if-gt p1, v0, :cond_0

    iget p1, p0, Lcom/amap/api/col/l3/ar;->b:I

    if-gt p1, p2, :cond_0

    iget p1, p0, Lcom/amap/api/col/l3/ar;->d:I

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/amap/api/col/l3/ar;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    iget v1, p1, Lcom/amap/api/col/l3/ar;->a:I

    iget v2, p1, Lcom/amap/api/col/l3/ar;->c:I

    iget v3, p1, Lcom/amap/api/col/l3/ar;->b:I

    iget p1, p1, Lcom/amap/api/col/l3/ar;->d:I

    iget v4, p0, Lcom/amap/api/col/l3/ar;->c:I

    if-ge v1, v4, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3/ar;->a:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3/ar;->d:I

    if-ge v3, v1, :cond_1

    iget v1, p0, Lcom/amap/api/col/l3/ar;->b:I

    if-ge v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
