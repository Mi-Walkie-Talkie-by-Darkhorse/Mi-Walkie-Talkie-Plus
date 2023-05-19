.class public abstract Lcom/ifengyu/intercom/k/a;
.super Landroidx/databinding/ViewDataBinding;
.source "ChannelListEveryTypeBinding.java"


# instance fields
.field public final w:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/tabs/TabLayout;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/ifengyu/intercom/k/a;->w:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    iput-object p5, p0, Lcom/ifengyu/intercom/k/a;->x:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object p6, p0, Lcom/ifengyu/intercom/k/a;->y:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method
