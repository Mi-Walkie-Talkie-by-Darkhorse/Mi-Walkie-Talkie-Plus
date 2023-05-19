.class public Lcom/shanlitech/et/model/Group;
.super Lcom/shanlitech/et/b/c/b;
.source "Group.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/shanlitech/et/core/sl/model/IGroup;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shanlitech/et/b/c/b;",
        "Ljava/io/Serializable;",
        "Lcom/shanlitech/et/core/sl/model/IGroup;",
        "Ljava/lang/Comparable<",
        "Lcom/shanlitech/et/model/Group;",
        ">;"
    }
.end annotation


# static fields
.field public static GROUP_BroadCast:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static GROUP_CHECK_IN:I = 0x0

.field public static GROUP_FULL_DUPLEX:I = 0x0

.field public static GROUP_NORMAL:I = 0x0

.field public static GROUP_SESSION:I = 0x0

.field public static GROUP_TEMP:I = 0x0

.field public static GROUP_UNUSED:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private audio_disabled_begin:I

.field private audio_disabled_end:I

.field private audio_enabled:I

.field private avatar:Ljava/lang/String;

.field private create_time:I

.field private creator:J

.field private creator_type:I

.field private desc:Ljava/lang/String;

.field private dnd_enabled:I

.field private expired:J

.field private gid:J

.field private groupSearchShowName:Ljava/lang/String;

.field private isNew:Z

.field private lateTime:J

.field private leaveCurrentTime:J

.field private locking:I

.field private max_members:I

.field private max_speech_second:I

.field private member_count:I

.field private member_ingroup:I

.field private name:Ljava/lang/String;

.field private nameflag:I

.field private need_confirm:I

.field private priority:I

.field private session:Lcom/shanlitech/et/model/GroupSession;

.field private sort_index:I

.field private status:I

.field private token:Ljava/lang/String;

.field private token_expired:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/model/Group;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/shanlitech/et/model/Group;->GROUP_UNUSED:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    const/4 v0, 0x2

    .line 4
    sput v0, Lcom/shanlitech/et/model/Group;->GROUP_TEMP:I

    const/4 v0, 0x4

    .line 5
    sput v0, Lcom/shanlitech/et/model/Group;->GROUP_CHECK_IN:I

    const/4 v0, 0x5

    .line 6
    sput v0, Lcom/shanlitech/et/model/Group;->GROUP_SESSION:I

    const/4 v0, 0x6

    .line 7
    sput v0, Lcom/shanlitech/et/model/Group;->GROUP_BroadCast:I

    .line 8
    sput v0, Lcom/shanlitech/et/model/Group;->GROUP_FULL_DUPLEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/shanlitech/et/b/c/b;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/shanlitech/et/model/Group;->locking:I

    const/4 v1, 0x4

    .line 44
    iput v1, p0, Lcom/shanlitech/et/model/Group;->creator_type:I

    .line 45
    iput-boolean v0, p0, Lcom/shanlitech/et/model/Group;->isNew:Z

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Lcom/shanlitech/et/model/Group;->lateTime:J

    .line 47
    iput-wide v1, p0, Lcom/shanlitech/et/model/Group;->leaveCurrentTime:J

    .line 48
    iput v0, p0, Lcom/shanlitech/et/model/Group;->member_count:I

    .line 49
    iput v0, p0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    const-string v1, ""

    .line 50
    iput-object v1, p0, Lcom/shanlitech/et/model/Group;->groupSearchShowName:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    const/4 v1, 0x1

    .line 52
    iput v1, p0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    .line 53
    iput v0, p0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    return-void
.end method

