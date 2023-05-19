.class Lcom/qmuiteam/qmui/widget/popup/a$d;
.super Ljava/lang/Object;
.source "QMUIBasePopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/popup/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/popup/a;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/popup/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a$d;->a:Lcom/qmuiteam/qmui/widget/popup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a$d;->a:Lcom/qmuiteam/qmui/widget/popup/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/a;->h()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a$d;->a:Lcom/qmuiteam/qmui/widget/popup/a;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/a;->a(Lcom/qmuiteam/qmui/widget/popup/a;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a$d;->a:Lcom/qmuiteam/qmui/widget/popup/a;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/a;->a(Lcom/qmuiteam/qmui/widget/popup/a;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
