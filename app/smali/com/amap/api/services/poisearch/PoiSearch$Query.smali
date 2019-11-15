.class public Lcom/amap/api/services/poisearch/PoiSearch$Query;
.super Ljava/lang/Object;
.source "PoiSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/amap/api/services/core/LatLonPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    iput-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->j:Z

    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageNum(I)V

    iget v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageSize(I)V

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setQueryLanguage(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setCityLimit(Z)V

    iget-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->requireSubPois(Z)V

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setBuilding(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->k:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setLocation(Lcom/amap/api/services/core/LatLonPoint;)V

    iget-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->j:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setDistanceSort(Z)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PoiSearch"

    const-string v2, "queryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    return-object v0
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
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    if-eqz v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    iget-boolean v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    if-eq v2, v3, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    iget-boolean v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getBuilding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    return v0
.end method

.method public getLocation()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->k:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    return v0
.end method

.method protected getQueryLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    if-eqz v4, :cond_3

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public isDistanceSort()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->j:Z

    return v0
.end method

.method public isRequireSubPois()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    return v0
.end method

.method public queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    iget-boolean v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    iget v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->j:Z

    iget-boolean v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->j:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public requireSubPois(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    return-void
.end method

.method public setBuilding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->i:Ljava/lang/String;

    return-void
.end method

.method public setCityLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    return-void
.end method

.method public setDistanceSort(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->j:Z

    return-void
.end method

.method public setLocation(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->k:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    const/16 v0, 0x1e

    if-gtz p1, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    :goto_0
    return-void

    :cond_0
    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    goto :goto_0
.end method

.method public setQueryLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "en"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    goto :goto_0
.end method
