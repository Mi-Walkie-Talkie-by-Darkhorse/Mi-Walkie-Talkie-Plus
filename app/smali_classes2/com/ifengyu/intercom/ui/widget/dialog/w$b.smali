.class Lcom/ifengyu/intercom/ui/widget/dialog/w$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/w;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/w;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b(Lcom/ifengyu/intercom/ui/widget/dialog/w;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b(Lcom/ifengyu/intercom/ui/widget/dialog/w;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->c(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0083

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09012b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/high16 p3, 0x42500000    # 52.0f

    invoke-static {p3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHeight(I)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->b(Lcom/ifengyu/intercom/ui/widget/dialog/w;)[Ljava/lang/CharSequence;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d(Lcom/ifengyu/intercom/ui/widget/dialog/w;)I

    move-result p3

    const v0, 0x7f060175

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    if-nez p1, :cond_1

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->e(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->d(Lcom/ifengyu/intercom/ui/widget/dialog/w;)I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    if-ne p1, v1, :cond_1

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/w;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/w;->e(Lcom/ifengyu/intercom/ui/widget/dialog/w;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/w$b;->getCount()I

    move-result p3

    sub-int/2addr p3, v1

    if-ne p1, p3, :cond_2

    const p1, 0x7f0800c9

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    return-object p2
.end method
