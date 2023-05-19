.class public Lcom/huawei/hms/ml/common/utils/CountryCodeBean;
.super Ljava/lang/Object;
.source "CountryCodeBean.java"


# static fields
.field private static final ANDRIOD_SYSTEMPROP:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final COUNTRYCODE_SIZE:I = 0x2

.field private static final LOCALE_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale.region"

.field private static final LOCALE_INFO:Ljava/lang/String; = "LOCALE_INFO"

.field private static final NETWORK_COUNTRY:Ljava/lang/String; = "NETWORK_COUNTRY"

.field private static final SIM_COUNTRY:Ljava/lang/String; = "SIM_COUNTRY"

.field private static final SPECIAL_COUNTRYCODE_CN:Ljava/lang/String; = "cn"

.field private static final SPECIAL_COUNTRYCODE_EU:Ljava/lang/String; = "eu"

.field private static final SPECIAL_COUNTRYCODE_LA:Ljava/lang/String; = "la"

.field private static final TAG:Ljava/lang/String; = "CountryCodeBean"

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final VENDORCOUNTRY_SYSTEMPROP:Ljava/lang/String; = "ro.hw.country"

.field private static final VENDOR_COUNTRY:Ljava/lang/String; = "VENDOR_COUNTRY"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private countrySource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->init(Landroid/content/Context;Z)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-void
.end method

.method private checkCodeLenth()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "UNKNOWN"

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private getLocaleCountryCode()V
    .locals 4

    const-string v0, "get"

    const-string v1, "ro.product.locale.region"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v0, "LOCALE_INFO"

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocaleCountryCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v2, "cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getLocaleCountryCode from system language is not reliable."

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-object v3, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 7
    iput-object v3, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
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

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 3
    invoke-virtual {p2, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p3, v0, v4

    .line 4
    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    sget-object p1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "getProperty catch exception: "

    invoke-static {p1, p2, p0}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3

    :catch_1
    move-exception p0

    .line 6
    throw p0

    .line 7
    :cond_0
    sget-object p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p1, "reflect class for method has exception."

    invoke-static {p0, p1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private getSimCountryCode(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "NETWORK_COUNTRY"

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSimCountryCode by enableNetwork, countryCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "SIM_COUNTRY"

    .line 7
    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    .line 8
    sget-object p1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSimCountryCode by not enableNetwork, countryCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->checkCodeLenth()V

    return-void
.end method

.method private getVendorCountryCode()V
    .locals 4

    const-string v0, "VENDOR_COUNTRY"

    .line 1
    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    const-string v0, "get"

    const-string v1, "ro.hw.country"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVendorCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v2, "eu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v2, "la"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->checkCodeLenth()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "getVendorCountry equals eu or la ,not reliable"

    .line 7
    invoke-static {v0, v1}, Lcom/huawei/hms/ml/common/utils/SmartLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object v3, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    .line 9
    iput-object v3, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context must be not null.Please provide app\'s Context"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->getVendorCountryCode()V

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->isCodeValidate()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getCountryCode get country code from {%s}"

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    sget-object p1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "VENDOR_COUNTRY"

    invoke-static {p1, v1, p2}, Lcom/huawei/hms/ml/common/utils/SmartLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;Z)V

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "SIM_COUNTRY"

    invoke-static {p1, v1, p2}, Lcom/huawei/hms/ml/common/utils/SmartLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->getLocaleCountryCode()V

    .line 9
    invoke-direct {p0}, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "LOCALE_INFO"

    invoke-static {p1, v1, p2}, Lcom/huawei/hms/ml/common/utils/SmartLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    sget-object p1, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "get CountryCode error"

    invoke-static {p1, p2}, Lcom/huawei/hms/ml/common/utils/SmartLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isCodeValidate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrySource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/CountryCodeBean;->countrySource:Ljava/lang/String;

    return-object v0
.end method
