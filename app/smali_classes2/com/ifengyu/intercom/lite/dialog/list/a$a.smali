.class Lcom/ifengyu/intercom/lite/dialog/list/a$a;
.super Ljava/lang/Object;
.source "BottomSheetListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/dialog/list/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/lite/dialog/list/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/dialog/list/a$c;

.field final synthetic b:Lcom/ifengyu/intercom/lite/dialog/list/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/dialog/list/a;Lcom/ifengyu/intercom/lite/dialog/list/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->b:Lcom/ifengyu/intercom/lite/dialog/list/a;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->a:Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->b:Lcom/ifengyu/intercom/lite/dialog/list/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/dialog/list/a;->a(Lcom/ifengyu/intercom/lite/dialog/list/a;)Lcom/ifengyu/intercom/lite/dialog/list/a$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->a:Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->b:Lcom/ifengyu/intercom/lite/dialog/list/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/dialog/list/a;->b(Lcom/ifengyu/intercom/lite/dialog/list/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->b:Lcom/ifengyu/intercom/lite/dialog/list/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/dialog/list/a;->a(Lcom/ifengyu/intercom/lite/dialog/list/a;)Lcom/ifengyu/intercom/lite/dialog/list/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->a:Lcom/ifengyu/intercom/lite/dialog/list/a$c;

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/dialog/list/a$a;->b:Lcom/ifengyu/intercom/lite/dialog/list/a;

    invoke-static {v2}, Lcom/ifengyu/intercom/lite/dialog/list/a;->c(Lcom/ifengyu/intercom/lite/dialog/list/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/lite/dialog/list/c;

    invoke-interface {v0, v1, p1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/a$b;->a(Lcom/ifengyu/intercom/lite/dialog/list/a$c;ILcom/ifengyu/intercom/lite/dialog/list/c;)V

    :cond_1
    return-void
.end method
