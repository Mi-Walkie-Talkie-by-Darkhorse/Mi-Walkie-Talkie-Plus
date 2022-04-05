.class public interface abstract Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addItem(Lcom/amap/api/maps/model/MultiPointItem;)V
.end method

.method public abstract addItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract destroy(Z)V
.end method

.method public abstract draw(Lcom/autonavi/amap/mapcore/MapConfig;[F[F)V
.end method

.method public abstract getId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onClick(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/model/MultiPointItem;
.end method

.method public abstract remove(Z)V
.end method

.method public abstract setAnchor(FF)V
.end method

.method public abstract setVisible(Z)V
.end method
