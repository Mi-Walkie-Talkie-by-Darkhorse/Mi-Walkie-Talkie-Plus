.class public Lcom/ifengyu/intercom/k/r;
.super Lcom/ifengyu/intercom/k/q;
.source "FragmentMi3SettingBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/k/r$a;
    }
.end annotation


# static fields
.field private static final Z:Landroidx/databinding/ViewDataBinding$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final b0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final W:Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private X:Lcom/ifengyu/intercom/k/r$a;

.field private Y:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/k/r;->b0:Landroid/util/SparseIntArray;

    const v1, 0x7f090499

    const/16 v2, 0x16

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900d9

    const/16 v2, 0x17

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900e0

    const/16 v2, 0x18

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/e;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/k/r;->Z:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcom/ifengyu/intercom/k/r;->b0:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->u(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/k/r;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 29

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xd

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v6, 0x17

    aget-object v6, p3, v6

    check-cast v6, Landroid/view/View;

    const/4 v7, 0x2

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x4

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x3

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x6

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x5

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x7

    aget-object v12, p3, v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v13, 0x18

    aget-object v13, p3, v13

    check-cast v13, Landroid/view/View;

    const/16 v14, 0x8

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v15, 0xa

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/TextView;

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0xc

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0xb

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x14

    aget-object v19, p3, v19

    check-cast v19, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v20, 0xe

    aget-object v20, p3, v20

    check-cast v20, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v21, 0x11

    aget-object v21, p3, v21

    check-cast v21, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v22, 0xf

    aget-object v22, p3, v22

    check-cast v22, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v23, 0x12

    aget-object v23, p3, v23

    check-cast v23, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v24, 0x10

    aget-object v24, p3, v24

    check-cast v24, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v25, 0x15

    aget-object v25, p3, v25

    check-cast v25, Landroid/widget/TextView;

    const/16 v26, 0x13

    aget-object v26, p3, v26

    check-cast v26, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v27, 0x16

    aget-object v27, p3, v27

    check-cast v27, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/16 v28, 0x1

    move/from16 v3, v28

    invoke-direct/range {v0 .. v27}, Lcom/ifengyu/intercom/k/q;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Landroid/widget/TextView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/ifengyu/intercom/k/r;->Y:J

    .line 4
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->w:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->x:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->L:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->M:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->N:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->O:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->P:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->Q:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v0, v2, Lcom/ifengyu/intercom/k/q;->S:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 25
    aget-object v0, p3, v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;

    iput-object v0, v2, Lcom/ifengyu/intercom/k/r;->W:Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 27
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->B(Landroid/view/View;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/k/r;->G()V

    return-void
.end method

.method private H(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public F(Lcom/ifengyu/intercom/l/b/e/u;)V
    .locals 4
    .param p1    # Lcom/ifengyu/intercom/l/b/e/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/k/q;->V:Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->b(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->z()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public G()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->z()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected k()V
    .locals 37

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/ifengyu/intercom/k/r;->Y:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/ifengyu/intercom/k/r;->Y:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->U:Landroid/view/View$OnClickListener;

    .line 6
    iget-object v6, v1, Lcom/ifengyu/intercom/k/q;->V:Lcom/ifengyu/intercom/l/b/e/u;

    const-wide/16 v7, 0xa

    and-long v9, v2, v7

    cmp-long v12, v9, v4

    if-eqz v12, :cond_1

    if-eqz v0, :cond_1

    .line 7
    iget-object v9, v1, Lcom/ifengyu/intercom/k/r;->X:Lcom/ifengyu/intercom/k/r$a;

    if-nez v9, :cond_0

    new-instance v9, Lcom/ifengyu/intercom/k/r$a;

    invoke-direct {v9}, Lcom/ifengyu/intercom/k/r$a;-><init>()V

    iput-object v9, v1, Lcom/ifengyu/intercom/k/r;->X:Lcom/ifengyu/intercom/k/r$a;

    :cond_0
    invoke-virtual {v9, v0}, Lcom/ifengyu/intercom/k/r$a;->a(Landroid/view/View$OnClickListener;)Lcom/ifengyu/intercom/k/r$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v9, 0xd

    and-long v12, v2, v9

    const-wide/16 v14, 0x100

    const/16 v16, 0x8

    const/16 v17, 0x1

    const/4 v11, 0x0

    cmp-long v19, v12, v4

    if-eqz v19, :cond_18

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v6}, Lcom/ifengyu/intercom/l/b/e/u;->t()Landroidx/lifecycle/o;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-virtual {v1, v11, v6}, Landroidx/databinding/ViewDataBinding;->D(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_3

    .line 10
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    .line 11
    invoke-virtual {v6}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v12

    .line 12
    invoke-virtual {v6}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_5

    .line 13
    invoke-virtual {v12}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual {v12}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    .line 15
    invoke-virtual {v12}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v21

    .line 16
    invoke-virtual {v12}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v22

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_4
    if-eqz v19, :cond_7

    if-eqz v21, :cond_6

    const-wide/16 v23, 0x80

    goto :goto_5

    :cond_6
    const-wide/16 v23, 0x40

    :goto_5
    or-long v2, v2, v23

    :cond_7
    if-nez v12, :cond_8

    const/16 v19, 0x1

    goto :goto_6

    :cond_8
    const/16 v19, 0x0

    :goto_6
    if-eqz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    if-eqz v6, :cond_a

    const/16 v23, 0x1

    goto :goto_8

    :cond_a
    const/16 v23, 0x0

    :goto_8
    and-long v24, v2, v9

    cmp-long v26, v24, v4

    if-eqz v26, :cond_c

    if-eqz v19, :cond_b

    const-wide/16 v24, 0x200

    or-long v2, v2, v24

    goto :goto_9

    :cond_b
    or-long/2addr v2, v14

    :cond_c
    :goto_9
    and-long v24, v2, v9

    cmp-long v26, v24, v4

    if-eqz v26, :cond_e

    if-eqz v12, :cond_d

    const-wide/32 v24, 0x8000

    goto :goto_a

    :cond_d
    const-wide/16 v24, 0x4000

    :goto_a
    or-long v2, v2, v24

    :cond_e
    and-long v24, v2, v9

    cmp-long v26, v24, v4

    if-eqz v26, :cond_10

    if-eqz v23, :cond_f

    const-wide/16 v24, 0x20

    goto :goto_b

    :cond_f
    const-wide/16 v24, 0x10

    :goto_b
    or-long v2, v2, v24

    :cond_10
    if-eqz v6, :cond_11

    .line 17
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v18

    .line 18
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v24

    .line 19
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayName()Ljava/lang/String;

    move-result-object v25

    .line 20
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v26

    goto :goto_c

    :cond_11
    const/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_c
    and-long v27, v2, v9

    cmp-long v29, v27, v4

    if-eqz v29, :cond_13

    if-eqz v26, :cond_12

    const-wide/16 v27, 0x800

    goto :goto_d

    :cond_12
    const-wide/16 v27, 0x400

    :goto_d
    or-long v2, v2, v27

    :cond_13
    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_e

    :cond_14
    const/16 v21, 0x8

    :goto_e
    if-eqz v12, :cond_15

    const/4 v12, 0x0

    goto :goto_f

    :cond_15
    const/16 v12, 0x8

    :goto_f
    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_10

    :cond_16
    const/16 v23, 0x8

    :goto_10
    if-eqz v26, :cond_17

    const/16 v26, 0x0

    goto :goto_11

    :cond_17
    const/16 v26, 0x8

    :goto_11
    move/from16 v32, v12

    move-object/from16 v12, v20

    move/from16 v33, v21

    move-object/from16 v31, v22

    move/from16 v34, v23

    move-object/from16 v11, v24

    move-object/from16 v30, v25

    move/from16 v35, v26

    move/from16 v20, v19

    move-object/from16 v36, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v36

    goto :goto_12

    :cond_18
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_12
    and-long/2addr v14, v2

    cmp-long v21, v14, v4

    if-eqz v21, :cond_19

    if-nez v18, :cond_19

    const/4 v14, 0x1

    goto :goto_13

    :cond_19
    const/4 v14, 0x0

    :goto_13
    and-long v21, v2, v9

    cmp-long v15, v21, v4

    if-eqz v15, :cond_1e

    if-eqz v20, :cond_1a

    goto :goto_14

    :cond_1a
    move/from16 v17, v14

    :goto_14
    if-eqz v15, :cond_1c

    if-eqz v17, :cond_1b

    const-wide/16 v14, 0x2000

    goto :goto_15

    :cond_1b
    const-wide/16 v14, 0x1000

    :goto_15
    or-long/2addr v2, v14

    :cond_1c
    if-eqz v17, :cond_1d

    const/16 v16, 0x0

    :cond_1d
    move/from16 v14, v16

    goto :goto_16

    :cond_1e
    const/4 v14, 0x0

    :goto_16
    and-long/2addr v7, v2

    cmp-long v15, v7, v4

    if-eqz v15, :cond_1f

    .line 21
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->x:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->L:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->M:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->N:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->O:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->P:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->Q:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->R:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v7, v1, Lcom/ifengyu/intercom/k/q;->S:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    and-long/2addr v2, v9

    cmp-long v0, v2, v4

    if-eqz v0, :cond_20

    .line 32
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->x:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v2, v34

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 34
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->z:Landroid/widget/TextView;

    move-object/from16 v2, v30

    invoke-static {v0, v2}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->A:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->B:Landroid/widget/TextView;

    move/from16 v11, v35

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->C:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v11, v32

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->G:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->H:Landroid/widget/TextView;

    move-object/from16 v2, v31

    invoke-static {v0, v2}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->I:Landroid/widget/TextView;

    move/from16 v11, v33

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->J:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, v1, Lcom/ifengyu/intercom/k/q;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_20
    return-void

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public r()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/k/q;->U:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ifengyu/intercom/k/r;->Y:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->b(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->z()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected v(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/k/r;->H(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method
