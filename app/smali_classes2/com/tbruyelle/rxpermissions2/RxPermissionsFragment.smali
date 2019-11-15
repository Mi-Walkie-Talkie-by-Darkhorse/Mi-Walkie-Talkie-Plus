.class public Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;
.super Landroid/app/Fragment;
.source "RxPermissionsFragment.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/reactivex/subjects/PublishSubject",
            "<",
            "Lcom/tbruyelle/rxpermissions2/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;)Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/subjects/PublishSubject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/subjects/PublishSubject",
            "<",
            "Lcom/tbruyelle/rxpermissions2/a;",
            ">;)",
            "Lio/reactivex/subjects/PublishSubject",
            "<",
            "Lcom/tbruyelle/rxpermissions2/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method a([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method a([Ljava/lang/String;[I[Z)V
    .locals 8

    const/4 v2, 0x0

    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a:Ljava/util/Map;

    aget-object v1, p1, v3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_1

    const-string v0, "RxPermissions"

    const-string v1, "RxPermissions.onRequestPermissionsResult invoked but didn\'t find the corresponding permission request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a:Ljava/util/Map;

    aget-object v5, p1, v3

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, p2, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    new-instance v5, Lcom/tbruyelle/rxpermissions2/a;

    aget-object v6, p1, v3

    aget-boolean v7, p3, v3

    invoke-direct {v5, v6, v1, v7}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v5}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/subjects/PublishSubject",
            "<",
            "Lcom/tbruyelle/rxpermissions2/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "RxPermissions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, p2

    new-array v1, v0, [Z

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p3, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->a([Ljava/lang/String;[I[Z)V

    goto :goto_0
.end method
