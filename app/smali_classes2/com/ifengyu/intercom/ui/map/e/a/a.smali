.class public Lcom/ifengyu/intercom/ui/map/e/a/a;
.super Ljava/lang/Object;
.source "Cluster.java"


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/map/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/a/a;->a:Lcom/amap/api/maps/model/LatLng;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/a/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/a/a;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/Marker;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/a/a;->c:Lcom/amap/api/maps/model/Marker;

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/e/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/map/e/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/a/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/amap/api/maps/model/Marker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/a/a;->c:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method
