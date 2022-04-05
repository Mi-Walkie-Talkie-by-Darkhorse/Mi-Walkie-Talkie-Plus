.class Lcom/ifengyu/intercom/lite/c/b/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/c/b/f;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/b;

.field final synthetic b:Lcom/ifengyu/intercom/lite/c/b/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/c/b/f;Lcom/qmuiteam/qmui/widget/dialog/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/f$b;->b:Lcom/ifengyu/intercom/lite/c/b/f;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/f$b;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/f$b;->b:Lcom/ifengyu/intercom/lite/c/b/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/c/b/f;->d(Lcom/ifengyu/intercom/lite/c/b/f;)Lcom/ifengyu/intercom/lite/c/b/f$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/f$b;->b:Lcom/ifengyu/intercom/lite/c/b/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/c/b/f;->d(Lcom/ifengyu/intercom/lite/c/b/f;)Lcom/ifengyu/intercom/lite/c/b/f$c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/f$b;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/ifengyu/intercom/lite/c/b/f$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    :cond_0
    return-void
.end method
