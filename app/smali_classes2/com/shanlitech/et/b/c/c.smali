.class public abstract Lcom/shanlitech/et/b/c/c;
.super Lcom/shanlitech/et/web/b/c/g;
.source "MemberMethod.java"


# static fields
.field public static final INGROUP_STATUS_INGROUP:I = 0x1

.field public static final INGROUP_STATUS_STANDALONE:I = 0x2

.field public static final INGROUP_STATUS_UNKOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MemberMethod"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/g;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getGid()J
.end method

.method public abstract getInGroup()I
.end method

.method public abstract getTop()I
.end method

.method public abstract getUid()J
.end method

.method public inGroup()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/c;->getInGroup()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMe()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/c;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    return v0
.end method

.method public isTop()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/c;->getTop()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public modifyTop(Z)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/c;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/model/Account;->getGroup(J)Lcom/shanlitech/et/model/Group;

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->isDispatcher()Z

    move-result v0

    const-string v1, "MemberMethod"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "setMemberTop() must called by dispatcher"

    .line 3
    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/c;->getGid()J

    move-result-wide v3

    const/4 v0, 0x1

    new-array v5, v0, [J

    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/c;->getUid()J

    move-result-wide v6

    aput-wide v6, v5, v2

    invoke-static {v3, v4, v5, p1}, Lcom/shanlitech/et/CoreEngine;->setMemberTop(J[JZ)I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMemberTop() called with: top = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "] result = ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] gid = ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shanlitech/et/b/c/c;->getGid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ] "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v3, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
