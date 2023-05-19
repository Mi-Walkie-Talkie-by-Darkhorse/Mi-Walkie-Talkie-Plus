.class public Lcom/ifengyu/intercom/k/d;
.super Lcom/ifengyu/intercom/k/c;
.source "ConfigFileListFragmentBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/k/d$a;
    }
.end annotation


# static fields
.field private static final H:Landroidx/databinding/ViewDataBinding$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final I:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final E:Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private F:Lcom/ifengyu/intercom/k/d$a;

.field private G:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/k/d;->I:Landroid/util/SparseIntArray;

    const v1, 0x7f090499

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0903a4

    const/4 v2, 0x6

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090356

    const/4 v2, 0x7

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0904b7

    const/16 v2, 0x8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0904b4

    const/16 v2, 0x9

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0904b3

    const/16 v2, 0xa

    .line 7
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
    sget-object v0, Lcom/ifengyu/intercom/k/d;->H:Landroidx/databinding/ViewDataBinding$g;

    sget-object v1, Lcom/ifengyu/intercom/k/d;->I:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->u(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/k/d;-><init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15

    move-object v14, p0

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/ifengyu/intercom/k/c;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/ifengyu/intercom/k/d;->G:J

    .line 4
    iget-object v0, v14, Lcom/ifengyu/intercom/k/c;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v14, Lcom/ifengyu/intercom/k/c;->x:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v14, Lcom/ifengyu/intercom/k/c;->y:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v14, Lcom/ifengyu/intercom/k/c;->z:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;

    iput-object v0, v14, Lcom/ifengyu/intercom/k/d;->E:Lcom/ifengyu/intercom/ui/widget/view/QMUIWindowInsetLinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 10
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->B(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/intercom/k/d;->F()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/ifengyu/intercom/k/d;->G:J

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
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/d;->G:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/ifengyu/intercom/k/d;->G:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 5
    iget-object v5, p0, Lcom/ifengyu/intercom/k/c;->D:Landroid/view/View$OnClickListener;

    const-wide/16 v6, 0x3

    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/k/d;->F:Lcom/ifengyu/intercom/k/d$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/k/d$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/k/d$a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/k/d;->F:Lcom/ifengyu/intercom/k/d$a;

    :cond_0
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/k/d$a;->a(Landroid/view/View$OnClickListener;)Lcom/ifengyu/intercom/k/d$a;

    move-result-object v4

    :cond_1
    if-eqz v6, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/k/c;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/k/c;->x:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/k/c;->y:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/k/c;->z:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 11
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
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/d;->G:J

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
    iput-object p1, p0, Lcom/ifengyu/intercom/k/c;->D:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/k/d;->G:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ifengyu/intercom/k/d;->G:J

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

    const/4 p1, 0x0

    return p1
.end method
