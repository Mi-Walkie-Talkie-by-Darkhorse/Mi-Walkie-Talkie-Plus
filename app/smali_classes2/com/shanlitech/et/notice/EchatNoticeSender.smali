.class Lcom/shanlitech/et/notice/EchatNoticeSender;
.super Ljava/lang/Object;
.source "EchatNoticeSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoticeSender"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SetGroupPriorityAck(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetGroupPriorityAck start >>> gid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " priority = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string p0, "SetGroupPriorityAck over"

    .line 2
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static SetMemberPriorityAck(JJI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetMemberPriorityAck start >>> gid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " uid = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " priority = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string p0, "SetMemberPriorityAck over"

    .line 2
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static UpdateMemberTopAck(J[JII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateMemberTopAck() called with: gid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "], uid = ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], size = ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], top = ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string p0, "UpdateMemberTopAck() over"

    .line 2
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a([Lcom/shanlitech/et/model/ContactInvitation;[J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/g;->n([Lcom/shanlitech/et/model/ContactInvitation;[J)V

    return-void
.end method

.method static synthetic b([Lcom/shanlitech/et/model/ContactInvitation;[J)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;-><init>([Lcom/shanlitech/et/model/ContactInvitation;[J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->g0(JLjava/lang/String;)Z

    return-void
.end method

.method static synthetic d(JZLcom/shanlitech/et/model/SLocation;Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/o;->a()Lcom/shanlitech/et/core/c/o;

    move-result-object v0

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shanlitech/et/core/c/o;->b(JZLcom/shanlitech/et/model/SLocation;Z)V

    return-void
.end method

.method static synthetic e(JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/j;->b()Lcom/shanlitech/et/core/c/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/j;->d(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic f(ILjava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/h;->y(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic g(Lcom/shanlitech/et/model/Group;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->h0(Lcom/shanlitech/et/model/Group;)V

    return-void
.end method

.method static synthetic h([Lcom/shanlitech/et/model/GroupInvitation;[J)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;-><init>([Lcom/shanlitech/et/model/GroupInvitation;[J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic i([Lcom/shanlitech/et/model/GroupInvitation;[J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->a0([Lcom/shanlitech/et/model/GroupInvitation;[J)Z

    return-void
.end method

.method static synthetic j()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->i0()Z

    return-void
.end method

.method static synthetic k(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->n0(J)V

    return-void
.end method

.method static synthetic l(J[Lcom/shanlitech/et/model/Member;[J[J[JII)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/shanlitech/et/core/c/l;->o0(J[Lcom/shanlitech/et/model/Member;[J[J[JII)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NoticeSender"

    .line 1
    invoke-static {v0, p0}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/h;->B(J)V

    return-void
.end method

.method static synthetic n([Lcom/shanlitech/et/model/User;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->z([Lcom/shanlitech/et/model/User;)V

    return-void
.end method

.method private static notifyAudioFileStatus(JJ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u64ad\u653e\u72b6\u6001\u901a\u77e5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shanlitech/et/core/c/n;->e(JJ)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "\u64ad\u653e\u72b6\u6001\u901a\u77e5 over"

    .line 3
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyChangeAvatar(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u5934\u50cf\u7ed3\u679c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->AVATAR:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/shanlitech/et/core/c/h;->z(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    const-string p0, "\u4fee\u6539\u5934\u50cf\u7ed3\u679c\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyChangeEmail(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u90ae\u7bb1\u662f\u5426\u4fee\u6539\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->EMAIL:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/shanlitech/et/core/c/h;->z(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    const-string p0, "\u4fee\u6539\u90ae\u7bb1\u662f\u5426\u4fee\u6539\u6210\u529f over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyChangeGroupName(ZJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7fa4\u7ec4[\u540d\u79f0]\u53d8\u5316 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string p0, "\u7fa4\u7ec4[\u540d\u79f0]\u53d8\u5316 over"

    .line 2
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyChangeName(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u540d\u79f0\u7ed3\u679c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NAME:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/shanlitech/et/core/c/h;->z(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    const-string p0, "\u4fee\u6539\u540d\u79f0\u7ed3\u679c\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyChangePassword(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u5bc6\u7801\u7ed3\u679c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->PWD:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/shanlitech/et/core/c/h;->z(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    const-string p0, "\u4fee\u6539\u5bc6\u7801\u7ed3\u679c\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyChangePhone(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u624b\u673a\u53f7\u662f\u5426\u4fee\u6539\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->PHONE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/shanlitech/et/core/c/h;->z(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    const-string p0, "\u4fee\u6539\u624b\u673a\u53f7\u662f\u5426\u4fee\u6539\u6210\u529f over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyChangeSex(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u6027\u522b\u901a\u77e5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object v3, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->SEX:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-direct {v2, v3, p0}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "\u4fee\u6539\u6027\u522b\u901a\u77e5 over"

    .line 3
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyContactChanged([Lcom/shanlitech/et/model/User;[J)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.contact.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u597d\u53cb/\u5e38\u7528\u8054\u7cfb\u4eba\u5217\u8868\u53d1\u751f\u53d8\u5316 start new.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/ rm.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/g;->o([Lcom/shanlitech/et/model/User;[J)V

    const-string p0, "\u597d\u53cb/\u5e38\u7528\u8054\u7cfb\u4eba\u5217\u8868\u53d1\u751f\u53d8\u5316 over"

    .line 4
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "\u597d\u53cb/\u5e38\u7528\u8054\u7cfb\u4eba\u5217\u8868\u53d1\u751f\u53d8\u5316 \u672a\u5f00\u542f"

    .line 5
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static notifyContactInvitationChanged([Lcom/shanlitech/et/model/ContactInvitation;[J)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/m;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/notice/m;-><init>([Lcom/shanlitech/et/model/ContactInvitation;[J)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.contact.invitation.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "notifyContactInvitationChanged start"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string v1, "NoticeSender"

    .line 4
    invoke-static {v1, p0}, Lcom/shanlitech/et/c/h;->j(Ljava/lang/String;[Lcom/shanlitech/et/model/ContactInvitation;)V

    .line 5
    new-instance v1, Lcom/shanlitech/et/notice/d;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/d;-><init>([Lcom/shanlitech/et/model/ContactInvitation;[J)V

    invoke-static {v1}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "notifyContactInvitationChanged over"

    .line 6
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "notifyContactInvitationChanged \u672a\u5f00\u542f"

    .line 7
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static notifyCreateGroup(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCreateGroup() called with: gid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], reason = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCreateGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/shanlitech/et/CoreEngine;->getGroupByGid(J)Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoticeSender"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->f0(JI)V

    const-string p0, ""

    .line 5
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyCreateGroupLimitAccounts(JI[Ljava/lang/String;)V
    .locals 1

    const-string v0, "notifyCreateGroupLimitAccounts"

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shanlitech/et/core/c/l;->Y(JI[Ljava/lang/String;)V

    return-void
.end method

.method private static notifyCurrentGroupChanged(JLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u7fa4\u7ec4\u53d8\u5316\u901a\u77e5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/notice/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/shanlitech/et/notice/b;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u5f53\u524d\u7fa4\u7ec4\u53d8\u5316\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyDeleteSession(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDeleteSession() sid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyDeliver(ZZJLcom/shanlitech/et/model/SLocation;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.location.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const-string v1, "\u4f4d\u7f6e\u6d88\u606f\u901a\u77e5,\u662f\u5426\u5b9e\u65f6=[%s] \u6211\u6709\u6ca1\u6709\u5f00\u542f\u5171\u4eab=[%s] location=[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shanlitech/et/notice/g;

    move-object v1, v0

    move-wide v2, p2

    move v4, p0

    move-object v5, p4

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/shanlitech/et/notice/g;-><init>(JZLcom/shanlitech/et/model/SLocation;Z)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u4f4d\u7f6e\u6d88\u606f\u901a\u77e5 over"

    .line 4
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u4f4d\u7f6e\u6d88\u606f\u901a\u77e5 \u672a\u5f00\u542f"

    .line 5
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static notifyDeliverEx(JILjava/lang/String;[B)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDeliverEx type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/j;->b()Lcom/shanlitech/et/core/c/j;

    move-result-object v1

    move-wide v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/shanlitech/et/core/c/j;->c(JILjava/lang/String;[B)V

    return-void
.end method

.method private static notifyDeliverExternalMsg(JLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "\u6269\u5c55\u6d88\u606f\u901a\u77e5,sender=[%s] \u6d88\u606f=[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/notice/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/shanlitech/et/notice/f;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u6269\u5c55\u6d88\u606f\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyDeliverGroupMsg(JJLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDeliverGroupMsg sender = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], gid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], msg = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/shanlitech/et/core/c/l;->j0(JJLjava/lang/String;)V

    const-string p0, "notifyDeliverGroupMsg over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyDeliverResult(IIJ[J[JLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u900f\u4f20\u7ed3\u679c\u56de\u8c03\u901a\u77e5 result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dep_target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " group_target = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " user_target = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " delivered = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " msg_name ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object p3, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->REPORT_LOC:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {p2, p3, p0}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const-string p0, "\u900f\u4f20\u7ed3\u679c\u56de\u8c03\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyDestroyGroups(II[JI[J)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6279\u91cf\u5220\u9664\u7fa4\u7ec4\u7ed3\u679c\u901a\u77e5 > result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroy_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroy_gids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error_gids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v7, Lcom/shanlitech/et/notice/event/DestroyGroupsEvent;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shanlitech/et/notice/event/DestroyGroupsEvent;-><init>(II[JI[J)V

    invoke-virtual {v0, v7}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const-string p0, "\u6279\u91cf\u5220\u9664\u7fa4\u7ec4\u7ed3\u679c\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyDisableUser(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisableUser :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyEnableUser(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEnableUser :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyError(Ljava/lang/String;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9519\u8bef\u6d88\u606f\u901a\u77e5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/shanlitech/et/notice/i;

    invoke-direct {v0, p1, p0, p2}, Lcom/shanlitech/et/notice/i;-><init>(ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    :cond_0
    const-string p0, "\u9519\u8bef\u6d88\u606f\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyGroup(Lcom/shanlitech/et/model/Group;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7fa4\u7ec4[\u6743\u9650/\u540d\u79f0]\u53d8\u5316 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/notice/j;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/notice/j;-><init>(Lcom/shanlitech/et/model/Group;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u7fa4\u7ec4[\u6743\u9650/\u540d\u79f0]\u53d8\u5316 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyGroupInvitationChanged([Lcom/shanlitech/et/model/GroupInvitation;[J)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/c;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/notice/c;-><init>([Lcom/shanlitech/et/model/GroupInvitation;[J)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.group.invitation.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "\u7fa4\u7ec4\u9080\u8bf7\u53d8\u5316\u901a\u77e5 start"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/shanlitech/et/notice/h;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/notice/h;-><init>([Lcom/shanlitech/et/model/GroupInvitation;[J)V

    invoke-static {v1}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "\u7fa4\u7ec4\u9080\u8bf7\u53d8\u5316\u901a\u77e5 over"

    .line 5
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u7fa4\u7ec4\u9080\u8bf7\u53d8\u5316\u901a\u77e5 \u672a\u5f00\u542f"

    .line 6
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static notifyGroupSortChanged(I[J[J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyGroupSortChanged start >>> count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " gid = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " sort_idx = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->k0([J[J)V

    const-string p0, "notifyGroupSortChanged over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyGroupTransfered(Lcom/shanlitech/et/model/Group;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyGroupTransfered() called with: group = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], arg1 = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], arg2 = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->d0(Lcom/shanlitech/et/model/Group;II)V

    return-void
.end method

.method private static notifyGrouplist()V
    .locals 1

    const-string v0, "\u7fa4\u7ec4\u5217\u8868\u53d1\u751f\u53d8\u5316"

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shanlitech/et/notice/n;->a:Lcom/shanlitech/et/notice/n;

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string v0, "\u7fa4\u7ec4\u5217\u8868\u53d1\u751f\u53d8\u5316 over"

    .line 3
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyGroupsChanged(I[Lcom/shanlitech/et/model/Group;[J)V
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7fa4\u7ec4\u5217\u8868\u589e\u91cf\u901a\u77e5 update_groups = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rm_gids = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->l0([Lcom/shanlitech/et/model/Group;[J)Z

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "\u7fa4\u7ec4\u5217\u8868\u589e\u91cf\u901a\u77e5 over"

    .line 3
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyInviteGroupAck(I[Lcom/shanlitech/et/model/FailUser;)V
    .locals 1

    const-string v0, "notifyInviteGroupAck"

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->e0(I[Lcom/shanlitech/et/model/FailUser;)V

    return-void
.end method

.method private static notifyListenGrouplist([JI)V
    .locals 0

    const-string p0, "notifyListenGrouplist"

    .line 1
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->m0()Z

    const-string p0, "notifyListenGrouplist over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyMemberlist(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6210\u5458\u5217\u8868\u53d1\u751f\u53d8\u5316\uff0c\u7fa4\u7ec4id\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/notice/p;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/notice/p;-><init>(J)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u6210\u5458\u5217\u8868\u53d1\u751f\u53d8\u5316 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyMembersChanged(J[Lcom/shanlitech/et/model/Member;[J[J[JII)V
    .locals 12

    move-wide v9, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6210\u5458\u5217\u8868\u53d1\u751f\u53d8\u5316\uff08\u589e\u91cf\uff09\uff0c\u7fa4\u7ec4id\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nupdate_members = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmember_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmember_ingroup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nremove_uids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\njoind_uids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nleft_uids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    new-instance v11, Lcom/shanlitech/et/notice/l;

    move-object v0, v11

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/shanlitech/et/notice/l;-><init>(J[Lcom/shanlitech/et/model/Member;[J[J[JII)V

    invoke-static {v11}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    .line 3
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6210\u5458\u5217\u8868\u53d1\u751f\u53d8\u5316\uff08\u589e\u91cf\uff09\uff0cgroup.cache = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6210\u5458\u5217\u8868\u53d1\u751f\u53d8\u5316\uff08\u589e\u91cf\uff09\uff0cgroup.lib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/shanlitech/et/CoreEngine;->getGroupByGid(J)Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :cond_0
    const-string v0, "\u6210\u5458\u5217\u8868\u53d1\u751f\u53d8\u5316\uff08\u589e\u91cf\uff09 over"

    .line 6
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyOnlineStatus(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5728\u7ebf\u72b6\u6001\u53d8\u5316\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/notice/k;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/notice/k;-><init>(J)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u5728\u7ebf\u72b6\u6001\u53d8\u5316 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyPing(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyPlayProgress(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPlayProgress ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/q;->c()Lcom/shanlitech/et/core/c/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/q;->d(II)V

    const-string p0, "notifyPlayProgress: over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyPushQuitGroup(I[JI[IIII)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPushQuitGroup() n_gids = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], jgid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], n_left_uids = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], jleft_uid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], by_self = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], operator_ = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] , type = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/shanlitech/et/core/c/l;->q0(I[JI[IIII)V

    .line 3
    sget-boolean p0, Lcom/shanlitech/et/a;->a:Z

    if-eqz p0, :cond_0

    .line 4
    array-length p0, p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_0

    aget-wide p3, p1, p2

    .line 5
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPushQuitGroup \u4e0d\u5c5e\u4e8e\u7fa4\u7ec4\uff1a"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " \u4e86 \ntype = "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "notifyPushQuitGroup over"

    .line 6
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyPushReauestJoinSession(JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPushReauestJoinSession sid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "], uid = ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string p0, "notifyPushReauestJoinSession over"

    .line 2
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyPushResponseSession(JJII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPushResponseSession :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/shanlitech/et/core/c/l;->r0(JJII)V

    .line 3
    sget-boolean p4, Lcom/shanlitech/et/a;->a:Z

    if-eqz p4, :cond_0

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "notifyPushResponseSession.group: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object p5

    invoke-virtual {p5, p0, p1}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NoticeSender"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyPushResponseSession.user: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "notifyPushResponseSession over"

    .line 6
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyPushStopSession(JJI)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPushStopSession :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/shanlitech/et/core/c/l;->s0(JJI)Z

    const-string p0, "notifyPushStopSession over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyQuitGroups(II[JI[J)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6279\u91cf\u79bb\u5f00\u7fa4\u7ec4\u7ed3\u679c\u901a\u77e5 > result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quit_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quit_gids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error_gids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v7, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shanlitech/et/notice/event/QuitGroupsEvent;-><init>(II[JI[J)V

    invoke-virtual {v0, v7}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const-string p0, "\u6279\u91cf\u79bb\u5f00\u7fa4\u7ec4\u7ed3\u679c\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyRecordStatus(JIJJLjava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRecordStatus: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/q;->c()Lcom/shanlitech/et/core/c/q;

    move-result-object v2

    move-wide v3, p0

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/shanlitech/et/core/c/q;->e(JIJJLjava/lang/String;)V

    const-string v0, "notifyRecordStatus: over"

    .line 3
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyRequestResult(II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/ETStatusCode$Request;->values()[Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    aget-object v0, v0, p0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->values()[Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object v1

    mul-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a5\u53e3\u8c03\u7528\u901a\u77e5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/p;->a()Lcom/shanlitech/et/core/c/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/p;->b(II)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "\u63a5\u53e3\u8c03\u7528\u901a\u77e5 over"

    .line 5
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyResponseJoinSession(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyResponseJoinSession() sid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "],accept = ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyResponseSession(JII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyResponseSession sid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "],accept = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],reason = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/shanlitech/et/core/c/l;->x0(JII)V

    const-string p0, "notifyResponseSession over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifySearchAccountResult(Lcom/shanlitech/et/model/User;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u641c\u7d22\u597d\u53cb\u7ed3\u679c\u8fd4\u56de\u901a\u77e5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->p(Lcom/shanlitech/et/model/User;)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "\u641c\u7d22\u597d\u53cb\u7ed3\u679c\u8fd4\u56de\u901a\u77e5 over"

    .line 3
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifySessionChange(JI)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "notifySessionChange:gid = %s , status = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->t0(JI)Z

    const-string p0, "notifySessionChange over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static notifySessionGroupPingTimeout(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySessionGroupPingTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifySetConfirmJoinGroupAck(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySetConfirmJoinGroupAck gid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], need_confirm = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->b0(JI)V

    return-void
.end method

.method private static notifySetGroupDndAck(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySetGroupDndAck() called with: gid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], result = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->Z(JI)V

    return-void
.end method

.method private static notifySetGroupMaxSpeechTimeAck(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySetGroupMaxSpeechTimeAck: gid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " status = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string p0, "notifySetGroupMaxSpeechTimeAck: over"

    .line 2
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifySetLockingGroupAck(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySetLockingGroupAckgid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], locking = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->c0(JI)V

    return-void
.end method

.method private static notifySetUserNotes(I[J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fee\u6539\u7528\u6237\u5907\u6ce8\u7ed3\u679c\u901a\u77e5 >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/g;->q(I[J)V

    const-string p0, "\u4fee\u6539\u7528\u6237\u5907\u6ce8\u7ed3\u679c\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyStartPlayingSound(JLjava/lang/String;JLjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u64ad\u653e\u4ed6\u4eba\u8bb2\u8bdd\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v1

    move-wide v2, p3

    move-object v4, p5

    move-wide v5, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/shanlitech/et/core/c/s;->m(JLjava/lang/String;JLjava/lang/String;)V

    const-string p0, "\u5f00\u59cb\u64ad\u653e\u4ed6\u4eba\u8bb2\u8bdd \u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyStartSpeak(JLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u8bb2\u8bdd\uff0c\u5728\u7fa4\u7ec4\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/s;->k(JLjava/lang/String;)V

    const-string p0, "\u5f00\u59cb\u8bb2\u8bdd\u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyStarteSession(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStarteSession sid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "],reason = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->u0(JI)Z

    const-string p0, "notifyStarteSession over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyStopPlayingSound(JLjava/lang/String;JLjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u505c\u6b62\u64ad\u653e\u4ed6\u4eba\u8bb2\u8bdd\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v1

    move-wide v2, p3

    move-object v4, p5

    move-wide v5, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/shanlitech/et/core/c/s;->n(JLjava/lang/String;JLjava/lang/String;)V

    const-string p0, "\u505c\u6b62\u64ad\u653e\u4ed6\u4eba\u8bb2\u8bdd \u901a\u77e5 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyStopSession(J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStopSession() called with: sid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->v0(J)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStopSession() sid = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyStopSpeak(JIIILjava/lang/String;)V
    .locals 2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p5, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p3, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x3

    aput-object p4, p3, v0

    const-string p4, "\u7ed3\u675f\u8bb2\u8bdd\uff0c\u5728\u7fa4\u7ec4: gid = %s,name = %s,size = %s,time = %s"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2, p5}, Lcom/shanlitech/et/core/c/s;->l(JILjava/lang/String;)V

    const-string p0, "\u7ed3\u675f\u8bb2\u8bdd\uff0c\u5728\u7fa4\u7ec4 over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyTransferGroup(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTransferGrouperror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->y0(IJ)V

    return-void
.end method

.method private static notifyUpdateToken(JJLjava/lang/String;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const-string v1, "Token\u53d8\u66f4\u901a\u77e5\uff0cgid[%s],time[%s],token[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v3

    move-wide v4, p0

    move-wide v6, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/shanlitech/et/core/c/l;->w0(JJLjava/lang/String;)V

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Token\u53d8\u66f4\u901a\u77e5 over"

    .line 3
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static notifyUpdateUserChatEnabled([JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUpdateUserChatEnabled() called with: uid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "],  enable = ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string p0, "notifyUpdateUserChatEnabled() over"

    .line 2
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyUserBlackListMsg(JJJLjava/lang/String;J)V
    .locals 15

    move-wide/from16 v0, p2

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUserBlackListMsg uid = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v5, p0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "], expired = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "], reason = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p4

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "], msg = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], operator = ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p7

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v14, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;

    const-wide/16 v7, 0x3e8

    mul-long v7, v7, v0

    move-object v4, v14

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v13}, Lcom/shanlitech/et/notice/event/BlockListMsgEvent;-><init>(JJJLjava/lang/String;J)V

    invoke-virtual {v2, v14}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method private static notifyUserChanged([Lcom/shanlitech/et/model/User;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eba\u5458\u72b6\u6001\u53d1\u751f\u53d8\u5316[\u4e2a\u4eba\u4fe1\u606f]\uff0cstart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/notice/e;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/notice/e;-><init>([Lcom/shanlitech/et/model/User;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u4eba\u5458\u72b6\u6001\u53d1\u751f\u53d8\u5316[\u4e2a\u4eba\u4fe1\u606f] over"

    .line 3
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyUserNotesChanged([Lcom/shanlitech/et/model/Notes;)V
    .locals 1

    const-string v0, "\u597d\u53cb\u6635\u79f0\u901a\u77e5 start"

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string v0, "NoticeSender"

    .line 2
    invoke-static {v0, p0}, Lcom/shanlitech/et/c/h;->m(Ljava/lang/String;[Lcom/shanlitech/et/model/Notes;)V

    .line 3
    new-instance v0, Lcom/shanlitech/et/notice/o;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/notice/o;-><init>([Lcom/shanlitech/et/model/Notes;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u597d\u53cb\u6635\u79f0\u901a\u77e5 over"

    .line 4
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyUserStartSpeak(JJLjava/lang/String;JLjava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.history.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u5f00\u59cb\u8bb2\u8bdd\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v9, p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v6, p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v2

    move-object v8, p4

    invoke-virtual/range {v2 .. v10}, Lcom/shanlitech/et/core/c/s;->o(JLjava/lang/String;JLjava/lang/String;J)V

    const-string v0, "\u7528\u6237\u5f00\u59cb\u8bb2\u8bdd \u901a\u77e5 over"

    .line 4
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u7528\u6237\u5f00\u59cb\u8bb2\u8bdd \u672a\u5f00\u542f"

    .line 5
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static notifyUserStatusChanged([Lcom/shanlitech/et/model/User;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eba\u5458\u72b6\u6001\u53d1\u751f\u53d8\u5316[\u5728\u7ebf]\uff0cstart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string v0, "NoticeSender"

    .line 2
    invoke-static {v0, p0}, Lcom/shanlitech/et/c/h;->n(Ljava/lang/String;[Lcom/shanlitech/et/model/User;)V

    .line 3
    new-instance v0, Lcom/shanlitech/et/notice/a;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/notice/a;-><init>([Lcom/shanlitech/et/model/User;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->e(Ljava/lang/Runnable;)V

    const-string p0, "\u4eba\u5458\u72b6\u6001\u53d1\u751f\u53d8\u5316[\u5728\u7ebf] over"

    .line 4
    invoke-static {p0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyUserStopSpeak(JJLjava/lang/String;JLjava/lang/String;II)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.history.enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u505c\u6b62\u8bb2\u8bdd\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v9, p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v6, p2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ time>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ size>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p9

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v12}, Lcom/shanlitech/et/core/c/s;->p(JLjava/lang/String;JLjava/lang/String;JII)V

    const-string v0, "\u7528\u6237\u505c\u6b62\u8bb2\u8bdd \u901a\u77e5 over"

    .line 4
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u7528\u6237\u505c\u6b62\u8bb2\u8bdd \u672a\u5f00\u542f"

    .line 5
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static notifyWatchGrouplist()V
    .locals 1

    const-string v0, "\u76d1\u542c\u7fa4\u7ec4\u5217\u8868\u53d1\u751f\u53d8\u5316"

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    const-string v0, "\u76d1\u542c\u7fa4\u7ec4\u5217\u8868\u53d1\u751f\u53d8\u5316 over"

    .line 2
    invoke-static {v0}, Lcom/shanlitech/et/notice/EchatNoticeSender;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o([Lcom/shanlitech/et/model/Notes;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->r([Lcom/shanlitech/et/model/Notes;)V

    return-void
.end method

.method static synthetic p([Lcom/shanlitech/et/model/User;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->z([Lcom/shanlitech/et/model/User;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/o;->a()Lcom/shanlitech/et/core/c/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/o;->d([Lcom/shanlitech/et/model/User;)V

    return-void
.end method
