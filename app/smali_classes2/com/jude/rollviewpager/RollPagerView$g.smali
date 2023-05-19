.class final Lcom/jude/rollviewpager/RollPagerView$g;
.super Landroid/os/Handler;
.source "RollPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/rollviewpager/RollPagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jude/rollviewpager/RollPagerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/jude/rollviewpager/RollPagerView$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jude/rollviewpager/RollPagerView;

    .line 2
    invoke-virtual {p1}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3
    invoke-static {p1}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/jude/rollviewpager/RollPagerView;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    invoke-static {p1}, Lcom/jude/rollviewpager/RollPagerView;->f(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/RollPagerView$e;

    move-result-object v2

    invoke-static {p1}, Lcom/jude/rollviewpager/RollPagerView;->e(Lcom/jude/rollviewpager/RollPagerView;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jude/rollviewpager/a;

    invoke-interface {v2, v0, v3}, Lcom/jude/rollviewpager/RollPagerView$e;->b(ILcom/jude/rollviewpager/a;)V

    .line 6
    invoke-static {p1}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-gt v0, v1, :cond_1

    invoke-static {p1}, Lcom/jude/rollviewpager/RollPagerView;->g(Lcom/jude/rollviewpager/RollPagerView;)V

    :cond_1
    return-void
.end method
