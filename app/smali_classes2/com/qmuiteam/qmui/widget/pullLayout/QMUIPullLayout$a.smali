.class Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;->b:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;->b:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;)Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;->b:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$a;->b:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;->a(Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;Z)V

    return-void
.end method
