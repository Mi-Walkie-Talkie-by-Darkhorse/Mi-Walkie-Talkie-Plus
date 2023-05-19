.class public Lcom/ifengyu/intercom/ui/c/g/c;
.super Ljava/lang/Object;
.source "ClusterItem.java"


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:Ljava/lang/String;

.field private c:Lcom/ifengyu/intercom/bean/BeanUserLocation;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/c;->a:Lcom/amap/api/maps/model/LatLng;

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getUserID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/c;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/c/g/c;->c:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-void
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/bean/BeanUserLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/c;->c:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-object v0
.end method

.method public b()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/c;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/c;->b:Ljava/lang/String;

    return-object v0
.end method
