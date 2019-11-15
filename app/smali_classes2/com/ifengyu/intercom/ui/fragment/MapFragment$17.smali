.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:F

.field final synthetic e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;IIIF)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->a:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->b:I

    iput p4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->c:I

    iput p5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const v3, 0x7f0900a2

    const v2, 0x7f0201b8

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->a:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%02d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->b:I

    div-int/lit16 v3, v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->b:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->b:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->c:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->d:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->d:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->a:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f0201b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->a:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->a:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->a:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->c:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->c:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$17;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
