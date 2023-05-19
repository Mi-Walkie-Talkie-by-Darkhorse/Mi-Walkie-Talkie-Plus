.class public abstract Lcom/ifengyu/intercom/k/s;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMi3ShareLocationBinding.java"


# instance fields
.field public final A:Landroid/widget/ImageView;
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

.field public final D:Lcom/amap/api/maps/MapView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final E:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected F:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final w:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final z:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/ifengyu/library/widget/view/ItemView;Lcom/amap/api/maps/MapView;Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/ifengyu/intercom/k/s;->w:Landroid/widget/TextView;

    .line 3
    iput-object p5, p0, Lcom/ifengyu/intercom/k/s;->x:Landroid/widget/TextView;

    .line 4
    iput-object p6, p0, Lcom/ifengyu/intercom/k/s;->y:Landroid/widget/ImageView;

    .line 5
    iput-object p7, p0, Lcom/ifengyu/intercom/k/s;->z:Landroid/widget/ImageView;

    .line 6
    iput-object p8, p0, Lcom/ifengyu/intercom/k/s;->A:Landroid/widget/ImageView;

    .line 7
    iput-object p9, p0, Lcom/ifengyu/intercom/k/s;->B:Lcom/ifengyu/library/widget/view/ItemView;

    .line 8
    iput-object p10, p0, Lcom/ifengyu/intercom/k/s;->C:Lcom/ifengyu/library/widget/view/ItemView;

    .line 9
    iput-object p11, p0, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    .line 10
    iput-object p12, p0, Lcom/ifengyu/intercom/k/s;->E:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    return-void
.end method


# virtual methods
.method public abstract setClickListener(Landroid/view/View$OnClickListener;)V
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
