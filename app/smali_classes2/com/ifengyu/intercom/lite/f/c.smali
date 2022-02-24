.class public interface abstract Lcom/ifengyu/intercom/lite/f/c;
.super Ljava/lang/Object;
.source "ConfigFileDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from config_file order by create_time desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method
