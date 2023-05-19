.class public abstract Lcom/ifengyu/intercom/k/e;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentConfigFileDetailBinding.java"


# instance fields
.field public final A:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final w:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final z:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/ifengyu/intercom/k/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iput-object p5, p0, Lcom/ifengyu/intercom/k/e;->x:Landroid/widget/LinearLayout;

    .line 4
    iput-object p6, p0, Lcom/ifengyu/intercom/k/e;->y:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    iput-object p7, p0, Lcom/ifengyu/intercom/k/e;->z:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    iput-object p8, p0, Lcom/ifengyu/intercom/k/e;->A:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    return-void
.end method
