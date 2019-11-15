.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;
.super Landroid/widget/BaseAdapter;
.source "MyTrackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

.field private b:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    .locals 5

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " km"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Landroid/text/SpannableString;

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .locals 7

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const v1, 0x7f04010e

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;)V

    const v0, 0x7f100343

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f100342

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f100340

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f100341

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->y()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->y()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_1
    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;)Landroid/widget/TextView;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/ac;->e(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0201b4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
