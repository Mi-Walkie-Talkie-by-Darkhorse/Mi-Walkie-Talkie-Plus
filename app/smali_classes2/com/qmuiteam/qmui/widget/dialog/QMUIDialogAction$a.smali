.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;
.super Ljava/lang/Object;
.source "QMUIDialogAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->a(Lcom/qmuiteam/qmui/widget/dialog/b;I)Lcom/qmuiteam/qmui/layout/QMUIButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/b;

.field final synthetic b:I

.field final synthetic c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    iput p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->b(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->c:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;

    move-result-object p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;->b:I

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;->a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    :cond_0
    return-void
.end method
