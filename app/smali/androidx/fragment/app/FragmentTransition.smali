.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;,
        Landroidx/fragment/app/FragmentTransition$Callback;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 5
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;La/b/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, La/b/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->C(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/FragmentTransaction$Op;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    sget-object v2, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget p1, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_3
    if-eqz p4, :cond_4

    .line 4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_c

    goto :goto_5

    .line 5
    :cond_4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_6

    :cond_5
    if-eqz p4, :cond_6

    .line 6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_8

    :goto_2
    goto :goto_3

    .line 7
    :cond_6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_9

    .line 8
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_8

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    .line 10
    :cond_9
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_3

    :goto_4
    move v4, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    if-eqz p4, :cond_b

    .line 11
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_6

    .line 12
    :cond_b
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    move v2, p1

    const/4 p1, 0x0

    goto :goto_1

    .line 13
    :goto_7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v2, :cond_d

    .line 14
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v5

    .line 15
    iput-object v0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 16
    iput-boolean p3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 17
    iput-object p0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_d
    const/4 v2, 0x0

    if-nez p4, :cond_f

    if-eqz v3, :cond_f

    if-eqz v5, :cond_e

    .line 18
    iget-object v3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-ne v3, v0, :cond_e

    .line 19
    iput-object v2, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 20
    :cond_e
    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v3, :cond_f

    .line 21
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 22
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v6

    .line 23
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragmentStore()Landroidx/fragment/app/FragmentStore;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 24
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    :cond_f
    if-eqz v4, :cond_11

    if-eqz v5, :cond_10

    .line 25
    iget-object v3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_11

    .line 26
    :cond_10
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v5

    .line 27
    iput-object v0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 28
    iput-boolean p3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 29
    iput-object p0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_11
    if-nez p4, :cond_12

    if-eqz p1, :cond_12

    if-eqz v5, :cond_12

    .line 30
    iget-object p0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_12

    .line 31
    iput-object v2, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    :cond_12
    return-void
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 3
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)La/b/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, La/b/a;

    invoke-direct {v0}, La/b/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    .line 2
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 3
    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 5
    iget-object v3, v1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 8
    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 10
    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 11
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v6}, La/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {v0, v5, v7}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 15
    :cond_2
    invoke-virtual {v0, v5, v6}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 4
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/b/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/k;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/k;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p3}, La/b/g;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 6
    invoke-virtual {p3, v0}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p3, v0}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    .line 8
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/k;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/k;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;La/b/a;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)La/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, La/b/g;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    new-instance p2, La/b/a;

    invoke-direct {p2}, La/b/a;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 6
    iget-object p0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 7
    iget-boolean p3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/k;

    move-result-object p3

    .line 9
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/k;

    move-result-object p3

    .line 11
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p2, p0}, La/b/a;->a(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p1}, La/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, La/b/a;->a(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3, p0, p2}, Landroidx/core/app/k;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_6

    .line 16
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 18
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(La/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1, v0}, La/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 20
    :cond_3
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->C(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(La/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->C(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {p1, p2}, Landroidx/fragment/app/FragmentTransition;->retainValues(La/b/a;La/b/a;)V

    :cond_6
    return-object p2

    .line 24
    :cond_7
    :goto_3
    invoke-virtual {p1}, La/b/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;La/b/a;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)La/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, La/b/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 3
    new-instance v0, La/b/a;

    invoke-direct {v0}, La/b/a;-><init>()V

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 5
    iget-object p0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 6
    iget-boolean p3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/k;

    move-result-object p2

    .line 8
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/k;

    move-result-object p2

    .line 10
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {v0, p0}, La/b/a;->a(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p2, p0, v0}, Landroidx/core/app/k;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    .line 14
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p3}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 16
    invoke-virtual {p1, p3}, La/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->C(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    invoke-virtual {p1, p3}, La/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->C(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v0}, La/b/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, La/b/a;->a(Ljava/util/Collection;)Z

    :cond_6
    return-object v0

    .line 21
    :cond_7
    :goto_3
    invoke-virtual {p1}, La/b/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 15
    :cond_6
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 16
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object p0

    .line 17
    :cond_7
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 18
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object p0

    .line 19
    :cond_8
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez p0, :cond_9

    sget-object p0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez p0, :cond_9

    return-object p1

    .line 20
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 1
    iget-object v8, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v9, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-boolean v12, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 4
    invoke-virtual/range {p3 .. p3}, La/b/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v6, v8, v9, v12}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    .line 6
    :goto_0
    invoke-static {v6, v13, v1, v7}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;La/b/a;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)La/b/a;

    move-result-object v3

    .line 7
    invoke-virtual/range {p3 .. p3}, La/b/g;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v14, v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v3}, La/b/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x1

    .line 9
    invoke-static {v8, v9, v12, v3, v1}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/b/a;Z)V

    if-eqz v14, :cond_4

    .line 10
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    .line 11
    invoke-virtual {v6, v14, v5, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 12
    iget-boolean v4, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 13
    iget-object v2, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;La/b/a;ZLandroidx/fragment/app/BackStackRecord;)V

    if-eqz v11, :cond_5

    .line 15
    invoke-virtual {v6, v11, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move-object v15, v0

    .line 16
    :cond_5
    :goto_2
    new-instance v5, Landroidx/fragment/app/FragmentTransition$6;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/FragmentTransition$6;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;La/b/a;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/u;

    return-object v14

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 1
    iget-object v9, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v10, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_0

    .line 3
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-boolean v11, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 5
    invoke-virtual/range {p3 .. p3}, La/b/g;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0, v9, v10, v11}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 7
    :goto_0
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;La/b/a;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)La/b/a;

    move-result-object v12

    .line 8
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;La/b/a;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)La/b/a;

    move-result-object v13

    .line 9
    invoke-virtual/range {p3 .. p3}, La/b/g;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_3

    .line 10
    invoke-virtual {v12}, La/b/g;->clear()V

    :cond_3
    if-eqz v13, :cond_4

    .line 11
    invoke-virtual {v13}, La/b/g;->clear()V

    :cond_4
    move-object v14, v4

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual/range {p3 .. p3}, La/b/a;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 13
    invoke-static {v2, v12, v14}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;La/b/a;Ljava/util/Collection;)V

    .line 14
    invoke-virtual/range {p3 .. p3}, La/b/a;->values()Ljava/util/Collection;

    move-result-object v1

    .line 15
    invoke-static {v3, v13, v1}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;La/b/a;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    const/4 v1, 0x1

    .line 16
    invoke-static {v9, v10, v11, v12, v1}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/b/a;Z)V

    if-eqz v14, :cond_8

    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0, v14, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 19
    iget-boolean v4, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 20
    iget-object v5, v7, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    .line 21
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;La/b/a;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    invoke-static {v13, v7, v8, v11}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(La/b/a;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {p0, v8, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v4

    move-object v7, v5

    .line 25
    :goto_2
    new-instance v8, Landroidx/fragment/app/FragmentTransition$5;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition$5;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/b/a;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/u;

    return-object v14

    :cond_9
    :goto_3
    return-object v4
.end method

.method private static configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 20
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 1
    iget-object v14, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v15, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-static {v15, v14}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 5
    iget-boolean v1, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 6
    invoke-static {v8, v14, v0}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 7
    invoke-static {v8, v15, v1}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move-object v9, v8

    move-object/from16 v8, v18

    .line 10
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v19

    if-nez v8, :cond_1

    if-nez v6, :cond_1

    move-object/from16 v0, v18

    if-nez v0, :cond_2

    return-void

    :cond_1
    move-object/from16 v0, v18

    :cond_2
    move-object/from16 v7, v17

    .line 11
    invoke-static {v9, v0, v15, v7, v11}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 12
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    move-object/from16 v18, v0

    .line 13
    invoke-virtual {v9, v8, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 14
    iget-boolean v5, v10, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v14

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    if-eqz v15, :cond_6

    if-eqz v17, :cond_6

    .line 15
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 16
    :cond_5
    new-instance v0, Landroidx/core/os/b;

    invoke-direct {v0}, Landroidx/core/os/b;-><init>()V

    .line 17
    invoke-interface {v13, v15, v0}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/b;)V

    .line 18
    new-instance v1, Landroidx/fragment/app/FragmentTransition$3;

    invoke-direct {v1, v13, v15, v0}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/b;)V

    invoke-virtual {v9, v15, v10, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/b;Ljava/lang/Runnable;)V

    :cond_6
    if-eqz v10, :cond_7

    .line 19
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    move-object v1, v10

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object/from16 v7, v16

    .line 20
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v5, v8

    move-object v6, v13

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    .line 21
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    .line 22
    invoke-virtual {v1, v0, v2, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 23
    invoke-virtual {v1, v0, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v1, v0, v2, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 17
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    .line 1
    iget-object v11, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v12, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-static {v12, v11}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v13

    if-nez v13, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v14, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 5
    iget-boolean v0, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {v13, v11, v14}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 9
    invoke-static {v13, v12, v0}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object v5, v8

    move-object/from16 p1, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v10, v8

    move-object/from16 v8, p1

    .line 10
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, v16

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    move-object/from16 v7, p1

    if-nez v7, :cond_2

    return-void

    :cond_1
    move-object/from16 v7, p1

    .line 11
    :cond_2
    invoke-static {v13, v7, v12, v10, v9}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 12
    invoke-static {v13, v6, v11, v15, v9}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    .line 13
    invoke-static {v9, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object v0, v13

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v11

    move-object v11, v5

    move v5, v14

    .line 14
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    .line 15
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 16
    :cond_3
    new-instance v0, Landroidx/core/os/b;

    invoke-direct {v0}, Landroidx/core/os/b;-><init>()V

    move-object/from16 v1, p4

    .line 17
    invoke-interface {v1, v12, v0}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/b;)V

    .line 18
    new-instance v2, Landroidx/fragment/app/FragmentTransition$1;

    invoke-direct {v2, v1, v12, v0}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/b;)V

    invoke-virtual {v13, v12, v14, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/b;Ljava/lang/Runnable;)V

    :cond_4
    if-eqz v14, :cond_5

    .line 19
    invoke-static {v13, v7, v12, v11}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 20
    invoke-virtual {v13, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    move-object v1, v14

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v11

    move-object v6, v8

    move-object v7, v15

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    .line 22
    invoke-virtual {v13, v1, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v2, v10

    move-object v3, v15

    move-object v4, v12

    move-object/from16 v5, p3

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 24
    invoke-static {v9, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 25
    invoke-virtual {v13, v8, v10, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 2
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static findKeyForValue(La/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/b/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, La/b/g;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getInEpicenterView(La/b/a;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 2
    iget-object p2, p1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 5
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 6
    new-instance p1, Landroidx/fragment/app/FragmentTransition$2;

    invoke-direct {p1, p3}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/u;

    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 3

    :try_start_0
    const-string v0, "androidx.transition.e"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static retainValues(La/b/a;La/b/a;)V
    .locals 2
    .param p0    # La/b/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # La/b/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/b/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, La/b/g;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, La/b/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, La/b/g;->c(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v9, Landroidx/fragment/app/FragmentTransition$4;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Landroidx/core/view/u;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/u;

    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;La/b/a;ZLandroidx/fragment/app/BackStackRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "La/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p5, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 3
    iget-object p4, p5, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {p3, p4}, La/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 6
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/FragmentContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p4

    :goto_0
    if-ge v1, p5, :cond_1

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 3
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_5

    .line 9
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 10
    invoke-static {v3, p2, p3, p4, p5}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)La/b/a;

    move-result-object v4

    .line 11
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p6, :cond_3

    .line 14
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$Callback;)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;La/b/a;Landroidx/fragment/app/FragmentTransition$Callback;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method static supportsTransition()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
