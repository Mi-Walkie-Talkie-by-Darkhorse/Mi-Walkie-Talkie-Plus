.class Lcom/ifengyu/intercom/lite/c/b/b$b;
.super Landroid/widget/BaseAdapter;
.source "ChannelDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Z

.field final synthetic d:Lcom/ifengyu/intercom/lite/c/b/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/c/b/b;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->d:Lcom/ifengyu/intercom/lite/c/b/b;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->a:[Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->b:Landroid/view/LayoutInflater;

    .line 4
    array-length p1, p3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->c:[Z

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/c/b/b$b;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00bf

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/ifengyu/intercom/lite/c/b/b$d;

    invoke-direct {p3}, Lcom/ifengyu/intercom/lite/c/b/b$d;-><init>()V

    const v0, 0x7f090479

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    const v0, 0x7f0901d5

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->b:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/lite/c/b/b$d;

    .line 7
    :goto_0
    iget-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 8
    iget-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p3, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->c:[Z

    aput-boolean v1, p3, p1

    goto :goto_1

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 11
    iget-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    const v4, 0x7f11009c

    invoke-static {v4}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    iget-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p3, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->c:[Z

    aput-boolean v1, p3, p1

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->c:[Z

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->d:Lcom/ifengyu/intercom/lite/c/b/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/lite/c/b/b;->a(Lcom/ifengyu/intercom/lite/c/b/b;)I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->d:Lcom/ifengyu/intercom/lite/c/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/c/b/b;->b(Lcom/ifengyu/intercom/lite/c/b/b;)[I

    move-result-object v1

    invoke-virtual {v2, v3, v1, p1}, Lcom/ifengyu/intercom/lite/c/b/b;->a(I[II)Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->c:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    const-string p3, "#333333"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object p1, p3, Lcom/ifengyu/intercom/lite/c/b/b$d;->a:Landroid/widget/TextView;

    const-string p3, "#dddddd"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/b$b;->c:[Z

    aget-boolean p1, v0, p1

    return p1
.end method
