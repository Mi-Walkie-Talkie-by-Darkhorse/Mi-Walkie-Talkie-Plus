.class public Lcom/shanlitech/et/core/c/l;
.super Ljava/lang/Object;
.source "PocGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/core/c/l$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "l"

.field private static volatile g:J

.field private static volatile h:Lcom/shanlitech/et/model/Group;

.field private static i:Lcom/shanlitech/et/core/c/l;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/shanlitech/et/core/c/l$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/shanlitech/et/core/c/m;

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/core/c/l;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/l;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/l;->i:Lcom/shanlitech/et/core/c/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/l;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/l;->d:J

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/l;->e:J

    return-void
.end method

.method private A0(JJI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/shanlitech/et/core/c/l$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v2, p5, v3, v4}, Lcom/shanlitech/et/core/c/l$a;-><init>(IJ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putRefuseReason: sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " reason = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Lcom/shanlitech/et/core/c/l;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic L(JLcom/shanlitech/et/model/Group;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-static {p2, p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->post(Lcom/shanlitech/et/model/Group;Z)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private L0(JZI)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shanlitech/et/core/c/l;->A0(JJI)V

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/shanlitech/et/CoreEngine;->responseSession(JZI)I

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

.method static synthetic M(JILcom/shanlitech/et/model/Group;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/h;->e()Lcom/shanlitech/et/model/User;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->postSticky(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/User;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private S(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private T(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private U(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private V0(J)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shanlitech/et/core/c/l;->W0(JI)Z

    move-result p1

    return p1
.end method

.method private W0(JI)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSession>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/shanlitech/et/CoreEngine;->stopSession(JI)I

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

.method private b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanRefuseReason() called with: sid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    return-void
.end method

.method private c(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/core/c/l$a;

    .line 6
    iget-wide v2, v2, Lcom/shanlitech/et/core/c/l$a;->b:J

    add-long/2addr v2, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p3

    if-nez p3, :cond_3

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->b(J)V

    :cond_3
    return-void
.end method

.method private j(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->getDefaultGroupId()J

    move-result-wide v0

    return-wide v0
.end method

.method private s(J)Lcom/shanlitech/et/model/MemberList;
    .locals 3

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/MemberList;

    invoke-direct {v0, p1, p2}, Lcom/shanlitech/et/model/MemberList;-><init>(J)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    invoke-static {p1, p2, v1, v2, v1}, Lcom/shanlitech/et/CoreEngine;->getMemberList(JIIZ)[Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/model/MemberList;->addAll([Lcom/shanlitech/et/model/Member;)Lcom/shanlitech/et/model/MemberList;

    return-object v0
.end method

.method private x(Lcom/shanlitech/et/model/Group;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    iget-object v1, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/shanlitech/et/core/c/l;->c(JJ)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->isMySession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/shanlitech/et/core/c/l;->A0(JJI)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 8
    invoke-static {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->postSticky(Lcom/shanlitech/et/model/Group;)V

    :cond_4
    return-void
.end method

.method public static z()Lcom/shanlitech/et/core/c/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->i:Lcom/shanlitech/et/core/c/l;

    return-object v0
.end method


# virtual methods
.method public varargs A(Lcom/shanlitech/et/model/Group;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "inviteUser: break by <group is null>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p3, :cond_1

    .line 2
    array-length v1, p3

    if-lez v1, :cond_1

    .line 3
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "inviteUser: break by <users is null>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4
    :cond_1
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inviteUser: group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]\n user size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2, p3, p2}, Lcom/shanlitech/et/CoreEngine;->invite(J[Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public B(J)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-wide v2, Lcom/shanlitech/et/core/c/l;->g:J

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-wide v5, Lcom/shanlitech/et/core/c/l;->g:J

    cmp-long v2, p1, v5

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "isCurrentGroup: current.getGid()=[%s] check.getGid()=[%s] result=[%s]"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-wide v0, Lcom/shanlitech/et/core/c/l;->g:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public B0(J)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->queryGroupInvition(J)I

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

.method public C(Lcom/shanlitech/et/model/Group;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C0()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->queryGroups()I

    move-result v0

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryGroups: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->isJoinDefaultGroup()Z

    move-result v0

    return v0
.end method

.method public D0(Lcom/shanlitech/et/model/Group;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v1, "queryMemberList: break by <group> is null..."

    invoke-static {p1, v1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    const/4 p1, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, p1, v3}, Lcom/shanlitech/et/CoreEngine;->getMemberList(JIIZ)[Lcom/shanlitech/et/model/Member;

    return v0
.end method

.method public E(Lcom/shanlitech/et/model/Group;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shanlitech/et/CoreEngine;->isListeningGroup(J)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isListeningGroup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " \n result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    return v0
.end method

.method public E0(Lcom/shanlitech/et/model/Group;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "quiteGroup break by Group is null..."

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/shanlitech/et/CoreEngine;->quitGroup(J)I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quiteGroup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 4
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public F(Lcom/shanlitech/et/model/Group;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v0

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F0(Lcom/shanlitech/et/model/Group;)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v0

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shanlitech/et/CoreEngine;->destroyGroup(J)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shanlitech/et/CoreEngine;->quitGroup(J)I

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "welcome to hell... hey hey hey ..."

    .line 5
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public G(J)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "joinGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->S(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->i()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x65

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/shanlitech/et/core/c/l;->X0(Lcom/shanlitech/et/model/Group;I)Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v2, "sdk.function.lockjoingroup.bytoken"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/shanlitech/et/core/b;->h(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p1

    .line 7
    invoke-static/range {v4 .. v9}, Lcom/shanlitech/et/CoreEngine;->joinGroup(JILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "joinGroup  gid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->S(Ljava/lang/String;)V

    .line 9
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public G0(Lcom/shanlitech/et/model/GroupInvitation;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v1, "removeInvitation: break by <invitation> is null..."

    invoke-static {p1, v1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [J

    .line 2
    iget-wide v3, p1, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    aput-wide v3, v2, v0

    .line 3
    invoke-static {v2}, Lcom/shanlitech/et/CoreEngine;->deleteGroupInvition([J)I

    move-result p1

    sget v3, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/shanlitech/et/core/c/e;->M([Lcom/shanlitech/et/model/GroupInvitation;[J)Z

    :cond_2
    return v0
.end method

.method public H(JLjava/lang/String;ILjava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    move-wide v0, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/shanlitech/et/CoreEngine;->joinGroup(JILjava/lang/String;ILjava/lang/String;)I

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

.method public varargs H0([J)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v1, "removeInvitation: break by <invitation> is null..."

    invoke-static {p1, v1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->deleteGroupInvition([J)I

    move-result p1

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public I(Lcom/shanlitech/et/model/Group;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/core/c/l;->G(J)Z

    move-result p1

    return p1
.end method

.method public I0(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shanlitech/et/model/GroupInvitation;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v1, "removeInvitation: break by <invitation> is null..."

    invoke-static {p1, v1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shanlitech/et/c/h;->b(Ljava/util/Collection;)[J

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/shanlitech/et/CoreEngine;->deleteGroupInvition([J)I

    move-result v1

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 4
    :cond_1
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeInvitation: remove.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " remove.result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public J(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.function.lockjoingroup.bytoken"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->h(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    .line 2
    invoke-static/range {v3 .. v8}, Lcom/shanlitech/et/CoreEngine;->joinGroup(JILjava/lang/String;ILjava/lang/String;)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public varargs J0(Lcom/shanlitech/et/model/Group;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "removeMembers: break by <group is null>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "removeMembers: break by <accounts is null>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/shanlitech/et/CoreEngine;->removeMembers(J[Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 4
    :cond_2
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMembers: group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]\n accounts size="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public K(Lcom/shanlitech/et/model/Group;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shanlitech/et/CoreEngine;->getGroupByGid(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "joinSession.abort<group is null>"

    .line 2
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/shanlitech/et/model/Group;

    aput-object p1, v3, v0

    invoke-virtual {v1, v3}, Lcom/shanlitech/et/core/c/e;->V([Lcom/shanlitech/et/model/Group;)V

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "joinSession.abort<is current session>"

    .line 6
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    return v2

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "joinSession.status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    if-eq v1, v2, :cond_8

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_9

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinSession.abort<session.status is error> :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/GroupSession;->isMySession()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "joinSession.group.session.isMy"

    .line 11
    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/l;->I(Lcom/shanlitech/et/model/Group;)Z

    move-result p1

    return p1

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/l;->r(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/MemberList;->me()Lcom/shanlitech/et/model/Member;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Member;->getMemberSession()Lcom/shanlitech/et/model/MemberSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shanlitech/et/model/MemberSession;->getResponse()I

    move-result v5

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "joinSession.member_session:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Member;->getMemberSession()Lcom/shanlitech/et/model/MemberSession;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_4

    if-eq v5, v4, :cond_5

    if-eq v5, v3, :cond_5

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "joinSession.member_session.response = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/l;->I(Lcom/shanlitech/et/model/Group;)Z

    move-result p1

    return p1

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2, v0}, Lcom/shanlitech/et/core/c/l;->L0(JZI)Z

    move-result p1

    return p1

    :cond_6
    const-string v1, "joinSession.group.member.me is null"

    .line 19
    invoke-direct {p0, v1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2, v0}, Lcom/shanlitech/et/core/c/l;->L0(JZI)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/l;->I(Lcom/shanlitech/et/model/Group;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 21
    :cond_8
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2, v0}, Lcom/shanlitech/et/core/c/l;->L0(JZI)Z

    move-result p1

    return p1

    .line 22
    :cond_9
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/l;->O(Lcom/shanlitech/et/model/Group;)Z

    .line 23
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/shanlitech/et/CoreEngine;->startSession(J)I

    move-result p1

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 24
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group type is \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\" group.join() is better way...\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public K0(Lcom/shanlitech/et/model/GroupInvitation;ZZ)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "responseGroup: break by <invitation> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    iget-wide v1, p1, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    invoke-static {v1, v2, p2, p3}, Lcom/shanlitech/et/CoreEngine;->responseGroup(JZZ)I

    move-result p3

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 v2, 0x1

    if-ne p3, v1, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 3
    :goto_0
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "responseGroup: invitation=[%s] accept=[%s] result=[%s]"

    .line 5
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p3
.end method

.method public M0(Lcom/shanlitech/et/model/Group;ZI)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->i()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/shanlitech/et/core/c/l;->V0(J)Z

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/shanlitech/et/core/c/l;->L0(JZI)Z

    move-result p1

    return p1
.end method

.method public N()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->leaveGroup()I

    move-result v0

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;ZI)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/shanlitech/et/core/c/l;->M0(Lcom/shanlitech/et/model/Group;ZI)Z

    move-result p1

    return p1
.end method

.method public O(Lcom/shanlitech/et/model/Group;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->N()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public O0(Lcom/shanlitech/et/model/Group;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "setConfirmJoinGroup: break by <group is null>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfirmJoinGroup: group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]\n enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/shanlitech/et/CoreEngine;->SetConfirmJoinGroup(JZ)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public P(Lcom/shanlitech/et/model/Group;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/shanlitech/et/CoreEngine;->listenGroup(JZ)Z

    move-result p1

    return p1
.end method

.method public P0(Lcom/shanlitech/et/model/Group;J)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-static {p2, p3, v2, v3}, Lcom/shanlitech/et/CoreEngine;->setUserDefaultGroup(JJ)I

    move-result v0

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v2, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultGroup group = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " uid = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/shanlitech/et/c/h;->o(Ljava/lang/String;[Ljava/lang/String;)V

    return v0
.end method

.method public varargs Q([J)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->listenGroupEx([J)I

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

.method public Q0(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shanlitech/et/core/c/l;->R0(Z)Z

    .line 2
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->j(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "last_group"

    const-string v3, "account"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->j(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v2, p1}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v3, v2, v0}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public R()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/core/c/l;->B0(J)Z

    return-void
.end method

.method public R0(Z)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->setJoinDefaultGroup(Z)Z

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->D()Z

    move-result p1

    return p1
.end method

.method public S0(Lcom/shanlitech/et/model/Group;)Z
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    .line 2
    :goto_0
    invoke-static {v0, v1}, Lcom/shanlitech/et/CoreEngine;->setLockedGroup(J)I

    move-result p1

    .line 3
    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->getLockedGroup()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shanlitech/et/core/c/l;->e:J

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockedGroup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " result:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 6
    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public T0(Lcom/shanlitech/et/model/Group;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "SetLockingGroup: break by <group is null>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetLockingGroup: group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]\n enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/shanlitech/et/CoreEngine;->SetLockingGroup(JZ)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public U0(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "setSelfNameInGroup: break by <group> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/shanlitech/et/CoreEngine;->setSelfNameInGroup(JLjava/lang/String;)I

    move-result v1

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/shanlitech/et/core/c/e;->a0(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v4

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/shanlitech/et/core/c/e;->q(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 5
    :cond_2
    sget-object v2, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v3

    const/4 p1, 0x2

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "setSelfNameInGroup: modify name inGroup[%s]->[%s] result=[%s]"

    .line 7
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object v0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NAME_INGROUP:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-direct {p2, v0, v1}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return v1
.end method

.method public V(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "modifyGroupDesc break by Group is null..."

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/l;->F(Lcom/shanlitech/et/model/Group;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "modifyGroupDesc break by Group\'creater is other..."

    .line 3
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/shanlitech/et/CoreEngine;->changeGroupDesc(JLjava/lang/String;)I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyGroupDesc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " name:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 6
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public W(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Member;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "modifyGroupMemberSpeechTime break by group is null..."

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "modifyGroupMemberSpeechTime break by member is null..."

    .line 2
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    :cond_1
    if-gez p3, :cond_2

    const-string p1, "modifyGroupMemberSpeechTime break by time < 0 ..."

    .line 3
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 4
    :cond_2
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shanlitech/et/core/c/e;->q(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object v1

    .line 5
    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shanlitech/et/model/MemberList;->hasUser(J)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "modifyGroupMemberSpeechTime break by member error..."

    .line 6
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p3}, Lcom/shanlitech/et/CoreEngine;->setMemberMaxSpeechTime(JJI)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p2, 0x2

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    const/4 p2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    const-string p2, "modifyGroupMemberSpeechTime %s %s time = %s result = %s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 9
    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public X(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "modifyGroupName: break by <group> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "modifyName: break by <newName = oldName>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-static {v3, v4, p2}, Lcom/shanlitech/et/CoreEngine;->changeGroupName(JLjava/lang/String;)I

    move-result v1

    sget v3, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    sget-object v3, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "modifyGroupName: group.getGid()=[%s] group.name[%s]->[%s] result=[%s]"

    .line 7
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public X0(Lcom/shanlitech/et/model/Group;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSession() called with: session = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], reason = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "leaveSession.running <not in>"

    .line 4
    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->isMySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v4

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/shanlitech/et/core/c/l;->A0(JJI)V

    .line 7
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/shanlitech/et/core/c/l;->W0(JI)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/shanlitech/et/core/c/l;->L0(JZI)Z

    move-result p1

    return p1

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaveSession.running "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v5

    const/4 v7, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/shanlitech/et/core/c/l;->A0(JJI)V

    .line 14
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/shanlitech/et/core/c/l;->W0(JI)Z

    move-result p1

    return p1

    .line 15
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " group.leave() is better way...\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public Y(JI[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public Y0(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Member;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "transferGroup: break by <group> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/shanlitech/et/CoreEngine;->transferGroup(JJ)I

    move-result v1

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v3

    const/4 p1, 0x2

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "transferGroup: group.getGid()=[%s] group.creator[%s]->[%s] result=[%s]"

    .line 5
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public Z(JI)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupDndAckEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/shanlitech/et/notice/event/GroupDndAckEvent;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public Z0(Lcom/shanlitech/et/model/Group;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shanlitech/et/CoreEngine;->updateToken(J)I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v0, "updateToken: break by <group> is null..."

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public a(Lcom/shanlitech/et/model/Group;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "changeGroupAvatar break by Group is null..."

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/shanlitech/et/CoreEngine;->changeGroupAvatar(JLjava/lang/String;)I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeGroupAvatar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " avatar:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 4
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public a0([Lcom/shanlitech/et/model/GroupInvitation;[J)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->M([Lcom/shanlitech/et/model/GroupInvitation;[J)Z

    move-result p1

    return p1
.end method

.method public addOnceNeedGroupListener(Lcom/shanlitech/et/b/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->c:Lcom/shanlitech/et/core/c/m;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/shanlitech/et/core/c/m;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/m;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/l;->c:Lcom/shanlitech/et/core/c/m;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->c:Lcom/shanlitech/et/core/c/m;

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/m;->addOnceNeedGroupHandler(Lcom/shanlitech/et/b/a;)V

    return-void
.end method

.method public b0(JI)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/SetConfirmJoinGroupAckEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/shanlitech/et/notice/event/SetConfirmJoinGroupAckEvent;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public c0(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGroupLockAck: gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->S(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupLockAckEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/shanlitech/et/notice/event/GroupLockAckEvent;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;Ljava/lang/String;IZZZ[Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroup() called with: gName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], desc = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], isTemp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], startSession = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], isCallDispatcher = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p6, "], accounts = ["

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, "]"

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p7

    move v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p2

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/shanlitech/et/CoreEngine;->createGroup(Ljava/lang/String;[Ljava/lang/String;IZZLjava/lang/String;)I

    move-result p2

    sget p3, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-lt p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ".createGroup."

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ".result = "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p7}, Lcom/shanlitech/et/c/h;->o(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, p5

    if-eqz p7, :cond_1

    .line 4
    array-length p1, p7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "null"

    :goto_1
    aput-object p1, p3, p4

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, p3, p1

    const-string p1, "createGroup: gName=[%s] accounts.size=[%s] result=[%s]"

    .line 5
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public d0(Lcom/shanlitech/et/model/Group;II)V
    .locals 0

    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;IZZ[Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/shanlitech/et/core/c/l;->d(Ljava/lang/String;Ljava/lang/String;IZZZ[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e0(I[Lcom/shanlitech/et/model/FailUser;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;

    invoke-direct {v1, p1, p2}, Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;-><init>(I[Lcom/shanlitech/et/model/FailUser;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs f(J[Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInviteSession() called with: gid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], accounts = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/shanlitech/et/CoreEngine;->createInviteSession(J[Ljava/lang/String;Ljava/lang/String;)I

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

.method public f0(JI)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "notify_create_group"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotifyCreateGroup() called with: group = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], reason = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyCreateGroup() called with: gid = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] breakEventSessionGid = ["

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/shanlitech/et/core/c/l;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 4
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->getGroupByGid(J)Lcom/shanlitech/et/model/Group;

    move-result-object p3

    if-nez p3, :cond_1

    .line 5
    new-instance p3, Lcom/shanlitech/et/core/c/c;

    invoke-direct {p3, p1, p2}, Lcom/shanlitech/et/core/c/c;-><init>(J)V

    invoke-virtual {p0, p3}, Lcom/shanlitech/et/core/c/l;->addOnceNeedGroupListener(Lcom/shanlitech/et/b/a;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/shanlitech/et/model/Group;->isMyGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 7
    invoke-static {p3, v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->post(Lcom/shanlitech/et/model/Group;Z)V

    :cond_2
    :goto_0
    cmp-long p3, p1, v1

    if-eqz p3, :cond_4

    .line 8
    iget-object p3, p0, Lcom/shanlitech/et/core/c/l;->c:Lcom/shanlitech/et/core/c/m;

    if-nez p3, :cond_3

    .line 9
    new-instance p3, Lcom/shanlitech/et/core/c/m;

    invoke-direct {p3}, Lcom/shanlitech/et/core/c/m;-><init>()V

    iput-object p3, p0, Lcom/shanlitech/et/core/c/l;->c:Lcom/shanlitech/et/core/c/m;

    .line 10
    :cond_3
    iget-object p3, p0, Lcom/shanlitech/et/core/c/l;->c:Lcom/shanlitech/et/core/c/m;

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/shanlitech/et/core/c/m;->a(Lcom/shanlitech/et/model/Group;)V

    :cond_4
    return-void
.end method

.method public g(Lcom/shanlitech/et/model/Group;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->S(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shanlitech/et/core/c/l;->X0(Lcom/shanlitech/et/model/Group;I)Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shanlitech/et/CoreEngine;->deleteSession(J)I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group type is \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\" no way...\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g0(JLjava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyCurrentGroup \u6267\u884c-->gid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "gName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-wide v1, Lcom/shanlitech/et/core/c/l;->g:J

    const/4 p3, 0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return p3

    .line 3
    :cond_0
    sput-wide p1, Lcom/shanlitech/et/core/c/l;->g:J

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 4
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->getCurrentGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    sput-object p1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    sput-object p1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    .line 6
    :goto_0
    sget-object p1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    invoke-static {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->postCurrent(Lcom/shanlitech/et/model/Group;)V

    .line 7
    sget-object p1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    :goto_1
    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->g(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/shanlitech/et/core/c/o;->a()Lcom/shanlitech/et/core/c/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/c/o;->c()V

    .line 9
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/c/n;->g()Z

    return p3
.end method

.method public h(Lcom/shanlitech/et/model/Group;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "destoryGroup break by Group is null..."

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->U(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/shanlitech/et/CoreEngine;->destroyGroup(J)I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destoryGroup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 4
    sget p1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public h0(Lcom/shanlitech/et/model/Group;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/e;->n(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 3
    sput-object p1, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v3

    new-array v4, v2, [Lcom/shanlitech/et/model/Group;

    aput-object p1, v4, v1

    invoke-virtual {v3, v4}, Lcom/shanlitech/et/core/c/e;->V([Lcom/shanlitech/et/model/Group;)V

    .line 5
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->z0()V

    .line 6
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 7
    sget-object v3, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v4, "onNotifyGroup: \u6743\u9650\u53d8\u66f4\u4e86"

    invoke-static {v3, v4}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v3

    new-instance v4, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object v5, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_OWNER:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-direct {v4, v5, v2}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/shanlitech/et/notice/event/ResultEvent;->setGid(J)Lcom/shanlitech/et/notice/event/ResultEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    sget-object v3, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v4, "onNotifyGroup: \u540d\u79f0\u53d8\u66f4\u4e86"

    invoke-static {v3, v4}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v3

    new-instance v4, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object v5, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_INFO:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-direct {v4, v5, v2}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/shanlitech/et/notice/event/ResultEvent;->setGid(J)Lcom/shanlitech/et/notice/event/ResultEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getAudio_enabled()I

    move-result v4

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getAudio_enabled()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 13
    sget-object v3, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v4, "onNotifyGroup: \u7fa4\u7ec4\u7981\u8a00\u4e86\u72b6\u6001\u53d8\u66f4\u4e86"

    invoke-static {v3, v4}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v3

    new-instance v4, Lcom/shanlitech/et/notice/event/GroupAudioStateEvent;

    invoke-direct {v4, p1}, Lcom/shanlitech/et/notice/event/GroupAudioStateEvent;-><init>(Lcom/shanlitech/et/model/Group;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 15
    :cond_4
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getDnd_enabled()I

    move-result v4

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getDnd_enabled()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 16
    sget-object v3, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v4, "onNotifyGroup: \u7fa4\u7ec4DND\u72b6\u6001\u53d8\u66f4\u4e86"

    invoke-static {v3, v4}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v3

    new-instance v4, Lcom/shanlitech/et/notice/event/GroupDNDStateEvent;

    invoke-direct {v4, p1}, Lcom/shanlitech/et/notice/event/GroupDNDStateEvent;-><init>(Lcom/shanlitech/et/model/Group;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v4

    if-eq v0, v2, :cond_7

    if-ne v4, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_8

    if-eqz v3, :cond_8

    .line 20
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "break_by_groupInfoChanged groupInfoChanged = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyGroup.isSessionGroup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->isMySession()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    .line 27
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->join()Z

    .line 29
    :cond_a
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/shanlitech/et/core/c/l;->x(Lcom/shanlitech/et/model/Group;Z)V

    .line 30
    :cond_b
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public i()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public i0()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/CoreEngine;->getGroupList(Z)[Lcom/shanlitech/et/model/Group;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/shanlitech/et/CoreEngine;->getGroupListBySession(Z)[Lcom/shanlitech/et/model/Group;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    new-instance v0, Lcom/shanlitech/et/model/GroupList;

    invoke-direct {v0, v2}, Lcom/shanlitech/et/model/GroupList;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".onNotifyGroupList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shanlitech/et/c/h;->h(Ljava/lang/String;Lcom/shanlitech/et/model/GroupList;)V

    .line 8
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/shanlitech/et/core/c/e;->U(ZLcom/shanlitech/et/model/GroupList;)V

    .line 9
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->z0()V

    return v2
.end method

.method public j0(JJLjava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object p3

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/shanlitech/et/core/c/e;->y(J)Lcom/shanlitech/et/model/User;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onNotifyGroupMsg >"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/core/c/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/shanlitech/et/core/c/l;->j(Ljava/lang/String;)J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public k0([J[J)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupSortChangedEvent;

    invoke-direct {v1, p1, p2}, Lcom/shanlitech/et/notice/event/GroupSortChangedEvent;-><init>([J[J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public l(J)Lcom/shanlitech/et/model/Group;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->n(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    return-object p1
.end method

.method public l0([Lcom/shanlitech/et/model/Group;[J)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".onNotifyGroupsChanged.addGroups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/h;->k(Ljava/lang/String;[Lcom/shanlitech/et/model/Group;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onNotifyGroupsChanged.removeGids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/shanlitech/et/c/h;->i(Ljava/lang/String;[J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    array-length v1, p1

    if-lez v1, :cond_0

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 5
    invoke-static {v3}, Lcom/shanlitech/et/notice/event/GroupEvent;->postAdd(Lcom/shanlitech/et/model/Group;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 6
    array-length p1, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    aget-wide v2, p2, v1

    .line 7
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/shanlitech/et/core/c/e;->n(J)Lcom/shanlitech/et/model/Group;

    move-result-object v2

    .line 8
    sget-object v3, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotifyGroupsChanged.remove = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->isSessionGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/shanlitech/et/model/GroupSession;->setStatus(I)V

    .line 11
    invoke-static {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->postSticky(Lcom/shanlitech/et/model/Group;)V

    const/4 v3, 0x2

    .line 12
    invoke-static {v2, v3}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->post(Lcom/shanlitech/et/model/Group;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->i0()Z

    move-result p1

    return p1
.end method

.method public m(J)Lcom/shanlitech/et/model/Group;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->getGroupByGid(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    return-object p1
.end method

.method public m0()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/CoreEngine;->getListenGroupList(Z)[Lcom/shanlitech/et/model/Group;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyListenGrouplist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/shanlitech/et/notice/event/ListenGroupListEvent;

    invoke-direct {v2, v0}, Lcom/shanlitech/et/notice/event/ListenGroupListEvent;-><init>([Lcom/shanlitech/et/model/Group;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public n()Lcom/shanlitech/et/model/GroupList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->p()Lcom/shanlitech/et/model/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public n0(J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->s(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shanlitech/et/core/c/e;->W(Lcom/shanlitech/et/model/MemberList;)V

    const-string p2, "log.members"

    .line 3
    invoke-static {p1, p2}, Lcom/shanlitech/et/c/h;->g(Lcom/shanlitech/et/model/MemberList;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getInGroupCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/shanlitech/et/model/Group;->setMember_ingroup(I)V

    .line 7
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/shanlitech/et/model/Group;->setMember_count(I)V

    .line 8
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shanlitech/et/model/Group;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/shanlitech/et/core/c/e;->V([Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method public o(Lcom/shanlitech/et/model/User;)Lcom/shanlitech/et/model/GroupList;
    .locals 6

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/GroupList;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/model/GroupList;-><init>(J)V

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->n()Lcom/shanlitech/et/model/GroupList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/model/Group;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/shanlitech/et/model/MemberList;->hasUser(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public o0(J[Lcom/shanlitech/et/model/Member;[J[J[JII)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->n0(J)V

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "null"

    if-eqz p3, :cond_0

    .line 4
    array-length p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    if-eqz p4, :cond_1

    .line 5
    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_1

    :cond_1
    move-object p4, p1

    :goto_1
    aput-object p4, v1, p2

    const/4 p2, 0x3

    if-eqz p5, :cond_2

    .line 6
    array-length p4, p5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_2

    :cond_2
    move-object p4, p1

    :goto_2
    aput-object p4, v1, p2

    const/4 p2, 0x4

    if-eqz p6, :cond_3

    .line 7
    array-length p1, p6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3
    aput-object p1, v1, p2

    const/4 p1, 0x5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "onNotifyMembersChanged[%s]: update_members.count=[%s] remove.count=[%s] join.count=[%s] left.count=[%s] member_count=[%s] member_ingroup=[%s]"

    .line 8
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onNotifyMembersChanged:"

    .line 9
    invoke-static {p1, p3}, Lcom/shanlitech/et/c/h;->l(Ljava/lang/String;[Lcom/shanlitech/et/model/Member;)V

    return-void
.end method

.method public p()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/core/c/l;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->getLockedGroup()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/core/c/l;->e:J

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLockedGroup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/core/c/l;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/shanlitech/et/core/c/l;->e:J

    return-wide v0
.end method

.method public p0(I)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/l;->e:J

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/shanlitech/et/core/c/l;->g0(JLjava/lang/String;)Z

    .line 4
    :cond_2
    sput-wide v1, Lcom/shanlitech/et/core/c/l;->g:J

    .line 5
    sput-object v0, Lcom/shanlitech/et/core/c/l;->h:Lcom/shanlitech/et/model/Group;

    :goto_0
    return-void
.end method

.method public q(J)Lcom/shanlitech/et/model/MemberList;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string p2, "getMemberList: break by <group is null>..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->q(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->s(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shanlitech/et/core/c/e;->W(Lcom/shanlitech/et/model/MemberList;)V

    return-object p1
.end method

.method public q0(I[JI[IIII)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    .line 2
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget-wide p4, p2, p3

    .line 3
    invoke-virtual {p0, p4, p5}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 4
    invoke-static {p4, p7}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->post(Lcom/shanlitech/et/model/Group;I)V

    .line 5
    invoke-static {p4, p7}, Lcom/shanlitech/et/notice/event/GroupEvent;->postLeave(Lcom/shanlitech/et/model/Group;I)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/MemberList;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    const-string v0, "getMemberList: break by <group is null>..."

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/e;->q(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/l;->t(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/MemberList;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/e;->W(Lcom/shanlitech/et/model/MemberList;)V

    return-object p1
.end method

.method public r0(JJII)V
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "onNotifyPushResponseSession : gid = %s , uid = %s , accept = %s , reason = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v8, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;

    move-object v1, v8

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;-><init>(JJII)V

    invoke-virtual {v0, v8}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    if-nez p5, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/shanlitech/et/core/c/l;->A0(JJI)V

    :cond_0
    return-void
.end method

.method public s0(JJI)Z
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "onNotifyPushStopSession : gid = %s , uid = %s , reason = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/SessionPushStopEvent;

    move-object v3, v1

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/shanlitech/et/notice/event/SessionPushStopEvent;-><init>(JJI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return v2
.end method

.method public t(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/MemberList;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/shanlitech/et/core/c/l;->s(J)Lcom/shanlitech/et/model/MemberList;

    move-result-object p1

    return-object p1
.end method

.method public t0(JI)Z
    .locals 4

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/SessionStatusChangeEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/shanlitech/et/notice/event/SessionStatusChangeEvent;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifySessionChange: status--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/shanlitech/et/core/c/l;->m(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 v1, 0x0

    if-ne p3, p2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifySessionChange: group--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "--getGroupSession--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-direct {v2, p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;-><init>(Lcom/shanlitech/et/model/Group;)V

    .line 6
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    move-result p1

    .line 7
    invoke-virtual {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/shanlitech/et/model/GroupSession;->setStatus(I)V

    .line 8
    invoke-virtual {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p3

    invoke-direct {p0, p3, v1}, Lcom/shanlitech/et/core/c/l;->x(Lcom/shanlitech/et/model/Group;Z)V

    .line 9
    invoke-virtual {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getMyResponse()Ljava/lang/Integer;

    move-result-object p3

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGroupSessionEvent: curStatus--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "--MyResponse--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 12
    :cond_1
    invoke-static {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->postSticky(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 13
    new-instance v0, Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-direct {v0, p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;-><init>(Lcom/shanlitech/et/model/Group;)V

    .line 14
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/GroupSession;->getStatus()I

    .line 15
    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGroupSession()Lcom/shanlitech/et/model/GroupSession;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/shanlitech/et/model/GroupSession;->setStatus(I)V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->x(Lcom/shanlitech/et/model/Group;Z)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/shanlitech/et/core/c/l;->x(Lcom/shanlitech/et/model/Group;Z)V

    :cond_4
    :goto_0
    return p2
.end method

.method public u(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->v(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u0(JI)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyStartedSession() called with: sid = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], reason = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] group = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;

    invoke-direct {v2, p1, p2, p3}, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;-><init>(JI)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "onNotifyStartedSession:sid = %s  reason = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shanlitech/et/core/c/h;->e()Lcom/shanlitech/et/model/User;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->postSticky(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/User;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/c/h;->e()Lcom/shanlitech/et/model/User;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->postSticky(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/User;I)V

    goto :goto_0

    .line 7
    :cond_1
    iput-wide p1, p0, Lcom/shanlitech/et/core/c/l;->d:J

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bb0\u5f55\u4e86 breakEventSessionGid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/core/c/l;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/shanlitech/et/core/c/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/shanlitech/et/core/c/b;-><init>(JI)V

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/core/c/l;->addOnceNeedGroupListener(Lcom/shanlitech/et/b/a;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public v(JJ)Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/core/c/l$a;

    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/shanlitech/et/core/c/l$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRefuseReason() called with: sid = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], uid = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], response = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    return-object v1
.end method

.method public v0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/l;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/SessionStopEvent;

    invoke-direct {v1, p1, p2}, Lcom/shanlitech/et/notice/event/SessionStopEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public w()Lcom/shanlitech/et/model/session/SessionGroupList;
    .locals 2

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/session/SessionGroupList;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shanlitech/et/CoreEngine;->getGroupListBySession(Z)[Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shanlitech/et/model/session/SessionGroupList;-><init>([Lcom/shanlitech/et/model/Group;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/shanlitech/et/b/b;->a()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/shanlitech/et/b/b;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method

.method public w0(JJLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v7, Lcom/shanlitech/et/notice/event/TokenEvent;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/shanlitech/et/notice/event/TokenEvent;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public x0(JII)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponseSessionAck:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/c/l;->T(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/l;->G(J)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v3

    move-object v0, p0

    move-wide v1, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shanlitech/et/core/c/l;->A0(JJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y(Lcom/shanlitech/et/model/Group;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-wide v1, Lcom/shanlitech/et/core/c/l;->g:J

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public y0(IJ)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/TransferGroupEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/shanlitech/et/notice/event/TransferGroupEvent;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public z0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->n()Lcom/shanlitech/et/model/GroupList;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/l;->w()Lcom/shanlitech/et/model/session/SessionGroupList;

    move-result-object v1

    .line 3
    sget-boolean v2, Lcom/shanlitech/et/a;->a:Z

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/shanlitech/et/core/c/l;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postGroupListEvent:  groups.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    return-void
.end method
