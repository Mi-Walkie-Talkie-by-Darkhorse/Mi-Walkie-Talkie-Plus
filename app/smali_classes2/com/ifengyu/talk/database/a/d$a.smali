.class Lcom/ifengyu/talk/database/a/d$a;
.super Landroidx/room/c0;
.source "RecentTalkDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/talk/database/a/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c0<",
        "Lcom/ifengyu/talk/models/RecentTalkModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/talk/database/a/d;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `recent_talk` (`id`,`group_id`,`group_name`,`group_avatar`,`update_time`,`last_msg_json_str`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(La/g/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/talk/database/a/d$a;->k(La/g/a/f;Lcom/ifengyu/talk/models/RecentTalkModel;)V

    return-void
.end method

.method public k(La/g/a/f;Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, La/g/a/d;->c(IJ)V

    .line 7
    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 8
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    .line 10
    :goto_2
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupAvatar()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 11
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x5

    .line 13
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, La/g/a/d;->c(IJ)V

    .line 14
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgJsonStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, La/g/a/d;->e(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgJsonStr()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La/g/a/d;->a(ILjava/lang/String;)V

    :goto_4
    return-void
.end method
