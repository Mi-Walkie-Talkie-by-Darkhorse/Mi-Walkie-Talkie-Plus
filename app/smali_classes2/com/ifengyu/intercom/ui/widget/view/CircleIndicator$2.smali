.class Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;
.super Landroid/database/DataSetObserver;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->d(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;I)I

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->g(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator$2;->a:Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;->a(Lcom/ifengyu/intercom/ui/widget/view/CircleIndicator;I)I

    goto :goto_1
.end method
