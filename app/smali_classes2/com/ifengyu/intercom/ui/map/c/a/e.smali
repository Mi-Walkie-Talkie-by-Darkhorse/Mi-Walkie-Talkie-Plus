.class public Lcom/ifengyu/intercom/ui/map/c/a/e;
.super Ljava/lang/Object;
.source "RegionItem.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/map/c/a/c;


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:Ljava/lang/String;

.field private c:Lcom/ifengyu/intercom/bean/BeanUserLocation;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a/e;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/c/a/e;->c:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/e;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/ifengyu/intercom/bean/BeanUserLocation;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/e;->c:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-object v0
.end method
