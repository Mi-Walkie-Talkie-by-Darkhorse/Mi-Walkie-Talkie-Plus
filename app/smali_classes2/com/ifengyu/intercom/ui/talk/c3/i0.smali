.class public Lcom/ifengyu/intercom/ui/talk/c3/i0;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "SessionTalkPresenter.java"

# interfaces
.implements Lcom/ifengyu/talk/h/a;
.implements Lcom/ifengyu/talk/h/d;
.implements Lcom/ifengyu/talk/h/c;
.implements Lcom/ifengyu/talk/h/g;
.implements Lcom/ifengyu/talk/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/talk/d3/g;",
        ">;",
        "Lcom/ifengyu/talk/h/a;",
        "Lcom/ifengyu/talk/h/d;",
        "Lcom/ifengyu/talk/h/c;",
        "Lcom/ifengyu/talk/h/g;",
        "Lcom/ifengyu/talk/h/b;"
    }
.end annotation


# instance fields
.field private c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->d:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->stop()Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->deleteSession()Z

    :cond_0
    return-void
.end method

.method public C(Lcom/shanlitech/et/model/MemberList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getAllMembers()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Member;

    .line 5
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getMemberSession()Lcom/shanlitech/et/model/MemberSession;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/shanlitech/et/model/MemberSession;->getResponse()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;

    invoke-direct {v1, v2, v0}, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;-><init>(ILcom/shanlitech/et/model/Member;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;-><init>(ILcom/shanlitech/et/model/Member;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->Z0()V

    :cond_3
    return-void
.end method

.method public C0(Lcom/shanlitech/et/notice/event/GroupRemovedEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->g0()V

    :cond_0
    return-void
.end method

.method public D(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public G(Lcom/shanlitech/et/model/GroupList;)V
    .locals 0

    return-void
.end method

.method public K(Lcom/ifengyu/talk/models/OperatorMsgModel;)V
    .locals 0

    return-void
.end method

.method public T(I)V
    .locals 0

    return-void
.end method

.method public V0(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->requestMemberList()Z

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->Q0()V

    :cond_0
    return-void
.end method

.method public W0(Lcom/shanlitech/et/notice/event/TransferGroupEvent;)V
    .locals 0

    return-void
.end method

.method public Z(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/g;->b()V

    return-void
.end method

.method public c(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f110297

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->f()V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f110207

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/ifengyu/intercom/ui/talk/d3/g;->I(ZLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/g;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->I(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f11028c

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->l()V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    new-array v0, v3, [Ljava/lang/Object;

    const v4, 0x7f110207

    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/ifengyu/intercom/ui/talk/d3/g;->I(ZLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/g;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v2, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->I(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(J)V
    .locals 0

    return-void
.end method

.method public f(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 0

    return-void
.end method

.method public f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 0

    return-void
.end method

.method public h(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 0

    return-void
.end method

.method public i(J)V
    .locals 0

    return-void
.end method

.method public j0(Lcom/shanlitech/et/model/ContactList;)V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/g;->k()V

    return-void
.end method

.method public l(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 0

    return-void
.end method

.method public m(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/i0;->w(Lcom/ifengyu/intercom/ui/talk/d3/g;)V

    return-void
.end method

.method public n0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    :cond_0
    return-void
.end method

.method public onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->getOnlinestatus()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->f()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/a0;->removeListener(Lcom/ifengyu/talk/h/a;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->g()Lcom/ifengyu/talk/f/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/d0;->removeListener(Lcom/ifengyu/talk/h/d;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/c0;->removeListener(Lcom/ifengyu/talk/h/c;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/g0;->removeListener(Lcom/ifengyu/talk/h/g;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->removeListener(Lcom/ifengyu/talk/h/b;)V

    return-void
.end method

.method public r1(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/g;->g0()V

    return-void
.end method

.method public t(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->isMySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->join()Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->accept()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/g;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/g;->u0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public w(Lcom/ifengyu/intercom/ui/talk/d3/g;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/a0;->addListener(Lcom/ifengyu/talk/h/a;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->g()Lcom/ifengyu/talk/f/d0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/d0;->addListener(Lcom/ifengyu/talk/h/d;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/c0;->addListener(Lcom/ifengyu/talk/h/c;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/g0;->addListener(Lcom/ifengyu/talk/h/g;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/b0;->addListener(Lcom/ifengyu/talk/h/b;)V

    return-void
.end method

.method public y()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/DialogGroupAdapterEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/i0;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public z(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method
