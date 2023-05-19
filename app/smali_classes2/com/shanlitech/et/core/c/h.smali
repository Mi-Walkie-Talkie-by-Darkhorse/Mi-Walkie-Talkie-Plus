.class public Lcom/shanlitech/et/core/c/h;
.super Ljava/lang/Object;
.source "PocAccountManager.java"


# static fields
.field private static final e:Ljava/lang/String; = "h"

.field private static f:Lcom/shanlitech/et/core/c/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/core/c/h;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/h;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/h;->f:Lcom/shanlitech/et/core/c/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shanlitech/et/core/c/h;->c:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/h;->d:J

    return-void
.end method

.method private D()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shanlitech/et/core/c/h;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/shanlitech/et/core/c/h;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/h;->d:J

    return-void
.end method

.method private H()Z
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shanlitech/et/core/c/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shanlitech/et/core/c/h;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/shanlitech/et/core/c/h;->d:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "%s\n%s\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/h;->q(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/core/c/h;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/shanlitech/et/core/c/h;->b:Ljava/lang/String;

    iget v4, p0, Lcom/shanlitech/et/core/c/h;->c:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/shanlitech/et/model/Account;->login(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static j()Lcom/shanlitech/et/core/c/h;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/h;->f:Lcom/shanlitech/et/core/c/h;

    return-object v0
.end method

.method public static synthetic p(Lcom/shanlitech/et/core/c/h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/shanlitech/et/core/c/h;->H()Z

    move-result p0

    return p0
.end method

.method private q(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/h;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private x()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/core/c/h;->d:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/shanlitech/et/core/c/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public A(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/h;->q(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u9700\u8981\u91cd\u8bd5"

    .line 3
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/h;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->getOnlinestatus()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 6
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/h;->D()V

    :cond_3
    :goto_0
    return-void
.end method

.method public B(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->Q(J)V

    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->readConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p1

    :goto_0
    return-object p3
.end method

.method public E(IILjava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {v0, p1, p2, p3}, Lcom/shanlitech/et/CoreEngine;->deliverTerminalInfo(Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    .line 2
    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F(DDDIDDLjava/lang/String;J)Z
    .locals 16

    const-string v0, "terminal.lbs."

    const/4 v15, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    .line 1
    invoke-static/range {v0 .. v15}, Lcom/shanlitech/et/CoreEngine;->deliverLocationInfo(Ljava/lang/String;DDDIDDLjava/lang/String;JZ)I

    move-result v0

    .line 2
    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G(Z)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->mute(Z)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/shanlitech/et/core/c/h;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "/result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public I(JJII)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/shanlitech/et/core/c/e;->Y(JJII)V

    return-void
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/shanlitech/et/core/c/h;->e:Ljava/lang/String;

    const-string p2, "writeConfig: break by <section> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/shanlitech/et/core/c/h;->e:Ljava/lang/String;

    const-string p2, "writeConfig: break by <key> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    sget-object v0, Lcom/shanlitech/et/core/c/h;->e:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const-string v4, "writeConfig: section=%s key=%s value=[%s]"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p2, p3}, Lcom/shanlitech/et/CoreEngine;->writeConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Lcom/shanlitech/et/web/tob/api/model/AccountInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->f()Lcom/shanlitech/et/web/tob/api/model/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->r()Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/shanlitech/et/model/PwdExpireInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->u()Lcom/shanlitech/et/model/PwdExpireInfo;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->y(J)Lcom/shanlitech/et/model/User;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->isAudioEnabled()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/h;->e()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->isDispatcher()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m(J)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->isMuted()Z

    move-result v0

    .line 2
    sget-object v1, Lcom/shanlitech/et/core/c/h;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMuted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->G()Z

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;ILcom/shanlitech/et/web/LoginType;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/h;->D()V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u5f53\u524d\u5728\u7ebf"

    .line 4
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/h;->q(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->S()V

    .line 6
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/l;->Q0(Ljava/lang/String;)Z

    move-result v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginPoc: setJoinDefault:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/h;->q(Ljava/lang/String;)V

    .line 8
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/shanlitech/et/core/c/h;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginPoc: account = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/core/c/r;->k(Ljava/lang/String;Ljava/lang/String;ILcom/shanlitech/et/web/LoginType;)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/h;->D()V

    const-string v0, "release: logout"

    .line 2
    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/h;->q(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/r;->l()Z

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->changeEmail(Ljava/lang/String;)I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public u(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->changeName(Ljava/lang/String;)I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public v(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->changePhone(Ljava/lang/String;)I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->changePassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(ILjava/lang/String;I)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/shanlitech/et/core/c/a;

    invoke-direct {p1, p0}, Lcom/shanlitech/et/core/c/a;-><init>(Lcom/shanlitech/et/core/c/h;)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lcom/shanlitech/et/c/m;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/MessageEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/shanlitech/et/notice/event/MessageEvent;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public z(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/ResultEvent;

    invoke-direct {v1, p1, p2}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method
