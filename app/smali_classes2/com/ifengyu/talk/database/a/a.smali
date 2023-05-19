.class public interface abstract Lcom/ifengyu/talk/database/a/a;
.super Ljava/lang/Object;
.source "HistoryMsgDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a(JJI)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from history_msg where receiver = :gid and id < :lastId order by msg_time desc limit :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/HistoryMsgModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(J)Lcom/ifengyu/talk/models/HistoryMsgModel;
    .annotation build Landroidx/room/Query;
        value = "select * from history_msg where id = :msgId"
    .end annotation
.end method

.method public abstract c()Lcom/ifengyu/talk/models/HistoryMsgModel;
    .annotation build Landroidx/room/Query;
        value = "select * from history_msg order by msg_time desc limit 1"
    .end annotation
.end method

.method public abstract d(Ljava/util/ArrayList;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/models/HistoryMsgModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Lcom/ifengyu/talk/models/HistoryMsgModel;)Ljava/lang/Long;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract f(J)V
    .annotation build Landroidx/room/Query;
        value = "delete from history_msg where receiver = :gid"
    .end annotation
.end method
