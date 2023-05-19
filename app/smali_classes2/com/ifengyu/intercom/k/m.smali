.class public abstract Lcom/ifengyu/intercom/k/m;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMi3CustomListBinding.java"


# instance fields
.field public final w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/ifengyu/intercom/k/m;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 3
    iput-object p5, p0, Lcom/ifengyu/intercom/k/m;->x:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
