.class public interface abstract Lcom/ifengyu/intercom/database/a/c;
.super Ljava/lang/Object;
.source "ConfigFileDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from config_file order by create_time desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/ConfigFileModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract e(Lcom/ifengyu/intercom/models/ConfigFileModel;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method
