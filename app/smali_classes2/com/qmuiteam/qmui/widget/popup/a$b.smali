.class Lcom/qmuiteam/qmui/widget/popup/a$b;
.super Ljava/lang/Object;
.source "QMUIBasePopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/popup/a;
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
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a$b;->a:Lcom/qmuiteam/qmui/widget/popup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a$b;->a:Lcom/qmuiteam/qmui/widget/popup/a;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/a;->c()V

    return-void
.end method
