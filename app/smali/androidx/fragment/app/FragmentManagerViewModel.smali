.class final Landroidx/fragment/app/FragmentManagerViewModel;
.super Landroidx/lifecycle/v;
.source "FragmentManagerViewModel.java"


# static fields
.field private static final FACTORY:Landroidx/lifecycle/w$b;

.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mChildNonConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentManagerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBeenCleared:Z

.field private mHasSavedSnapshot:Z

.field private mIsStateSaved:Z

.field private final mRetainedFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateAutomaticallySaved:Z

.field private final mViewModelStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/FragmentManagerViewModel$1;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerViewModel$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentManagerViewModel;->FACTORY:Landroidx/lifecycle/w$b;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/v;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 8
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    return-void
.end method

.method static getInstance(Landroidx/lifecycle/y;)Landroidx/fragment/app/FragmentManagerViewModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    sget-object v1, Landroidx/fragment/app/FragmentManagerViewModel;->FACTORY:Landroidx/lifecycle/w$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V

    .line 2
    const-class p0, Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentManagerViewModel;

    return-object p0
.end method


# virtual methods
.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ignoring addRetainedFragment as the state is already saved"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method clearNonConfigState(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing non-config state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerViewModel;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->onCleared()V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/y;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/y;->a()V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method findRetainedFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerViewModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentManagerViewModel;

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getRetainedFragments()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManagerViewModel;->getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 8
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 10
    :cond_3
    new-instance v1, Landroidx/fragment/app/FragmentManagerNonConfig;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/y;
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/y;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0}, Landroidx/lifecycle/y;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isCleared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    return v0
.end method

.method protected onCleared()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCleared called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    return-void
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/FragmentManagerNonConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    new-instance v2, Landroidx/fragment/app/FragmentManagerViewModel;

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    invoke-direct {v2, v3}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 11
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    return-void
.end method

.method setIsStateSaved(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    return-void
.end method

.method shouldDestroy(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    return p1

    .line 4
    :cond_1
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FragmentManagerViewModel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} Fragments ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ") Child Non Config ("

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 11
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, ") ViewModelStores ("

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 17
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v1, 0x29

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
