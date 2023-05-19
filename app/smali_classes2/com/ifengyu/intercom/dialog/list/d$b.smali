.class Lcom/ifengyu/intercom/dialog/list/d$b;
.super Ljava/lang/Object;
.source "ItemListBuilder.java"

# interfaces
.implements Lcom/ifengyu/intercom/dialog/list/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/dialog/list/d;->k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/dialog/b;

.field final synthetic b:Lcom/ifengyu/intercom/dialog/list/a;

.field final synthetic c:Lcom/ifengyu/intercom/dialog/list/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/dialog/list/d;Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/dialog/list/d$b;->c:Lcom/ifengyu/intercom/dialog/list/d;

    iput-object p2, p0, Lcom/ifengyu/intercom/dialog/list/d$b;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    iput-object p3, p0, Lcom/ifengyu/intercom/dialog/list/d$b;->b:Lcom/ifengyu/intercom/dialog/list/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/dialog/list/a$c;ILcom/ifengyu/intercom/dialog/list/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/d$b;->c:Lcom/ifengyu/intercom/dialog/list/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/dialog/list/d;->E(Lcom/ifengyu/intercom/dialog/list/d;)Lcom/ifengyu/intercom/dialog/list/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/d$b;->c:Lcom/ifengyu/intercom/dialog/list/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/dialog/list/d;->E(Lcom/ifengyu/intercom/dialog/list/d;)Lcom/ifengyu/intercom/dialog/list/d$c;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/dialog/list/d$b;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget-object v5, p3, Lcom/ifengyu/intercom/dialog/list/c;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/ifengyu/intercom/dialog/list/d$b;->b:Lcom/ifengyu/intercom/dialog/list/a;

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/ifengyu/intercom/dialog/list/d$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    :cond_0
    return-void
.end method
