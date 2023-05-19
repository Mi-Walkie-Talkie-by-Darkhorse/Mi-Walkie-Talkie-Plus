.class public Lcom/ifengyu/intercom/ui/talk/w2;
.super Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;
.source "CreateCodeToAddMemberFragment.java"


# instance fields
.field private C:Lcom/shanlitech/et/model/Group;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic p3(Lcom/ifengyu/intercom/ui/talk/w2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q3(Lcom/ifengyu/intercom/ui/talk/w2;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/k;->a3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method static synthetic r3(Lcom/ifengyu/intercom/ui/talk/w2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private s3()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/w2;->C:Lcom/shanlitech/et/model/Group;

    .line 2
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->g(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/j;-><init>(Lcom/ifengyu/intercom/ui/talk/w2;)V

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

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/k;-><init>(Lcom/ifengyu/intercom/ui/talk/w2;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/w2$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/w2$a;-><init>(Lcom/ifengyu/intercom/ui/talk/w2;)V

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic t3(Lio/reactivex/disposables/Disposable;)V
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

.method private synthetic v3(Lcom/ifengyu/intercom/http/entity/CodeEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "getGroupMemberInviteCode success"

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

.method public static x3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/w2;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/w2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/w2;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_group"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/w2;->C:Lcom/shanlitech/et/model/Group;

    :cond_0
    return-void
.end method

.method protected E2()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/talk/CreateCodeBaseFragment;->E2()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/w2;->s3()V

    return-void
.end method

.method public h3()I
    .locals 1

    const v0, 0x7f1100fb

    return v0
.end method

.method public o3()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/talk/TalkFragment;

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->p2(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic u3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/w2;->t3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic w3(Lcom/ifengyu/intercom/http/entity/CodeEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/w2;->v3(Lcom/ifengyu/intercom/http/entity/CodeEntity;)V

    return-void
.end method
