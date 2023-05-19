.class Lcom/qmuiteam/qmui/widget/dialog/b$b$a$a;
.super Ljava/lang/Object;
.source "QMUIDialog.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/b$b$a;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/b$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b$b$a;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->c:Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->E(I)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b$b$a;

    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->c:Lcom/qmuiteam/qmui/widget/dialog/b$b;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-interface {v1, v0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
