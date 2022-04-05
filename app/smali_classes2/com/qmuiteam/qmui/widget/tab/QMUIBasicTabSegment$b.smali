.class Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

.field final synthetic b:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

.field final synthetic f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;Lcom/qmuiteam/qmui/widget/tab/QMUITabView;IILcom/qmuiteam/qmui/widget/tab/QMUITab;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->b:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    iput p4, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->c:I

    iput p5, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->d:I

    iput-object p6, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->e:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->b:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->e:Lcom/qmuiteam/qmui/widget/tab/QMUITab;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;Lcom/qmuiteam/qmui/widget/tab/QMUITab;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->a:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->b:Lcom/qmuiteam/qmui/widget/tab/QMUITabView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabView;->setSelectFraction(F)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->c:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->d:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->b(Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->c:I

    iput v0, p1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->c:I

    iget v0, p1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iget v0, p1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->a(IZZ)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iput v1, p1, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->d:I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment$b;->f:Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;

    iput-object p1, v0, Lcom/qmuiteam/qmui/widget/tab/QMUIBasicTabSegment;->l:Landroid/animation/Animator;

    return-void
.end method
