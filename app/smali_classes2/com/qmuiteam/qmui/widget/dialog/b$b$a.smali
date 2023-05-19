.class Lcom/qmuiteam/qmui/widget/dialog/b$b$a;
.super Ljava/lang/Object;
.source "QMUIDialog.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/b$b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/b$b;->D(Lcom/qmuiteam/qmui/widget/dialog/b$b$b;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/b$b$b;

.field final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic c:Lcom/qmuiteam/qmui/widget/dialog/b$b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/b$b;Lcom/qmuiteam/qmui/widget/dialog/b$b$b;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->c:Lcom/qmuiteam/qmui/widget/dialog/b$b;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b$b$b;

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b$b$b;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b$b;->a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a;->c:Lcom/qmuiteam/qmui/widget/dialog/b$b;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->setMenuIndex(I)V

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/b$b$a$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/b$b$a$a;-><init>(Lcom/qmuiteam/qmui/widget/dialog/b$b$a;)V

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->setListener(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$a;)V

    return-object p1
.end method
