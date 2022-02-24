.class public Lcom/ifengyu/intercom/lite/utils/f;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# static fields
.field private static final a:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    const-string v2, "Kmedium"

    invoke-direct {v0, v2, v1}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/utils/f;->a:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    const-string v2, "MI_LanTing_GB_Outside_YS_V2.3"

    invoke-direct {v0, v2, v1}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 4
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    sget-object p0, Lcom/ifengyu/intercom/lite/utils/f;->a:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, p0, v2, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f060034

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 7
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 4
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f0600c3

    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0600c6

    invoke-static {v4}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v1, v2, p0, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v0, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    sget-object v0, Lcom/ifengyu/intercom/lite/utils/f;->a:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 4
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f060034

    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, p0, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, p0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    sget-object p0, Lcom/ifengyu/intercom/lite/utils/f;->a:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method
