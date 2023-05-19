.class public Lcom/ifengyu/talk/models/RecentTalkModel;
.super Ljava/lang/Object;
.source "RecentTalkModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "group_id"
            }
        .end subannotation
    }
    tableName = "recent_talk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ifengyu/talk/models/RecentTalkModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final GROUP_AVATAR_SPLIT:Ljava/lang/String; = "\u5206\u9694"

.field public static HASHCODE:I = 0x5e33f6b

.field public static final TALK_TYPE_CURRENT:I = 0x1

.field public static final TALK_TYPE_NORMAL:I


# instance fields
.field private group:Lcom/shanlitech/et/model/Group;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private groupAvatar:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "group_avatar"
    .end annotation
.end field

.field private groupId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "group_id"
    .end annotation
.end field

.field private groupName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "group_name"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private lastMsgJsonStr:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_msg_json_str"
    .end annotation
.end field

.field private lastMsgModel:Lcom/ifengyu/talk/models/HistoryMsgModel;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private talkType:I
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private updateTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "update_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ifengyu/talk/models/RecentTalkModel;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getTalkType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getTalkType()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getUpdateTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->compareTo(Lcom/ifengyu/talk/models/RecentTalkModel;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->group:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public getGroupAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->groupAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->groupId:Ljava/lang/Long;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastMsgJsonStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->lastMsgJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMsgModel()Lcom/ifengyu/talk/models/HistoryMsgModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->lastMsgModel:Lcom/ifengyu/talk/models/HistoryMsgModel;

    return-object v0
.end method

.method public getTalkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->talkType:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->updateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->groupId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    sget v1, Lcom/ifengyu/talk/models/RecentTalkModel;->HASHCODE:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGroup(Lcom/shanlitech/et/model/Group;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->group:Lcom/shanlitech/et/model/Group;

    return-void
.end method

.method public setGroupAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->groupAvatar:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->groupId:Ljava/lang/Long;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLastMsgJsonStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->lastMsgJsonStr:Ljava/lang/String;

    return-void
.end method

.method public setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->lastMsgModel:Lcom/ifengyu/talk/models/HistoryMsgModel;

    return-void
.end method

.method public setTalkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->talkType:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/talk/models/RecentTalkModel;->updateTime:J

    return-void
.end method
