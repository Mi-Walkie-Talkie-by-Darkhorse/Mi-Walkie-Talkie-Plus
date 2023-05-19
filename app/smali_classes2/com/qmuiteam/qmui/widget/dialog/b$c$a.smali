.class Lcom/qmuiteam/qmui/widget/dialog/b$c$a;
.super Ljava/lang/Object;
.source "QMUIDialog.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/b$b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/b$c;->F(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/b$c;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/b$c$a;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/b$c$a;->a:Ljava/lang/CharSequence;

    invoke-direct {v0, p1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v0
.end method
