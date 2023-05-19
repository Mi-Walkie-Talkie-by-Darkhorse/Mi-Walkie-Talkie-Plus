.class Lcom/qmuiteam/qmui/widget/dialog/b$a$b;
.super Ljava/lang/Object;
.source "QMUIDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/b$a;->j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/qmuiteam/qmui/widget/dialog/b$a;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/b$a;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a$b;->b:Lcom/qmuiteam/qmui/widget/dialog/b$a;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a$b;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a$b;->b:Lcom/qmuiteam/qmui/widget/dialog/b$a;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a$b;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$a$b;->b:Lcom/qmuiteam/qmui/widget/dialog/b$a;

    iget-object v1, v1, Lcom/qmuiteam/qmui/widget/dialog/b$a;->v:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
