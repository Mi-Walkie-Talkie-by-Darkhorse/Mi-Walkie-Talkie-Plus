.class public Lcom/ifengyu/intercom/ui/talk/x2;
.super Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;
.source "CreateCodeToCreateGroupFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;-><init>()V

    return-void
.end method

.method private synthetic A3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic C3(Lcom/ifengyu/intercom/http/entity/CodeEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "getCreateGroupCode success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CodeEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CodeEntity;->getCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->g3()V

    :cond_0
    return-void
.end method

.method private synthetic E3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic G3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCreateGroupCodeUserInfo success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/talk/TalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method private synthetic I3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic K3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCreateGroupCodeUserInfo success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->quite()Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 5
    invoke-static {p0}, Lcom/ifengyu/intercom/ui/talk/x2;->y3(Lcom/ifengyu/intercom/ui/talk/x2;)V

    return-void
.end method

.method public static M3()Lcom/ifengyu/intercom/ui/talk/x2;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/x2;-><init>()V

    return-object v0
.end method

.method private N3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/ui/talk/x2;->p3(Lcom/ifengyu/intercom/ui/talk/x2;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->v(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/m;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/n;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/x2$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/x2$a;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic p3(Lcom/ifengyu/intercom/ui/talk/x2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method static synthetic q3(Lcom/ifengyu/intercom/ui/talk/x2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r3(Lcom/ifengyu/intercom/ui/talk/x2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    return-void
.end method

.method static synthetic s3(Lcom/ifengyu/intercom/ui/talk/x2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method static synthetic t3(Lcom/ifengyu/intercom/ui/talk/x2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u3(Lcom/ifengyu/intercom/ui/talk/x2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v3(Lcom/ifengyu/intercom/ui/talk/x2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w3(Lcom/ifengyu/intercom/ui/talk/x2;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method static synthetic x3(Lcom/ifengyu/intercom/ui/talk/x2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic y3(Lcom/ifengyu/intercom/ui/talk/x2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private z3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/intercom/n/a;->J()Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/o;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/q;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/x2$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/x2$c;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic B3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/x2;->A3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic D3(Lcom/ifengyu/intercom/http/entity/CodeEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/x2;->C3(Lcom/ifengyu/intercom/http/entity/CodeEntity;)V

    return-void
.end method

.method protected E2()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->E2()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/x2;->z3()V

    return-void
.end method

.method public synthetic F3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/x2;->E3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic H3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/x2;->G3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V

    return-void
.end method

.method public synthetic J3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/x2;->I3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic L3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/x2;->K3(Lcom/ifengyu/intercom/http/entity/CreateGroupCodeUserInfo;)V

    return-void
.end method

.method protected d2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/x2;->N3()V

    return-void
.end method

.method public h3()I
    .locals 1

    const v0, 0x7f1100fe

    return v0
.end method

.method public o3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->B:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->v(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/r;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/r;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/p;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/x2$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/x2$b;-><init>(Lcom/ifengyu/intercom/ui/talk/x2;)V

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
