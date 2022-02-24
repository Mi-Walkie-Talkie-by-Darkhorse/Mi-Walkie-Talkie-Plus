.class Lcom/jude/rollviewpager/RollPagerView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RollPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jude/rollviewpager/RollPagerView;->a(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jude/rollviewpager/RollPagerView;


# direct methods
.method constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/a;

    move-result-object v0

    instance-of v0, v0, Lcom/jude/rollviewpager/d/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v1}, Lcom/jude/rollviewpager/RollPagerView;->d(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v2}, Lcom/jude/rollviewpager/RollPagerView;->b(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/a;

    move-result-object v2

    check-cast v2, Lcom/jude/rollviewpager/d/a;

    invoke-virtual {v2}, Lcom/jude/rollviewpager/d/a;->a()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/jude/rollviewpager/b;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->a(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jude/rollviewpager/RollPagerView$b;->a:Lcom/jude/rollviewpager/RollPagerView;

    invoke-static {v1}, Lcom/jude/rollviewpager/RollPagerView;->d(Lcom/jude/rollviewpager/RollPagerView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jude/rollviewpager/b;->a(I)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
