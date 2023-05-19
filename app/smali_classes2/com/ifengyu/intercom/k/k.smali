.class public abstract Lcom/ifengyu/intercom/k/k;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMi3ChannelEditBinding.java"


# instance fields
.field public final A:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final B:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final C:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final D:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final E:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final F:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final G:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final H:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected I:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected J:Lcom/ifengyu/intercom/l/b/e/u;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final z:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;Landroid/widget/LinearLayout;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->x:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->y:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->z:Lcom/ifengyu/library/widget/view/ItemView;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->A:Lcom/ifengyu/library/widget/view/ItemView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->B:Lcom/ifengyu/library/widget/view/ItemView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->C:Lcom/ifengyu/library/widget/view/ItemView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->D:Lcom/ifengyu/library/widget/view/ItemView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->E:Landroid/widget/TextView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->F:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->G:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/k/k;->H:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    return-void
.end method


# virtual methods
.method public abstract F(Lcom/ifengyu/intercom/l/b/e/u;)V
    .param p1    # Lcom/ifengyu/intercom/l/b/e/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setClickListener(Landroid/view/View$OnClickListener;)V
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
