.class Lcom/ifengyu/intercom/lite/dialog/list/d$b;
.super Ljava/lang/Object;
.source "ItemListBuilder.java"

# interfaces
.implements Lcom/ifengyu/intercom/lite/dialog/list/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/b;

.field final synthetic b:Lcom/ifengyu/intercom/lite/dialog/list/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/dialog/list/d;Lcom/qmuiteam/qmui/widget/dialog/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d$b;->b:Lcom/ifengyu/intercom/lite/dialog/list/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/d$b;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/dialog/list/a$c;ILcom/ifengyu/intercom/lite/dialog/list/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/d$b;->b:Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d;)Lcom/ifengyu/intercom/lite/dialog/list/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/d$b;->b:Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d;)Lcom/ifengyu/intercom/lite/dialog/list/d$c;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d$b;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget-object p3, p3, Lcom/ifengyu/intercom/lite/dialog/list/c;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/ifengyu/intercom/lite/dialog/list/d$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
