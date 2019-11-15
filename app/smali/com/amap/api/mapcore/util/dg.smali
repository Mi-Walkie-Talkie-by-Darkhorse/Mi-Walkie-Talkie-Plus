.class public Lcom/amap/api/mapcore/util/dg;
.super Ljava/lang/Object;
.source "StyleParserResult.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:[Lcom/autonavi/ae/gmap/style/StyleItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dg;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dg;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()[Lcom/autonavi/ae/gmap/style/StyleItem;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/style/StyleItem;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-array v0, v0, [Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/ae/gmap/style/StyleItem;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dg;->c:[Lcom/autonavi/ae/gmap/style/StyleItem;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg;->c:[Lcom/autonavi/ae/gmap/style/StyleItem;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public c()[Lcom/autonavi/ae/gmap/style/StyleItem;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg;->c:[Lcom/autonavi/ae/gmap/style/StyleItem;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dg;->b:Ljava/lang/Object;

    return-object v0
.end method
