.class Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;
.super Landroid/widget/BaseAdapter;
.source "ChannelKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Landroid/view/LayoutInflater;

.field private c:[Z

.field final synthetic d:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->d:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->a:[Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->b:Landroid/view/LayoutInflater;

    .line 4
    array-length p1, p3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->c:[Z

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->a(I)Ljava/lang/String;

    move-result-object p1

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
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00ff

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;-><init>(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;)V

    const v0, 0x7f0904dd

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    const v0, 0x7f09021c

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->b:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->c:[Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->d:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->a(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->d:Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->b(Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;)[I

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->c()[I

    move-result-object v4

    aget v4, v4, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->j(I[II)Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 8
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 9
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 11
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    const v3, 0x7f1100c6

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->c:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->d()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object p1, p3, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a$a;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard;->e()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/frequency/ChannelKeyboard$a;->c:[Z

    aget-boolean p1, v0, p1

    return p1
.end method
