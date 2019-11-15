.class public Lcom/tbruyelle/rxpermissions2/b;
.super Ljava/lang/Object;
.source "RxPermissions.java"


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/b;->a(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    return-void
.end method

.method private a(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;
    .locals 4

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/b;->b(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-direct {v0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "RxPermissions"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tbruyelle/rxpermissions2/b;Lio/reactivex/k;[Ljava/lang/String;)Lio/reactivex/k;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tbruyelle/rxpermissions2/b;->a(Lio/reactivex/k;[Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tbruyelle/rxpermissions2/b;[Ljava/lang/String;)Lio/reactivex/k;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/b;->e([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method private a(Lio/reactivex/k;Lio/reactivex/k;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<*>;",
            "Lio/reactivex/k",
            "<*>;)",
            "Lio/reactivex/k",
            "<*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v0, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lio/reactivex/k;->merge(Lio/reactivex/o;Lio/reactivex/o;)Lio/reactivex/k;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs a(Lio/reactivex/k;[Ljava/lang/String;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/k",
            "<",
            "Lcom/tbruyelle/rxpermissions2/a;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RxPermissions.request/requestEach requires at least one input permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/tbruyelle/rxpermissions2/b;->d([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tbruyelle/rxpermissions2/b;->a(Lio/reactivex/k;Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/tbruyelle/rxpermissions2/b$2;

    invoke-direct {v1, p0, p2}, Lcom/tbruyelle/rxpermissions2/b$2;-><init>(Lcom/tbruyelle/rxpermissions2/b;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->flatMap(Lio/reactivex/b/g;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RxPermissions"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    return-object v0
.end method

.method private varargs d([Ljava/lang/String;)Lio/reactivex/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/k",
            "<*>;"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v3, v2}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    goto :goto_1
.end method

.method private varargs e([Ljava/lang/String;)Lio/reactivex/k;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/k",
            "<",
            "Lcom/tbruyelle/rxpermissions2/a;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, p1, v1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/tbruyelle/rxpermissions2/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7, v2}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/tbruyelle/rxpermissions2/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, v6, v2, v2}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, v6}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->c(Ljava/lang/String;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->a()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iget-object v7, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v7, v6, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;)Lio/reactivex/subjects/PublishSubject;

    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tbruyelle/rxpermissions2/b;->c([Ljava/lang/String;)V

    :cond_4
    invoke-static {v3}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->concat(Lio/reactivex/o;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lio/reactivex/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/p",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tbruyelle/rxpermissions2/b$1;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/b$1;-><init>(Lcom/tbruyelle/rxpermissions2/b;[Ljava/lang/String;)V

    return-object v0
.end method

.method a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b([Ljava/lang/String;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/k",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/b;->a([Ljava/lang/String;)Lio/reactivex/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->compose(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c([Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermissionsFromFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/b;->b:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a([Ljava/lang/String;)V

    return-void
.end method
