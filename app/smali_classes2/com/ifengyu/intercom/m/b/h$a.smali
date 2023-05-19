.class Lcom/ifengyu/intercom/m/b/h$a;
.super Ljava/lang/Object;
.source "PickerDialogBuilder.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/m/b/h;->k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/b;

.field final synthetic b:Lcom/ifengyu/intercom/m/b/h;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/m/b/h;Lcom/qmuiteam/qmui/widget/dialog/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/h$a;->b:Lcom/ifengyu/intercom/m/b/h;

    iput-object p2, p0, Lcom/ifengyu/intercom/m/b/h$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/h$a;->b:Lcom/ifengyu/intercom/m/b/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/h;->E(Lcom/ifengyu/intercom/m/b/h;)[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/h$a;->b:Lcom/ifengyu/intercom/m/b/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/h;->F(Lcom/ifengyu/intercom/m/b/h;)Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/h$a;->b:Lcom/ifengyu/intercom/m/b/h;

    invoke-static {v1}, Lcom/ifengyu/intercom/m/b/h;->E(Lcom/ifengyu/intercom/m/b/h;)[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P([Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/h$a;->b:Lcom/ifengyu/intercom/m/b/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/h;->G(Lcom/ifengyu/intercom/m/b/h;)Lcom/ifengyu/intercom/m/b/h$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/h$a;->b:Lcom/ifengyu/intercom/m/b/h;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/h;->G(Lcom/ifengyu/intercom/m/b/h;)Lcom/ifengyu/intercom/m/b/h$c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/m/b/h$a;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/ifengyu/intercom/m/b/h$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    :cond_1
    return-void
.end method
