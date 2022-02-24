.class Lcom/ifengyu/intercom/ui/widget/dialog/q$b;
.super Landroid/widget/BaseAdapter;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/q;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(Lcom/ifengyu/intercom/ui/widget/dialog/q;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(Lcom/ifengyu/intercom/ui/widget/dialog/q;)[Ljava/lang/CharSequence;

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
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->c(Lcom/ifengyu/intercom/ui/widget/dialog/q;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0083

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09012b

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/high16 p3, 0x42500000    # 52.0f

    .line 3
    invoke-static {p3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHeight(I)V

    .line 4
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(Lcom/ifengyu/intercom/ui/widget/dialog/q;)[Ljava/lang/CharSequence;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q$b;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_0

    const p1, 0x7f0800c9

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-object p2
.end method
