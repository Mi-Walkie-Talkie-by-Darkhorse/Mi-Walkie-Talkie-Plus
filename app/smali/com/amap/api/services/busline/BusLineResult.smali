.class public final Lcom/amap/api/services/busline/BusLineResult;
.super Ljava/lang/Object;
.source "BusLineResult.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/services/busline/BusLineQuery;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amap/api/services/busline/BusLineQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/busline/BusLineQuery;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/services/busline/BusLineResult;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/services/busline/BusLineResult;->d:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/services/busline/BusLineResult;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineResult;->c:Lcom/amap/api/services/busline/BusLineQuery;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusLineResult;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusLineQuery;->getPageSize()I

    move-result v1

    add-int v2, p2, v1

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v1

    if-le v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/amap/api/services/busline/BusLineResult;->a:I

    iput-object p3, p0, Lcom/amap/api/services/busline/BusLineResult;->e:Ljava/util/List;

    iput-object p4, p0, Lcom/amap/api/services/busline/BusLineResult;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/amap/api/services/busline/BusLineResult;->b:Ljava/util/ArrayList;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static createPagedResult(Lcom/amap/api/services/busline/BusLineQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)Lcom/amap/api/services/busline/BusLineResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/busline/BusLineQuery;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;)",
            "Lcom/amap/api/services/busline/BusLineResult;"
        }
    .end annotation

    new-instance v0, Lcom/amap/api/services/busline/BusLineResult;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/busline/BusLineResult;-><init>(Lcom/amap/api/services/busline/BusLineQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public final getBusLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineResult;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPageCount()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/busline/BusLineResult;->a:I

    return v0
.end method

.method public final getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineResult;->c:Lcom/amap/api/services/busline/BusLineQuery;

    return-object v0
.end method

.method public final getSearchSuggestionCities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getSearchSuggestionKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineResult;->d:Ljava/util/List;

    return-object v0
.end method
