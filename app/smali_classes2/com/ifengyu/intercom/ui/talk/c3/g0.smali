.class public Lcom/ifengyu/intercom/ui/talk/c3/g0;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "MemberRemovePresenter.java"

# interfaces
.implements Lcom/ifengyu/talk/h/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/talk/d3/e;",
        ">;",
        "Lcom/ifengyu/talk/h/f;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "g0"


# instance fields
.field private final c:Lcom/shanlitech/et/model/Group;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->d:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->e:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->c:Lcom/shanlitech/et/model/Group;

    return-void
.end method

.method private synthetic J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Member;

    .line 4
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {v1}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lb/a/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic N(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/e;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p2, p1}, Lcom/ifengyu/intercom/ui/talk/d3/e;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic Q(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->g:Ljava/lang/String;

    const-string v1, "handleSearchKey"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public A()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/r;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/r;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/g0;Ljava/lang/String;)V

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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/q;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/q;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/g0;Ljava/lang/String;)V

    sget-object p1, Lcom/ifengyu/intercom/ui/talk/c3/p;->a:Lcom/ifengyu/intercom/ui/talk/c3/p;

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public B0(Lcom/shanlitech/et/notice/event/ResultEvent;)V
    .locals 0

    return-void
.end method

.method public H0(Lcom/shanlitech/et/notice/event/RequestResultEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->q:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/e;->W()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/e;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/e;->u1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public I()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->c:Lcom/shanlitech/et/model/Group;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->c:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getAllMembers()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Member;

    .line 6
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->c:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v4}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;-><init>(ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/e;->d()V

    return-void
.end method

.method public synthetic M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic O(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->N(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public R(Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->setCheck(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/e;->d()V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity;

    .line 4
    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/model/Member;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->c:Lcom/shanlitech/et/model/Group;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/shanlitech/et/web/b/c/c;->removeMember([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/e;->u1()V

    :cond_2
    return-void
.end method

.method public m0(Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/e;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/g0;->v(Lcom/ifengyu/intercom/ui/talk/d3/e;)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->removeListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public v(Lcom/ifengyu/intercom/ui/talk/d3/e;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/f0;->addListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public x(Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;)V
    .locals 0

    return-void
.end method

.method public y()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemSelectAdapterEntity<",
            "Lcom/shanlitech/et/model/Member;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/g0;->e:Ljava/util/ArrayList;

    return-object v0
.end method
