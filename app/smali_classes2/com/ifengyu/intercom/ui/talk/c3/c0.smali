.class public Lcom/ifengyu/intercom/ui/talk/c3/c0;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "ContactPresenter.java"

# interfaces
.implements Lcom/ifengyu/talk/h/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/talk/d3/a;",
        ">;",
        "Lcom/ifengyu/talk/h/a;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "c0"


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->d:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->f:Ljava/util/HashMap;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private A(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/models/DeviceModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->i(I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/database/AppDatabase;->H()Lcom/ifengyu/intercom/database/a/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ifengyu/intercom/database/a/g;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setNetDeviceModel(Lcom/ifengyu/intercom/models/NetDeviceModel;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private M()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/f/a0;->c()Lcom/shanlitech/et/model/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/a0;->e()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/ifengyu/talk/e/c;

    invoke-direct {v1}, Lcom/ifengyu/talk/e/c;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/model/User;

    .line 8
    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lb/a/a/a/b;->d(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->b(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g0()V

    return-void
.end method

.method private N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c3/d;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/c0;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/c3/f;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/c0;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/talk/c3/b;->a:Lcom/ifengyu/intercom/ui/talk/c3/b;

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lcom/shanlitech/et/model/User;

    const-string v3, ""

    if-eqz v2, :cond_3

    .line 6
    check-cast v1, Lcom/shanlitech/et/model/User;

    .line 7
    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lb/a/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    instance-of v2, v1, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz v2, :cond_0

    .line 11
    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 12
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 15
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lb/a/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic R(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/a;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p2, p1}, Lcom/ifengyu/intercom/ui/talk/d3/a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic V(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->i:Ljava/lang/String;

    const-string v1, "handleSearchKey"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic W()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->A(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic a0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g0()V

    return-void
.end method

.method static synthetic c0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private g0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const v0, 0x7f11014b

    .line 4
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    invoke-direct {v3, v1, v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/models/DeviceModel;

    .line 7
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    invoke-direct {v5, v3, v2}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const v0, 0x7f1100f6

    .line 9
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    invoke-direct {v4, v1, v0}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v0, 0x24

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shanlitech/et/model/User;

    .line 12
    invoke-virtual {v4}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x23

    if-nez v5, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lb/a/a/a/b;->d(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 14
    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->b(C)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v5, v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    new-instance v6, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->f:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v5

    goto :goto_2

    :cond_3
    if-eq v0, v6, :cond_4

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v1, v7}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->f:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x23

    .line 19
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    new-instance v6, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;

    invoke-direct {v6, v3, v4}, Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/a;->d()V

    return-void
.end method


# virtual methods
.method public B()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public I()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public J(Ljava/lang/String;)V
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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/c;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/c;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/c0;Ljava/lang/String;)V

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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/a;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/a;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/c0;Ljava/lang/String;)V

    sget-object p1, Lcom/ifengyu/intercom/ui/talk/c3/e;->a:Lcom/ifengyu/intercom/ui/talk/c3/e;

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic U(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->R(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic X()Lio/reactivex/ObservableSource;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->W()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b0(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->a0(Ljava/util/List;)V

    return-void
.end method

.method public e0(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->h:Z

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getNetDeviceModel()Lcom/ifengyu/intercom/models/NetDeviceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/NetDeviceModel;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/f/a0;->k(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/a;->g1()V

    :cond_0
    return-void
.end method

.method public f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->h:Z

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/a;->g1()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/a;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/talk/d3/a;->J(Lcom/shanlitech/et/model/User;)V

    :goto_0
    return-void
.end method

.method public h0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->M()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->N()V

    return-void
.end method

.method public j0(Lcom/shanlitech/et/model/ContactList;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->h0()V

    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/a;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->v(Lcom/ifengyu/intercom/ui/talk/d3/a;)V

    return-void
.end method

.method public onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 0

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

    return-void
.end method

.method public v(Lcom/ifengyu/intercom/ui/talk/d3/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/a0;->addListener(Lcom/ifengyu/talk/h/a;)V

    return-void
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/ItemAdapterEntity<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/c0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
