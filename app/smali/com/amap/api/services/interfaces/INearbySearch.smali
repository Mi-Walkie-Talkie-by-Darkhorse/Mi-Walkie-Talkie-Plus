.class public interface abstract Lcom/amap/api/services/interfaces/INearbySearch;
.super Ljava/lang/Object;
.source "INearbySearch.java"


# virtual methods
.method public abstract addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
.end method

.method public abstract clearUserInfoAsyn()V
.end method

.method public abstract destroy()V
.end method

.method public abstract removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
.end method

.method public abstract searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
.end method

.method public abstract setUserID(Ljava/lang/String;)V
.end method

.method public abstract startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
.end method

.method public abstract stopUploadNearbyInfoAuto()V
.end method

.method public abstract uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
.end method
