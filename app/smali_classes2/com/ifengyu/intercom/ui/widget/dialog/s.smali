.class public Lcom/ifengyu/intercom/ui/widget/dialog/s;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

.field private b:Landroid/app/Activity;

.field private c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/s;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const p1, 0x7f09019a

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const p1, 0x7f090198

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d:Landroid/widget/TextView;

    const p1, 0x7f09019f

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->e:Landroid/widget/TextView;

    const p1, 0x7f09019e

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->i:Landroid/widget/TextView;

    const p1, 0x7f09019c

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->h:Landroid/widget/TextView;

    const p1, 0x7f090199

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->f:Landroid/widget/TextView;

    const p1, 0x7f090197

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->g:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->h:Landroid/widget/TextView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->f:Landroid/widget/TextView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->g:Landroid/widget/TextView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getTime()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/j0;->b(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f11036a

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v6

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b:Landroid/app/Activity;

    const v2, 0x7f1101cc

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x0

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "W"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "S"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p1, v1, [F

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object v0

    aget-wide v4, v0, v3

    aget-wide v6, v0, v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v10

    move-object v12, p1

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget p1, p1, v3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->c(F)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "#.#"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v6, " m"

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpg-float v5, p1, v3

    if-gez v5, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    goto :goto_2

    :cond_2
    div-float/2addr p1, v3

    float-to-double v7, p1

    invoke-virtual {v4, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, " km"

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const/16 v4, 0x21

    invoke-virtual {v0, v2, v3, p1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getFreq()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, " MHz"

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getAltitude()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v5

    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;

    invoke-direct {p1, p0, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/s$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/s;Landroid/text/SpannableStringBuilder;Landroid/text/style/AbsoluteSizeSpan;)V

    invoke-static {v3, v4, v5, v6, p1}, Lcom/ifengyu/intercom/g/a;->a(DDLcom/ifengyu/intercom/g/d/b;)V

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->a:Lcom/ifengyu/intercom/bean/BeanUserLocation;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {p1, v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->c:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/s;->b:Landroid/app/Activity;

    const v1, 0x7f08019e

    invoke-static {v0, v1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method
