.class public Lcom/ifengyu/intercom/p/b0;
.super Ljava/lang/Object;
.source "MethodsUtils.java"


# direct methods
.method public static A(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[a-z A-Z0-9_\\-]+"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static D(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static E(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x100

    if-lt p0, v0, :cond_3

    .line 1
    div-int/lit16 v1, p0, 0x100

    .line 2
    rem-int/2addr p0, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->f:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->e:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 6
    :cond_3
    :goto_0
    sget-object p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static F(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x100

    if-lt p0, v0, :cond_3

    .line 1
    :try_start_0
    div-int/lit16 v1, p0, 0x100

    .line 2
    rem-int/2addr p0, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->f:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->e:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->d:[Ljava/lang/String;

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_3
    :goto_0
    sget-object p0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static G(Landroid/view/View;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/p/b0$a;

    invoke-direct {v1, v0, p0}, Lcom/ifengyu/intercom/p/b0$a;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static H(Ljava/lang/CharSequence;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->B(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static I(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static J(II)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 p0, p0, 0x100

    add-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static d()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "^1[123456789]\\d{9}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 6
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const v4, 0x3e99999a    # 0.3f

    .line 7
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 8
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static g(I)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x100

    if-lt p0, v1, :cond_0

    const/4 v2, 0x0

    .line 1
    div-int/lit16 v3, p0, 0x100

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 2
    rem-int/2addr p0, v1

    aput p0, v0, v2

    :cond_0
    return-object v0
.end method

.method public static h(F)F
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 4

    const-string v0, ","

    const-string v1, "."

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    mul-double v0, v0, v2

    double-to-int p0, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 1
    new-instance p0, Ljava/text/DecimalFormat;

    const-string v2, "0.0000"

    invoke-direct {p0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/AMap"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(I)I
    .locals 1

    const/16 v0, 0x64

    add-int/2addr p0, v0

    if-gez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static m(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/ChannelBean;->getNo()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/ChannelBean;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eq v2, v1, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v0, 0x4

    if-eq v2, v0, :cond_3

    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    const/4 p0, 0x6

    if-eq v2, p0, :cond_1

    const/4 p0, 0x7

    if-eq v2, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0x7f1100a4

    .line 3
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f1100a9

    .line 4
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/ChannelBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p0, 0x7f1100a8

    .line 6
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/ChannelBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/bean/ChannelBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const p0, 0x7f110093

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const p0, 0x7f11009e

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const p0, 0x7f110098

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p0, 0x7f1100a4

    .line 4
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p0, 0x7f1100a9

    .line 5
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p0, 0x7f1100a8

    .line 7
    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f110093

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p0, 0x7f11009e

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p0, 0x7f110098

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static o(I)I
    .locals 1

    .line 1
    div-int/lit8 p0, p0, 0x2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int p0, p0, v0

    div-int/lit16 p0, p0, 0xa0

    return p0
.end method

.method public static p()I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public static q(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p0, 0x14

    if-ge v1, p0, :cond_1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get insert channel num: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MethodsUtils"

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static r(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p0, 0x14

    if-ge v1, p0, :cond_1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get insert channel num: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MethodsUtils"

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static s(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static t(I)[I
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    if-nez p0, :cond_0

    aput v2, v1, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x27

    const/4 v4, 0x1

    if-lez p0, :cond_1

    if-gt p0, v3, :cond_1

    aput v0, v1, v2

    sub-int/2addr p0, v4

    aput p0, v1, v4

    goto :goto_0

    :cond_1
    const/16 v0, 0x7b

    const/4 v5, 0x2

    if-le p0, v3, :cond_2

    if-gt p0, v0, :cond_2

    aput v5, v1, v2

    add-int/lit8 p0, p0, -0x29

    aput p0, v1, v4

    aput v2, v1, v5

    goto :goto_0

    :cond_2
    if-le p0, v0, :cond_3

    aput v5, v1, v2

    add-int/lit8 p0, p0, -0x7d

    aput p0, v1, v4

    aput v4, v1, v5

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GB2312"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xb0

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf7

    if-gt v1, v2, :cond_0

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa1

    if-lt v1, v2, :cond_0

    aget-byte p0, p0, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0xfe

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return v0
.end method

.method public static varargs v([Landroid/widget/EditText;)Z
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs w([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static x(I)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->A(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/m;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 4
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 8
    array-length v1, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 9
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method
