.class public Lcom/huawei/hms/scankit/p/Da;
.super Ljava/lang/Object;
.source "CountryCodeBean.java"


# static fields
.field private static final a:Ljava/lang/String; = "Da"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Da;->b(Landroid/content/Context;Z)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 11
    const-class v0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 13
    invoke-virtual {p2, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p3, v0, v4

    .line 14
    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;

    const-string p2, "getProperty catch exception: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p3

    :catch_1
    move-exception p0

    .line 16
    throw p0

    .line 17
    :cond_0
    sget-object p0, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;

    const-string p1, "reflect class for method has exception."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    const-string p1, "NETWORK_COUNTRY"

    .line 5
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getSimCountryCode by enableNetwork, countryCode="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    const-string p1, "SIM_COUNTRY"

    .line 8
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getSimCountryCode by not enableNetwork, countryCode="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Da;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "UNKNOWN"

    .line 13
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context must be not null.Please provide app\'s Context"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Da;->d()V

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Da;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "getCountryCode get country code from {%s}VENDOR_COUNTRY"

    :try_start_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Da;->a(Landroid/content/Context;Z)V

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Da;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "getCountryCode get country code from {%s}SIM_COUNTRY"

    :try_start_2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Da;->c()V

    .line 9
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Da;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "getCountryCode get country code from {%s}LOCALE_INFO"

    :try_start_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    return-void

    .line 11
    :catch_0
    sget-object p1, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;

    const-string p2, "get CountryCode error"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()V
    .locals 4

    const-string v0, "get"

    const-string v1, "ro.product.locale.region"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/Da;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    const-string v0, "LOCALE_INFO"

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLocaleCountryCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    const-string v2, "cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getLocaleCountryCode from system language is not reliable."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object v3, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    .line 7
    iput-object v3, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    const-string v0, "VENDOR_COUNTRY"

    .line 1
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    const-string v0, "get"

    const-string v1, "ro.hw.country"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/Da;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/huawei/hms/scankit/p/Da;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVendorCountry="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    const-string v2, "eu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    const-string v2, "la"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Da;->b()V

    return-void

    :cond_1
    :goto_0
    const-string v1, "getVendorCountry equals eu or la ,not reliable"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-object v3, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    .line 9
    iput-object v3, p0, Lcom/huawei/hms/scankit/p/Da;->b:Ljava/lang/String;

    return-void
.end method

.method private e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Da;->c:Ljava/lang/String;

    return-object v0
.end method