.method public constructor <init>(IIJILjava/lang/String;JILjava/lang/String;JJIIIZJJIILjava/lang/String;IIIIILjava/lang/String;IIILjava/lang/String;)V
    .locals 4

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/b/c/b;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/shanlitech/et/model/Group;->locking:I

    const/4 v2, 0x4

    .line 3
    iput v2, v0, Lcom/shanlitech/et/model/Group;->creator_type:I

    .line 4
    iput-boolean v1, v0, Lcom/shanlitech/et/model/Group;->isNew:Z

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, v0, Lcom/shanlitech/et/model/Group;->lateTime:J

    .line 6
    iput-wide v2, v0, Lcom/shanlitech/et/model/Group;->leaveCurrentTime:J

    .line 7
    iput v1, v0, Lcom/shanlitech/et/model/Group;->member_count:I

    .line 8
    iput v1, v0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    const-string v2, ""

    .line 9
    iput-object v2, v0, Lcom/shanlitech/et/model/Group;->groupSearchShowName:Ljava/lang/String;

    .line 10
    iput v1, v0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    const/4 v2, 0x1

    .line 11
    iput v2, v0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    .line 12
    iput v1, v0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    move v1, p1

    .line 13
    iput v1, v0, Lcom/shanlitech/et/model/Group;->locking:I

    move v1, p2

    .line 14
    iput v1, v0, Lcom/shanlitech/et/model/Group;->creator_type:I

    move-wide v1, p3

    .line 15
    iput-wide v1, v0, Lcom/shanlitech/et/model/Group;->gid:J

    move v1, p5

    .line 16
    iput v1, v0, Lcom/shanlitech/et/model/Group;->type:I

    move-object v1, p6

    .line 17
    iput-object v1, v0, Lcom/shanlitech/et/model/Group;->name:Ljava/lang/String;

    move-wide v1, p7

    .line 18
    iput-wide v1, v0, Lcom/shanlitech/et/model/Group;->creator:J

    move v1, p9

    .line 19
    iput v1, v0, Lcom/shanlitech/et/model/Group;->priority:I

    move-object v1, p10

    .line 20
    iput-object v1, v0, Lcom/shanlitech/et/model/Group;->token:Ljava/lang/String;

    move-wide v1, p11

    .line 21
    iput-wide v1, v0, Lcom/shanlitech/et/model/Group;->token_expired:J

    move-wide/from16 v1, p13

    .line 22
    iput-wide v1, v0, Lcom/shanlitech/et/model/Group;->expired:J

    move/from16 v1, p15

    .line 23
    iput v1, v0, Lcom/shanlitech/et/model/Group;->status:I

    move/from16 v1, p16

    .line 24
    iput v1, v0, Lcom/shanlitech/et/model/Group;->max_members:I

    move/from16 v1, p17

    .line 25
    iput v1, v0, Lcom/shanlitech/et/model/Group;->create_time:I

    move/from16 v1, p18

    .line 26
    iput-boolean v1, v0, Lcom/shanlitech/et/model/Group;->isNew:Z

    move-wide/from16 v1, p19

    .line 27
    iput-wide v1, v0, Lcom/shanlitech/et/model/Group;->lateTime:J

    move-wide/from16 v1, p21

    .line 28
    iput-wide v1, v0, Lcom/shanlitech/et/model/Group;->leaveCurrentTime:J

    move/from16 v1, p23

    .line 29
    iput v1, v0, Lcom/shanlitech/et/model/Group;->member_count:I

    move/from16 v1, p24

    .line 30
    iput v1, v0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    move-object/from16 v1, p25

    .line 31
    iput-object v1, v0, Lcom/shanlitech/et/model/Group;->groupSearchShowName:Ljava/lang/String;

    move/from16 v1, p26

    .line 32
    iput v1, v0, Lcom/shanlitech/et/model/Group;->audio_disabled_begin:I

    move/from16 v1, p27

    .line 33
    iput v1, v0, Lcom/shanlitech/et/model/Group;->audio_disabled_end:I

    move/from16 v1, p28

    .line 34
    iput v1, v0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    move/from16 v1, p29

    .line 35
    iput v1, v0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    move/from16 v1, p30

    .line 36
    iput v1, v0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    move-object/from16 v1, p31

    .line 37
    iput-object v1, v0, Lcom/shanlitech/et/model/Group;->desc:Ljava/lang/String;

    move/from16 v1, p32

    .line 38
    iput v1, v0, Lcom/shanlitech/et/model/Group;->nameflag:I

    move/from16 v1, p33

    .line 39
    iput v1, v0, Lcom/shanlitech/et/model/Group;->max_speech_second:I

    move/from16 v1, p34

    .line 40
    iput v1, v0, Lcom/shanlitech/et/model/Group;->sort_index:I

    move-object/from16 v1, p35

    .line 41
    iput-object v1, v0, Lcom/shanlitech/et/model/Group;->avatar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeGroupAvatar(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->a(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public compareTo(Lcom/shanlitech/et/model/Group;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shanlitech/et/model/Group;

    invoke-virtual {p0, p1}, Lcom/shanlitech/et/model/Group;->compareTo(Lcom/shanlitech/et/model/Group;)I

    move-result p1

    return p1
.end method

.method public deleteSession()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->g(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public destroy()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->h(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shanlitech/et/model/Group;

    .line 3
    iget-wide v2, p0, Lcom/shanlitech/et/model/Group;->gid:J

    iget-wide v4, p1, Lcom/shanlitech/et/model/Group;->gid:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAllMemberCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioDisabledBegin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_begin:I

    return v0
.end method

.method public getAudioEnabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    return v0
.end method

.method public getAudio_disabled_begin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_begin:I

    return v0
.end method

.method public getAudio_disabled_end()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_end:I

    return v0
.end method

.method public getAudio_enabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Group;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->create_time:I

    return v0
.end method

.method public getCreate_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->create_time:I

    return v0
.end method

.method public getCreator()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/Group;->creator:J

    return-wide v0
.end method

.method public getCreatorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->creator_type:I

    return v0
.end method

.method public getCreator_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->creator_type:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Group;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDndEnabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    return v0
.end method

.method public getDnd_enabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    return v0
.end method

.method public getExpired()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/Group;->expired:J

    return-wide v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/Group;->gid:J

    return-wide v0
.end method

.method public getGroupSearchShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Group;->groupSearchShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupSession()Lcom/shanlitech/et/model/GroupSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Group;->session:Lcom/shanlitech/et/model/GroupSession;

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/model/GroupSession;->build(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    return-object v0
.end method

.method public getInGroupMemberCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getInGroupCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsNew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/model/Group;->isNew:Z

    return v0
.end method

.method public getLateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/Group;->lateTime:J

    return-wide v0
.end method

.method public getLeaveCurrentTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/Group;->leaveCurrentTime:J

    return-wide v0
.end method

.method public getLocking()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->locking:I

    return v0
.end method

.method public getMaxMembers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->max_members:I

    return v0
.end method

.method public getMaxSpeechSecond()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->max_speech_second:I

    return v0
.end method

.method public getMax_members()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->max_members:I

    return v0
.end method

.method public getMax_speech_second()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->max_speech_second:I

    return v0
.end method

.method public getMemberCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->member_count:I

    return v0
.end method

.method public getMemberInGroup()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    return v0
.end method

.method public bridge synthetic getMemberList()Lcom/shanlitech/et/core/sl/model/list/IMemberList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberList()Lcom/shanlitech/et/model/MemberList;
    .locals 1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->r(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    return-object v0
.end method

.method public getMember_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->member_count:I

    return v0
.end method

.method public getMember_ingroup()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    return v0
.end method

.method public getMySessionStatus()Lcom/shanlitech/et/model/MemberSession;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->me()Lcom/shanlitech/et/model/Member;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->me()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getMemberSession()Lcom/shanlitech/et/model/MemberSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameflag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->nameflag:I

    return v0
.end method

.method public getNeedConfirm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    return v0
.end method

.method public getNeed_confirm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    return v0
.end method

.method public getOnlineMemberCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getInGroupCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getOutGroupCount()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOutGroupMemberCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getOutGroupCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->priority:I

    return v0
.end method

.method public getSort_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->sort_index:I

    return v0
.end method

.method public getSpeakingUser()Lcom/shanlitech/et/model/User;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/Group;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/s;->d(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->status:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/Group;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpired()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/Group;->token_expired:J

    return-wide v0
.end method

.method public getToken_expired()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/Group;->token_expired:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->type:I

    return v0
.end method

.method public hasSpeakingMember()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/Group;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/s;->f(J)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/shanlitech/et/model/Group;->gid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAudioEnabled()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_end:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBroadCast()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->type:I

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_BroadCast:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContainsMe()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getAllMembers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/model/Member;

    .line 4
    invoke-virtual {v2}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isCurrentGroup()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->y(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->C(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public isFullDuplex()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->type:I

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_FULL_DUPLEX:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListeningGroup()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->E(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->p()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shanlitech/et/model/Group;->gid:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMyGroup()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->F(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public isSessionGroup()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/Group;->type:I

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_SESSION:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->isFullDuplex()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public join()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->I(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public joinSession()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->K(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public leave()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->O(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public leaveSession()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/shanlitech/et/core/c/l;->X0(Lcom/shanlitech/et/model/Group;I)Z

    move-result v0

    return v0
.end method

.method public listen(Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->P(Lcom/shanlitech/et/model/Group;Z)Z

    move-result p1

    return p1
.end method

.method public lock(Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/l;->S0(Lcom/shanlitech/et/model/Group;)Z

    move-result p1

    return p1
.end method

.method public modifyDesc(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->V(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public modifyMemberSpeechTime(Lcom/shanlitech/et/model/Member;I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->W(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Member;I)Z

    move-result p1

    return p1
.end method

.method public modifyMyName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->U0(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public modifyName(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->X(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public modifyPriority(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/i;->j(Lcom/shanlitech/et/model/Group;I)Z

    move-result p1

    return p1
.end method

.method public queryMembers()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->requestMemberList()Z

    move-result v0

    return v0
.end method

.method public quite()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->E0(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public releaseMic()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/s;->q(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public requestMemberList()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->D0(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public requestMic()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/s;->r(Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    return v0
.end method

.method public setAudioDisabledBegin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_begin:I

    return-void
.end method

.method public setAudioEnabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    return-void
.end method

.method public setAudio_disabled_begin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_begin:I

    return-void
.end method

.method public setAudio_disabled_end(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_end:I

    return-void
.end method

.method public setAudio_enabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Group;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->create_time:I

    return-void
.end method

.method public setCreate_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->create_time:I

    return-void
.end method

.method public setCreator(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/Group;->creator:J

    return-void
.end method

.method public setCreatorType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->creator_type:I

    return-void
.end method

.method public setCreator_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->creator_type:I

    return-void
.end method

.method public setDefault()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/a/b;->uid()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/shanlitech/et/core/c/l;->P0(Lcom/shanlitech/et/model/Group;J)Z

    move-result v0

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Group;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDndEnabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    return-void
.end method

.method public setDnd_enabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    return-void
.end method

.method public setExpired(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/Group;->expired:J

    return-void
.end method

.method public setGid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/Group;->gid:J

    return-void
.end method

.method public setGroupMaxSpeechTime(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/i;->g(Lcom/shanlitech/et/model/Group;I)Z

    move-result p1

    return p1
.end method

.method public setGroupMemberPriority(JI)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shanlitech/et/core/c/i;->h(Lcom/shanlitech/et/model/Group;JI)Z

    move-result p1

    return p1
.end method

.method public setGroupMemberPriority(Lcom/shanlitech/et/model/Member;I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/i;->i(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Member;I)Z

    move-result p1

    return p1
.end method

.method public setGroupSearchShowName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Group;->groupSearchShowName:Ljava/lang/String;

    return-void
.end method

.method public setIsNew(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shanlitech/et/model/Group;->isNew:Z

    return-void
.end method

.method public setLateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/Group;->lateTime:J

    return-void
.end method

.method public setLeaveCurrentTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/Group;->leaveCurrentTime:J

    return-void
.end method

.method public setLocking(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->locking:I

    return-void
.end method

.method public setMaxMembers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->max_members:I

    return-void
.end method

.method public setMaxSpeechSecond(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->max_speech_second:I

    return-void
.end method

.method public setMax_members(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->max_members:I

    return-void
.end method

.method public setMax_speech_second(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->max_speech_second:I

    return-void
.end method

.method public setMemberCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->member_count:I

    return-void
.end method

.method public setMemberInGroup(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    return-void
.end method

.method public setMember_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->member_count:I

    return-void
.end method

.method public setMember_ingroup(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Group;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameflag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->nameflag:I

    return-void
.end method

.method public setNeedConfirm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    return-void
.end method

.method public setNeed_confirm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->priority:I

    return-void
.end method

.method public setSort_index(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->sort_index:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->status:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/Group;->token:Ljava/lang/String;

    return-void
.end method

.method public setTokenExpired(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/Group;->token_expired:J

    return-void
.end method

.method public setToken_expired(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/Group;->token_expired:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/Group;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group{locking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/Group;->locking:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creator_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/Group;->creator_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/Group;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/Group;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creator="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/Group;->creator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/Group;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token_expired="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/Group;->token_expired:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", expired="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/Group;->expired:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max_members="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->max_members:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", create_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->create_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isNew="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shanlitech/et/model/Group;->isNew:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/Group;->lateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", leaveCurrentTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/Group;->leaveCurrentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", member_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->member_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", member_ingroup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->member_ingroup:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", groupSearchShowName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/Group;->groupSearchShowName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audio_disabled_begin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_begin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audio_disabled_end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->audio_disabled_end:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dnd_enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->dnd_enabled:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audio_enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->audio_enabled:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need_confirm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/Group;->need_confirm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/Group;->session:Lcom/shanlitech/et/model/GroupSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/Group;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", nameflag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/Group;->nameflag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max_speech_second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/Group;->max_speech_second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sort_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/Group;->sort_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/Group;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferGroup(Lcom/shanlitech/et/model/Member;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->Y0(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Member;)Z

    move-result p1

    return p1
.end method
