.class public abstract Lcom/ifengyu/intercom/k/g;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentFirmwareSetBinding.java"


# instance fields
.field public final w:Lcom/ifengyu/library/widget/view/ItemTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Lcom/ifengyu/library/widget/view/ItemTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final z:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/ifengyu/library/widget/view/ItemTextView;Landroid/widget/TextView;Lcom/ifengyu/library/widget/view/ItemTextView;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/ifengyu/intercom/k/g;->w:Lcom/ifengyu/library/widget/view/ItemTextView;

    .line 3
    iput-object p5, p0, Lcom/ifengyu/intercom/k/g;->x:Landroid/widget/TextView;

    .line 4
    iput-object p6, p0, Lcom/ifengyu/intercom/k/g;->y:Lcom/ifengyu/library/widget/view/ItemTextView;

    .line 5
    iput-object p7, p0, Lcom/ifengyu/intercom/k/g;->z:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    return-void
.end method


# virtual methods
.method public abstract setClickListener(Landroid/view/View$OnClickListener;)V
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
