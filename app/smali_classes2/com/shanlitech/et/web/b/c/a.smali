.class public abstract Lcom/shanlitech/et/web/b/c/a;
.super Lcom/shanlitech/et/web/im/a/a;
.source "AccountToBMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/im/a/a;-><init>()V

    return-void
.end method

.method private getAccountInfo(Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Lcom/shanlitech/et/web/tob/api/model/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->d()Lcom/shanlitech/et/web/tob/api/model/AccountInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->e()Lcom/shanlitech/et/model/User;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/web/b/c/a$i;

    invoke-direct {v1, p0, p1}, Lcom/shanlitech/et/web/b/c/a$i;-><init>(Lcom/shanlitech/et/web/b/c/a;Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/b/c/i;->queryAccountInfo(Lcom/shanlitech/et/web/tob/api/g;)Z

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/shanlitech/et/web/tob/api/RespWrapper;

    const/16 v2, 0xc8

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/shanlitech/et/web/tob/api/RespWrapper;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3, v1}, Lcom/shanlitech/et/web/tob/api/g;->a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V

    :goto_0
    return-void
.end method

.method private modifyAccountInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/a;->uid()J

    move-result-wide v3

    new-instance v6, Lcom/shanlitech/et/web/b/c/a$e;

    invoke-direct {v6, p0}, Lcom/shanlitech/et/web/b/c/a$e;-><init>(Lcom/shanlitech/et/web/b/c/a;)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/shanlitech/et/web/tob/api/m;->h(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method private modifyUserInformation(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/a;->uid()J

    move-result-wide v5

    new-instance v7, Lcom/shanlitech/et/web/b/c/a$d;

    invoke-direct {v7, p0}, Lcom/shanlitech/et/web/b/c/a$d;-><init>(Lcom/shanlitech/et/web/b/c/a;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/shanlitech/et/web/tob/api/m;->j(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method private passwordReset(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/a;->uid()J

    move-result-wide v1

    new-instance v3, Lcom/shanlitech/et/web/b/c/a$c;

    invoke-direct {v3, p0}, Lcom/shanlitech/et/web/b/c/a$c;-><init>(Lcom/shanlitech/et/web/b/c/a;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/m;->k(Ljava/lang/String;JLcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method private static sendMessageNotice(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/web/b/c/a$a;

    invoke-direct {v1}, Lcom/shanlitech/et/web/b/c/a$a;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/shanlitech/et/web/tob/api/m;->l(Ljava/util/List;Lcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method private sendMessageVerification(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/web/b/c/a$b;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/web/b/c/a$b;-><init>(Lcom/shanlitech/et/web/b/c/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/shanlitech/et/web/tob/api/m;->m(Ljava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method private uid()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bindPhone(Ljava/lang/String;Ljava/lang/String;Lb/c/a/c/d;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/a;->uid()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shanlitech/et/web/b/b;->E(JLjava/lang/String;Ljava/lang/String;Lb/c/a/c/d;)V

    return-void
.end method

.method public configAccountServer(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/web/ServerType;->a:Lcom/shanlitech/et/web/ServerType;

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/web/a;->u(Lcom/shanlitech/et/web/ServerType;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public configServer(Lcom/shanlitech/et/web/ServerType;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/web/a;->u(Lcom/shanlitech/et/web/ServerType;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/b;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyLogo(Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/b/c/a$g;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/web/b/c/a$g;-><init>(Lcom/shanlitech/et/web/b/c/a;Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-direct {p0, v0}, Lcom/shanlitech/et/web/b/c/a;->getAccountInfo(Lcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public getCompanyName(Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/b/c/a$h;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/web/b/c/a$h;-><init>(Lcom/shanlitech/et/web/b/c/a;Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-direct {p0, v0}, Lcom/shanlitech/et/web/b/c/a;->getAccountInfo(Lcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public abstract getDefaultGroup()Lcom/shanlitech/et/model/Group;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getPlatformID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/b;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUid()J
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shanlitech/et/web/b/b;->M(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public modifyFavorites(Z[JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/k;->f()Lcom/shanlitech/et/web/tob/api/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shanlitech/et/web/tob/api/k;->g(Z[JLcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public modifyPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/a;->uid()J

    move-result-wide v3

    new-instance v5, Lcom/shanlitech/et/web/b/c/a$f;

    invoke-direct {v5, p0}, Lcom/shanlitech/et/web/b/c/a$f;-><init>(Lcom/shanlitech/et/web/b/c/a;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/shanlitech/et/web/tob/api/m;->i(Ljava/lang/String;Ljava/lang/String;JLcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public queryFavoriteList(IILjava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)Z
    .locals 7
    .param p4    # Lcom/shanlitech/et/web/tob/api/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Object<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/k;->f()Lcom/shanlitech/et/web/tob/api/k;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/shanlitech/et/web/tob/api/k;->h(IILjava/lang/String;ILjava/util/HashMap;Lcom/shanlitech/et/web/tob/api/g;)V

    const/4 p1, 0x1

    return p1
.end method

.method public querySessionHistory(IIILcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Object<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/k;->f()Lcom/shanlitech/et/web/tob/api/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/web/tob/api/k;->i(IIILcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public queryTerminalStatus(Ljava/lang/String;Lb/c/a/c/d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/web/b/b;->T(Ljava/lang/String;Lb/c/a/c/d;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/core/c/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/b/b;->U(Ljava/lang/String;)V

    return-void
.end method

.method public requestBindPhoneSMSCode(Ljava/lang/String;Lb/c/a/c/d;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/a;->uid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/shanlitech/et/web/b/b;->V(JLjava/lang/String;Lb/c/a/c/d;)V

    return-void
.end method

.method public requestLoginSMSCode(Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/web/b/b;->W(Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V

    return-void
.end method

.method public requestPWDSMSCode(Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/web/b/b;->X(Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V

    return-void
.end method

.method public resetPWD(Ljava/lang/String;ILjava/lang/String;Lb/c/a/c/d;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/web/b/b;->Y(Ljava/lang/String;ILjava/lang/String;Lb/c/a/c/d;)V

    return-void
.end method

.method public resetPWD(Ljava/lang/String;Ljava/lang/String;Lb/c/a/c/d;)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/a;->getPlatformID()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shanlitech/et/web/b/b;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/c/a/c/d;)V

    return-void
.end method

.method public verifyAccountAndPhone(Ljava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/m;->f()Lcom/shanlitech/et/web/tob/api/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shanlitech/et/web/b/c/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/shanlitech/et/web/tob/api/m;->n(Ljava/lang/String;Ljava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)V

    return-void
.end method

.method public verifyPWDSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/shanlitech/et/web/b/b;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILb/c/a/c/d;)V

    return-void
.end method
