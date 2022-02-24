.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->a:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->b:I

    iput p4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->c:I

    iput p5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->a:I

    const v1, 0x7f1100ca

    const v2, 0x7f08020c

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    const-string v4, ""

    if-gt v0, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f08020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    if-gt v0, v3, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f08020e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x1e

    if-gt v0, v3, :cond_3

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f08020f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x32

    if-gt v0, v3, :cond_4

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordGpsAccuracy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->gpsNoAccuracyPrompt:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->b:I

    div-int/lit16 v2, v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->b:I

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->b:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v2, "%02d:%02d:%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v1, v0, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordTiming:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->c:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_5

    .line 19
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->v(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->c:I

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "%.1f"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordDistance:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->c:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressDistance:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->d:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordSpeed:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->d:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->e:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mapTrackRecordCompressSpeed:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->d(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
