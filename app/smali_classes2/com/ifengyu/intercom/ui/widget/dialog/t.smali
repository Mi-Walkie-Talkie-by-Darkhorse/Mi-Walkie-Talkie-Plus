.class public Lcom/ifengyu/intercom/ui/widget/dialog/t;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "MapMarkerClickDialog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

.field private c:Landroid/app/Activity;

.field private d:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/widget/dialog/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/t;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/high16 v11, 0x447a0000    # 1000.0f

    const-wide/16 v12, 0x0

    const/16 v10, 0x21

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400cc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->c:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->a(Landroid/app/Activity;)V

    const v0, 0x7f100274

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->d:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const v0, 0x7f1002d2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->e:Landroid/widget/TextView;

    const v0, 0x7f1002d3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->f:Landroid/widget/TextView;

    const v0, 0x7f1002d4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->j:Landroid/widget/TextView;

    const v0, 0x7f1002d5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->i:Landroid/widget/TextView;

    const v0, 0x7f1002d6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->g:Landroid/widget/TextView;

    const v0, 0x7f1002d7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/ac;->g(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->f:Landroid/widget/TextView;

    const v2, 0x7f09023d

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->c:Landroid/app/Activity;

    const v6, 0x7f09011d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    cmpl-double v5, v0, v12

    if-ltz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    cmpl-double v0, v2, v12

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v8, v7, [F

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v2

    aget-wide v0, v2, v9

    aget-wide v2, v2, v7

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v4

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(F)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.#"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_5

    cmpg-float v4, v0, v11

    if-gez v4, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " m"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    :goto_2
    invoke-virtual {v1, v2, v9, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " MHz"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " m"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v6

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/t$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/t;Landroid/text/SpannableStringBuilder;Landroid/text/style/AbsoluteSizeSpan;)V

    invoke-static {v4, v5, v6, v7, v0}, Lcom/ifengyu/intercom/a/a;->a(DDLcom/ifengyu/intercom/a/b/b;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->b:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->d:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_3
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_3
    div-float/2addr v0, v11

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " km"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v9, v0, -0x2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->d:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/t;->c:Landroid/app/Activity;

    const v2, 0x7f020172

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    move v0, v9

    goto/16 :goto_2
.end method
