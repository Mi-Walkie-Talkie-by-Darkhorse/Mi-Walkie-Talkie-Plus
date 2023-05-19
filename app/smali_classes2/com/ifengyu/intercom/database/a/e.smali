.class public interface abstract Lcom/ifengyu/intercom/database/a/e;
.super Ljava/lang/Object;
.source "DeviceDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from device order by update_time desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .annotation build Landroidx/room/Query;
        value = "select * from device where device_id = :deviceId limit 1"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "delete from device where address = :address"
    .end annotation
.end method

.method public abstract e(I)I
    .annotation build Landroidx/room/Query;
        value = "delete from device where device_type = :deviceType"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;
    .annotation build Landroidx/room/Query;
        value = "select * from device where address = :address limit 1"
    .end annotation
.end method

.method public abstract g(Ljava/util/List;)V
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract h(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract i(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from device where device_type = :deviceType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j(Lcom/ifengyu/intercom/models/DeviceModel;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
