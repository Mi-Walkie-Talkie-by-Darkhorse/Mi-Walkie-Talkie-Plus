.class public abstract Lcom/ifengyu/intercom/k/c;
.super Landroidx/databinding/ViewDataBinding;
.source "ConfigFileListFragmentBinding.java"


# instance fields
.field public final A:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final B:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected D:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final z:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/ifengyu/intercom/k/c;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 3
    iput-object p5, p0, Lcom/ifengyu/intercom/k/c;->x:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 4
    iput-object p6, p0, Lcom/ifengyu/intercom/k/c;->y:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 5
    iput-object p7, p0, Lcom/ifengyu/intercom/k/c;->z:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 6
    iput-object p8, p0, Lcom/ifengyu/intercom/k/c;->A:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    .line 7
    iput-object p9, p0, Lcom/ifengyu/intercom/k/c;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iput-object p10, p0, Lcom/ifengyu/intercom/k/c;->C:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    return-void
.end method


# virtual methods
.method public abstract setClickListener(Landroid/view/View$OnClickListener;)V
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
