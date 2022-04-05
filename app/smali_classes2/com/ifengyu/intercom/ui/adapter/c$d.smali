.class Lcom/ifengyu/intercom/ui/adapter/c$d;
.super Landroidx/recyclerview/widget/RecyclerView$y;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field final synthetic f:Lcom/ifengyu/intercom/ui/adapter/c;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->f:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f090203

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->a:Landroid/widget/TextView;

    const p1, 0x7f0901e8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->b:Landroid/widget/TextView;

    const p1, 0x7f090201

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->c:Landroid/widget/TextView;

    const p1, 0x7f090202

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->d:Landroid/widget/TextView;

    const p1, 0x7f0901f4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->e:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->d:Landroid/widget/TextView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->f:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$d;->f:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/adapter/c$a;->a(I)V

    :cond_0
    return-void
.end method
