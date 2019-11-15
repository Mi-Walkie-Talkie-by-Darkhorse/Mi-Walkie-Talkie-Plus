.class public Lcom/autonavi/amap/mapcore/FPointBounds;
.super Ljava/lang/Object;
.source "FPointBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amap/mapcore/FPointBounds$Builder;
    }
.end annotation


# instance fields
.field private final mVersionCode:I

.field public final northeast:Lcom/autonavi/amap/mapcore/FPoint;

.field public final southwest:Lcom/autonavi/amap/mapcore/FPoint;


# direct methods
.method constructor <init>(ILcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->mVersionCode:I

    iput-object p2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iput-object p3, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/autonavi/amap/mapcore/FPointBounds;-><init>(ILcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)V

    return-void
.end method

.method public static builder()Lcom/autonavi/amap/mapcore/FPointBounds$Builder;
    .locals 1

    new-instance v0, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPointBounds$Builder;-><init>()V

    return-object v0
.end method

.method private containsx(D)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v2, v2

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v2, v2

    cmpg-double v2, v2, p1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private containsy(D)Z
    .locals 3

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v0, v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private intersect(Lcom/autonavi/amap/mapcore/FPointBounds;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v2, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v1, v4

    iget-object v4, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v1, v4

    float-to-double v4, v1

    iget-object v1, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v6, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    add-float/2addr v1, v6

    iget-object v6, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v6

    iget-object v6, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v6

    float-to-double v6, v1

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v8, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v8

    iget-object v8, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    add-float/2addr v1, v8

    iget-object v8, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v8

    float-to-double v8, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public contains(Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 2

    iget v0, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/amap/mapcore/FPointBounds;->containsy(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/amap/mapcore/FPointBounds;->containsx(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/autonavi/amap/mapcore/FPointBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p0, v1}, Lcom/autonavi/amap/mapcore/FPointBounds;->contains(Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p0, v1}, Lcom/autonavi/amap/mapcore/FPointBounds;->contains(Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/autonavi/amap/mapcore/FPointBounds;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/autonavi/amap/mapcore/FPointBounds;

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v3, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/FPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v3, p1, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/FPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersects(Lcom/autonavi/amap/mapcore/FPointBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/FPointBounds;->intersect(Lcom/autonavi/amap/mapcore/FPointBounds;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p1, p0}, Lcom/autonavi/amap/mapcore/FPointBounds;->intersect(Lcom/autonavi/amap/mapcore/FPointBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "southwest = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->southwest:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") northeast = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/FPointBounds;->northeast:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
