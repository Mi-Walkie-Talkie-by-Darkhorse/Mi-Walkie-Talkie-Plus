.class public abstract Lcom/shanlitech/et/web/b/c/i;
.super Ljava/lang/Object;
.source "UserTobMethod.java"

# interfaces
.implements Lcom/shanlitech/et/core/sl/model/IUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserTobMethod"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginAccount()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/b;->J()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/shanlitech/et/core/sl/model/IUser;->getAccount()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/shanlitech/et/core/sl/model/IUser;->getAccount()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public modifyEMail(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-interface {p0}, Lcom/shanlitech/et/core/sl/model/IUser;->getUid()J

    move-result-wide v1

    sget-object v3, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->EMAIL:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/shanlitech/et/web/b/b;->F(JLcom/shanlitech/et/notice/event/ResultEvent$TYPE;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public modifyName(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-interface {p0}, Lcom/shanlitech/et/core/sl/model/IUser;->getUid()J

    move-result-wide v1

    sget-object v3, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NAME:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/shanlitech/et/web/b/b;->F(JLcom/shanlitech/et/notice/event/ResultEvent$TYPE;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public modifyPhone(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-interface {p0}, Lcom/shanlitech/et/core/sl/model/IUser;->getUid()J

    move-result-wide v1

    sget-object v3, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->PHONE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/shanlitech/et/web/b/b;->F(JLcom/shanlitech/et/notice/event/ResultEvent$TYPE;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public queryAccountInfo()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/i;->f()Lcom/shanlitech/et/web/tob/api/i;

    move-result-object v0

    invoke-interface {p0}, Lcom/shanlitech/et/core/sl/model/IUser;->getUid()J

    move-result-wide v1

    new-instance v3, Lcom/shanlitech/et/web/b/c/i$a;

    invoke-direct {v3, p0}, Lcom/shanlitech/et/web/b/c/i$a;-><init>(Lcom/shanlitech/et/web/b/c/i;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/i;->h(JLcom/shanlitech/et/web/tob/api/g;)V

    const/4 v0, 0x1

    return v0
.end method

.method public queryAccountInfo(Lcom/shanlitech/et/web/tob/api/g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Lcom/shanlitech/et/web/tob/api/model/AccountInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/i;->f()Lcom/shanlitech/et/web/tob/api/i;

    move-result-object v0

    invoke-interface {p0}, Lcom/shanlitech/et/core/sl/model/IUser;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/shanlitech/et/web/tob/api/i;->h(JLcom/shanlitech/et/web/tob/api/g;)V

    const/4 p1, 0x1

    return p1
.end method
