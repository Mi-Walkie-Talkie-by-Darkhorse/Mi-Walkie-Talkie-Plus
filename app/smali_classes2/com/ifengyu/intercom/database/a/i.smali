.class public interface abstract Lcom/ifengyu/intercom/database/a/i;
.super Ljava/lang/Object;
.source "ShareLocationDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from share_location where user_id != :userId and time > :time"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract c(I)Lcom/ifengyu/intercom/device/oldDevice/model/ShareLocationModel;
    .annotation build Landroidx/room/Query;
        value = "select * from share_location where user_id = :userId limit 1"
    .end annotation
.end method
