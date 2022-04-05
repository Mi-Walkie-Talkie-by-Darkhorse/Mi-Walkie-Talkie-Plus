.class public Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->a(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(IF)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iput p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->getSelectedIndex()I

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(IZZ)V

    :cond_1
    return-void
.end method
