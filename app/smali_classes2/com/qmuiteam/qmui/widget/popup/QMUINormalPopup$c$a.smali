.class Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;
.super Ljava/lang/Object;
.source "QMUINormalPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)I

    move-result v1

    iput v1, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)I

    move-result v1

    iput v1, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->z(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->A(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    iget-object v1, v1, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e()I

    move-result v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f()I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->h()I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;

    invoke-static {v4}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method
