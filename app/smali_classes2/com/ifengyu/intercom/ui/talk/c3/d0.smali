.class public Lcom/ifengyu/intercom/ui/talk/c3/d0;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "GroupAllMemberPresenter.java"

# interfaces
.implements Lcom/ifengyu/talk/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/talk/d3/b;",
        ">;",
        "Lcom/ifengyu/talk/h/c;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/shanlitech/et/model/Group;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->c:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->e:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    return-void
.end method

.method private synthetic B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lb/a/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic J(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/b;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p2, p1}, Lcom/ifengyu/intercom/ui/talk/d3/b;->a(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/h;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/h;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/d0;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/g;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/g;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/d0;Ljava/lang/String;)V

    sget-object p1, Lcom/ifengyu/intercom/ui/talk/c3/b0;->a:Lcom/ifengyu/intercom/ui/talk/c3/b0;

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public C(Lcom/shanlitech/et/model/MemberList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->N()V

    :cond_0
    return-void
.end method

.method public D(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public G(Lcom/shanlitech/et/model/GroupList;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupList;->getCurrentGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v0

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-static {v0, p1}, Lcom/ifengyu/talk/d;->s(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/b;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/talk/d3/b;->c(Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method public synthetic I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic M(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->J(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public N()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getAllMembers()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ifengyu/talk/e/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/talk/e/a;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->m(Lcom/shanlitech/et/model/Group;)Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shanlitech/et/model/Member;

    .line 7
    new-instance v5, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    const/16 v6, 0x3e9

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    .line 8
    invoke-virtual {v4}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/ifengyu/talk/d;->o(Lcom/shanlitech/et/model/Group;J)Z

    move-result v7

    invoke-direct {v5, v6, v7, v4}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;-><init>(IZLcom/shanlitech/et/model/Member;)V

    .line 9
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    const/16 v3, 0x3ea

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    const/16 v2, 0x3eb

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/b;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/b;->X()V

    return-void
.end method

.method public V0(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public W0(Lcom/shanlitech/et/notice/event/TransferGroupEvent;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/f/c0;->d()Lcom/shanlitech/et/model/GroupList;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/shanlitech/et/model/GroupList;->getGroup(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->d:Lcom/shanlitech/et/model/Group;

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/talk/d3/b;->c(Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/b;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/d0;->v(Lcom/ifengyu/intercom/ui/talk/d3/b;)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/c0;->removeListener(Lcom/ifengyu/talk/h/c;)V

    return-void
.end method

.method public v(Lcom/ifengyu/intercom/ui/talk/d3/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/c0;->addListener(Lcom/ifengyu/talk/h/c;)V

    return-void
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public y()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d0;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public z(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method
