.class public abstract Lcom/shanlitech/et/web/im/a/c;
.super Ljava/lang/Object;
.source "MessageIMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/a/c;->getTargetId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getSendUser()Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/a/c;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->i(J)Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTargetId()J
.end method

.method public abstract getTargetType()I
.end method

.method public abstract getUserAccount()Ljava/lang/String;
.end method

.method protected abstract getUserId()J
.end method

.method protected abstract getmMsgId()J
.end method

.method public startSession(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/im/a/c;->getUserAccount()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/web/b/c/a;->getPlatformID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/c/a;->getPlatformID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/web/b/c/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-virtual {v1, p1, v3, v4}, Lcom/shanlitech/et/b/c/a;->createSessionGroup(Ljava/lang/String;Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected uid()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v0

    return-wide v0
.end method
