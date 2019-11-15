.class Lcom/ifengyu/intercom/ui/widget/dialog/q$a;
.super Landroid/widget/BaseAdapter;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/q;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(Lcom/ifengyu/intercom/ui/widget/dialog/q;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(Lcom/ifengyu/intercom/ui/widget/dialog/q;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->c(Lcom/ifengyu/intercom/ui/widget/dialog/q;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/q$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(Lcom/ifengyu/intercom/ui/widget/dialog/q;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q$a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-object v0
.end method
