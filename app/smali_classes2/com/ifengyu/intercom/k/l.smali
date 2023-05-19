.class public Lcom/ifengyu/intercom/k/l;
.super Lcom/ifengyu/intercom/k/k;
.source "FragmentMi3ChannelEditBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/k/l$a;
    }
.end annotation


# static fields
.field private static final N:Landroidx/databinding/ViewDataBinding$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final O:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final K:Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private L:Lcom/ifengyu/intercom/k/l$a;

.field private M:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/k/l;->O:Landroid/util/SparseIntArray;

    const v1, 0x7f090499

    const/16 v2, 0xc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0904ca

    const/16 v2, 0xd

    .line 3
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
    sget-object v0, Lcom/ifengyu/intercom/k/l;->N:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcom/ifengyu/intercom/k/l;->O:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->u(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/k/l;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xa

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/16 v5, 0xb

    aget-object v5, p3, v5

    check-cast v5, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v6, 0x4

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    aget-object v7, p3, v7

    check-cast v7, Lcom/ifengyu/library/widget/view/ItemView;

    const/16 v8, 0x9

    aget-object v8, p3, v8

    check-cast v8, Lcom/ifengyu/library/widget/view/ItemView;

    const/4 v9, 0x5

    aget-object v9, p3, v9

    check-cast v9, Lcom/ifengyu/library/widget/view/ItemView;

    const/4 v10, 0x6

    aget-object v10, p3, v10

    check-cast v10, Lcom/ifengyu/library/widget/view/ItemView;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Lcom/ifengyu/library/widget/view/ItemView;

    const/4 v12, 0x3

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x1

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v15, 0xc

    aget-object v15, p3, v15

    check-cast v15, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x1

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lcom/ifengyu/intercom/k/k;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;Landroid/widget/LinearLayout;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/ifengyu/intercom/k/l;->M:J

    .line 4
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->z:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->A:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->B:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->C:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->D:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 12
    aget-object v0, p3, v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;

    iput-object v0, v2, Lcom/ifengyu/intercom/k/l;->K:Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/ifengyu/intercom/k/k;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 17
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->B(Landroid/view/View;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/k/l;->G()V

    return-void
.end method

.method private H(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/ifengyu/intercom/k/l;->M:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ifengyu/intercom/k/l;->M:J

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
    iput-object p1, p0, Lcom/ifengyu/intercom/k/k;->J:Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/l;->M:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ifengyu/intercom/k/l;->M:J

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
    iput-wide v0, p0, Lcom/ifengyu/intercom/k/l;->M:J

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
    .locals 27

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/ifengyu/intercom/k/l;->M:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/ifengyu/intercom/k/l;->M:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->I:Landroid/view/View$OnClickListener;

    .line 6
    iget-object v6, v1, Lcom/ifengyu/intercom/k/k;->J:Lcom/ifengyu/intercom/l/b/e/u;

    const-wide/16 v7, 0xa

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_1

    if-eqz v0, :cond_1

    .line 7
    iget-object v9, v1, Lcom/ifengyu/intercom/k/l;->L:Lcom/ifengyu/intercom/k/l$a;

    if-nez v9, :cond_0

    new-instance v9, Lcom/ifengyu/intercom/k/l$a;

    invoke-direct {v9}, Lcom/ifengyu/intercom/k/l$a;-><init>()V

    iput-object v9, v1, Lcom/ifengyu/intercom/k/l;->L:Lcom/ifengyu/intercom/k/l$a;

    :cond_0
    invoke-virtual {v9, v0}, Lcom/ifengyu/intercom/k/l$a;->a(Landroid/view/View$OnClickListener;)Lcom/ifengyu/intercom/k/l$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v11

    :goto_0
    const-wide/16 v9, 0xd

    and-long v12, v2, v9

    const/4 v14, 0x0

    cmp-long v15, v12, v4

    if-eqz v15, :cond_b

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v6}, Lcom/ifengyu/intercom/l/b/e/u;->x()Landroidx/lifecycle/o;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v11

    .line 9
    :goto_1
    invoke-virtual {v1, v14, v6}, Landroidx/databinding/ViewDataBinding;->D(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_3

    .line 10
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ifengyu/intercom/models/ChannelModel;

    goto :goto_2

    :cond_3
    move-object v6, v11

    :goto_2
    if-eqz v6, :cond_4

    .line 11
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayNameSuffix()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v12

    .line 13
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendTone()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsRemoteCh()Z

    move-result v18

    .line 17
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveTone()Ljava/lang/String;

    move-result-object v19

    .line 18
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayNamePrefix()Ljava/lang/String;

    move-result-object v20

    .line 19
    invoke-virtual {v6}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v11

    move-object v11, v6

    move-object/from16 v6, v26

    goto :goto_3

    :cond_4
    move-object v6, v11

    move-object v13, v6

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    const/4 v12, 0x0

    const/16 v18, 0x0

    :goto_3
    if-eqz v15, :cond_6

    if-eqz v12, :cond_5

    const-wide/16 v21, 0x20

    goto :goto_4

    :cond_5
    const-wide/16 v21, 0x10

    :goto_4
    or-long v2, v2, v21

    :cond_6
    and-long v21, v2, v9

    cmp-long v15, v21, v4

    if-eqz v15, :cond_8

    if-eqz v18, :cond_7

    const-wide/16 v21, 0x80

    goto :goto_5

    :cond_7
    const-wide/16 v21, 0x40

    :goto_5
    or-long v2, v2, v21

    :cond_8
    const/16 v15, 0x8

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_6

    :cond_9
    const/16 v12, 0x8

    :goto_6
    if-eqz v18, :cond_a

    goto :goto_7

    :cond_a
    const/16 v14, 0x8

    :goto_7
    move/from16 v24, v12

    move-object v15, v13

    move/from16 v25, v14

    move-object/from16 v23, v16

    move-object/from16 v12, v20

    move-object v13, v6

    move-object v14, v11

    move-object/from16 v6, v17

    move-object/from16 v11, v19

    goto :goto_8

    :cond_b
    move-object v6, v11

    move-object v12, v6

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v23, v15

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_8
    and-long/2addr v7, v2

    cmp-long v16, v7, v4

    if-eqz v16, :cond_c

    .line 20
    iget-object v7, v1, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v7, v1, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v7, v1, Lcom/ifengyu/intercom/k/k;->z:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v7, v1, Lcom/ifengyu/intercom/k/k;->A:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v7, v1, Lcom/ifengyu/intercom/k/k;->B:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v7, v1, Lcom/ifengyu/intercom/k/k;->C:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v7, v1, Lcom/ifengyu/intercom/k/k;->D:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    and-long/2addr v2, v9

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    .line 27
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->y:Landroid/widget/LinearLayout;

    move/from16 v2, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->z:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v11}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->A:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v6}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->B:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v12}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->B:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v13}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->C:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v14}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->D:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, v15}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->E:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->F:Landroid/widget/TextView;

    move-object/from16 v11, v23

    invoke-static {v0, v11}, Landroidx/databinding/h/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, v1, Lcom/ifengyu/intercom/k/k;->G:Landroid/widget/LinearLayout;

    move/from16 v14, v25

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    .line 37
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
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/l;->M:J

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
    iput-object p1, p0, Lcom/ifengyu/intercom/k/k;->I:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/l;->M:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ifengyu/intercom/k/l;->M:J

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

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/intercom/k/l;->H(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method
