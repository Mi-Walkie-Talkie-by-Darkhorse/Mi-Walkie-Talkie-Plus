.class public Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
.super Ljava/lang/Object;
.source "RoutePOISearchResult.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/routepoisearch/RoutePOIItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/routepoisearch/RoutePOIItem;",
            ">;",
            "Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    return-void
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    return-object v0
.end method

.method public getRoutePois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/routepoisearch/RoutePOIItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;->a:Ljava/util/List;

    return-object v0
.end method
