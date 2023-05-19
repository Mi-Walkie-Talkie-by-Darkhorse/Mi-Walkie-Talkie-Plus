.class public abstract Lcom/shanlitech/et/web/b/c/e;
.super Ljava/lang/Object;
.source "HistoryMessageMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/shanlitech/et/model/push/HistoryMessage;
    .locals 2

    .line 1
    const-class v0, Lcom/shanlitech/et/model/push/HistoryMessage;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/h;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/model/push/HistoryMessage;

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/push/HistoryMessage;->getUname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shanlitech/et/model/push/HistoryMessage;->setUname(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/push/HistoryMessage;->setAccount(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public buildGroupUsersMessage()Lcom/shanlitech/et/model/push/HistoryGroupUsers;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getBody()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/shanlitech/et/model/push/HistoryGroupUsers;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/h;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/push/HistoryGroupUsers;

    return-object v0
.end method

.method public buildHistoryAudioBody()Lcom/shanlitech/et/model/HistoryAudio;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getBody()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/shanlitech/et/model/HistoryAudio;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/h;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/HistoryAudio;

    return-object v0
.end method

.method public buildHistorySessionStatus()Lcom/shanlitech/et/model/push/HistorySessionStatus;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getBody()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/shanlitech/et/model/push/HistorySessionStatus;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/h;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/push/HistorySessionStatus;

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getReceiver()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/model/push/HistorySessionStatus;->setGid(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public buildIMessageBody()Lcom/shanlitech/et/web/im/model/IMessage;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getBody()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/shanlitech/et/web/im/model/IMessage;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/h;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/web/im/model/IMessage;

    return-object v0
.end method

.method public delete(Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/k;->f()Lcom/shanlitech/et/web/tob/api/k;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/web/tob/api/k;->k([JLcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public abstract getBody()Ljava/lang/String;
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getReceiverType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getReceiver()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getId()J
.end method

.method public abstract getIsFavorite()I
.end method

.method public abstract getReceiver()J
.end method

.method public abstract getReceiverType()I
.end method

.method public abstract getSender()J
.end method

.method public getUser()Lcom/shanlitech/et/model/User;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getSender()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentGroupMsg()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getReceiverType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getReceiver()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getIsFavorite()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFromMe()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getSender()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    return v0
.end method

.method public isSessionGroup()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public modifyFavorite(ZLcom/shanlitech/et/web/tob/api/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/k;->f()Lcom/shanlitech/et/web/tob/api/k;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, p1, v1, p2}, Lcom/shanlitech/et/web/tob/api/k;->g(Z[JLcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public read(Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/k;->f()Lcom/shanlitech/et/web/tob/api/k;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/e;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/web/tob/api/k;->j([JLcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method
