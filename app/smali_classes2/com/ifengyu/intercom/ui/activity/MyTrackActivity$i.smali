.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private a:Landroid/text/SpannableString;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    .locals 4

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance p1, Landroid/text/SpannableString;

    const-string v0, " km"

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;->a:Landroid/text/SpannableString;

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;->a:Landroid/text/SpannableString;

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const p3, 0x7f0c014f

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;

    invoke-direct {p3, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;)V

    const v0, 0x7f090443

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f090442

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f090444

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f090441

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;)Landroid/widget/TextView;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/j0;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%.1f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$j;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;->a:Landroid/text/SpannableString;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-object p2
.end method
