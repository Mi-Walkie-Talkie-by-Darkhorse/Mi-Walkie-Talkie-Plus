.class Lcom/ifengyu/intercom/ui/adapter/c$c;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "DiscoveryFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/jude/rollviewpager/RollPagerView;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/c;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->b:Lcom/ifengyu/intercom/ui/adapter/c;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const v0, 0x7f090352

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/jude/rollviewpager/RollPagerView;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    const/16 v0, 0x3e8

    .line 4
    invoke-virtual {p2, v0}, Lcom/jude/rollviewpager/RollPagerView;->setAnimationDurtion(I)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->a(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "#FF0076FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p2, v0}, Lcom/jude/rollviewpager/RollPagerView;->setHintView(Lcom/jude/rollviewpager/a;)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    new-instance v0, Lcom/ifengyu/intercom/ui/adapter/c$c$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/c$c$a;-><init>(Lcom/ifengyu/intercom/ui/adapter/c$c;Lcom/ifengyu/intercom/ui/adapter/c;)V

    invoke-virtual {p2, v0}, Lcom/jude/rollviewpager/RollPagerView;->setOnItemClickListener(Lcom/jude/rollviewpager/b;)V

    return-void
.end method
