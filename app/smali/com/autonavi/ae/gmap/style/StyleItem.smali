.class public Lcom/autonavi/ae/gmap/style/StyleItem;
.super Ljava/lang/Object;
.source "StyleItem.java"


# instance fields
.field private styleElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleElement;",
            ">;"
        }
    .end annotation
.end field

.field private styleTypeId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    iput p1, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleTypeId:I

    return-void
.end method


# virtual methods
.method public get(I)Lcom/autonavi/ae/gmap/style/StyleElement;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/style/StyleElement;

    return-object v0
.end method

.method public getStyleElements()[Lcom/autonavi/ae/gmap/style/StyleElement;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/ae/gmap/style/StyleElement;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/ae/gmap/style/StyleElement;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStyleTypeId()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleTypeId:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleTypeId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILcom/autonavi/ae/gmap/style/StyleElement;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "styleTypeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleTypeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "styleElements.size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/StyleItem;->styleElements:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
