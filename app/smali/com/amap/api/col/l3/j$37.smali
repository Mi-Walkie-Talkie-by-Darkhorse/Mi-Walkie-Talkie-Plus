.class final Lcom/amap/api/col/l3/j$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$37;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3/j$37;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    iget-object v3, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    iget v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    iget-object v0, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setIndoorBuildingToBeActive(ILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
