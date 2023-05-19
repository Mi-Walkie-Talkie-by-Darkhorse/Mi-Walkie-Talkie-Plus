.class public interface abstract Lcom/ifengyu/talk/database/a/c;
.super Ljava/lang/Object;
.source "RecentTalkDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a(J)V
    .annotation build Landroidx/room/Query;
        value = "delete from recent_talk where group_id = :groupId"
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from recent_talk"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()V
    .annotation build Landroidx/room/Query;
        value = "delete from recent_talk"
    .end annotation
.end method

.method public abstract d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
