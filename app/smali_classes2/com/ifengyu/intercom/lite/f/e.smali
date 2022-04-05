.class public interface abstract Lcom/ifengyu/intercom/lite/f/e;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "delete from device where address = :address"
    .end annotation
.end method

.method public abstract a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from device order by update_time desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;
    .annotation build Landroidx/room/Query;
        value = "select * from device where address = :address limit 1"
    .end annotation
.end method

.method public abstract b(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
