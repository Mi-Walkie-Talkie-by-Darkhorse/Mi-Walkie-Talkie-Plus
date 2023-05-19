.class public interface abstract Lcom/ifengyu/intercom/database/a/g;
.super Ljava/lang/Object;
.source "NetDeviceDao.java"


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
            "Lcom/ifengyu/intercom/models/NetDeviceModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "delete from net_device where sn = :sn"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/NetDeviceModel;
    .annotation build Landroidx/room/Query;
        value = "select * from net_device where sn = :sn limit 1"
    .end annotation
.end method

.method public abstract d(Lcom/ifengyu/intercom/models/NetDeviceModel;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract e(J)Lcom/ifengyu/intercom/models/NetDeviceModel;
    .annotation build Landroidx/room/Query;
        value = "select * from net_device where user_id = :userId limit 1"
    .end annotation
.end method
