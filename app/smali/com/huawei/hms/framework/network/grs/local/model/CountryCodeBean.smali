.class public Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANDRIOD_SYSTEMPROP:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final COUNTRYCODE_SIZE:I = 0x2

.field private static final LOCALE_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale"

.field private static final LOCALE_REGION_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale.region"

.field private static final SPECIAL_COUNTRYCODE_CN:Ljava/lang/String; = "cn"

.field private static final SPECIAL_COUNTRYCODE_EU:Ljava/lang/String; = "eu"

.field private static final SPECIAL_COUNTRYCODE_GB:Ljava/lang/String; = "gb"

.field private static final SPECIAL_COUNTRYCODE_LA:Ljava/lang/String; = "la"

.field private static final SPECIAL_COUNTRYCODE_UK:Ljava/lang/String; = "uk"

.field private static final TAG:Ljava/lang/String; = "CountryCodeBean"

.field private static final VENDORCOUNTRY_SYSTEMPROP:Ljava/lang/String; = "ro.hw.country"


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->init(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-void
.end method

.method private checkCodeLenth()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private getLocaleCountryCode()V
    .locals 1

    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getRegionSettingCountryCode()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getProductCountryCode()V

    :goto_0
    const-string v0, "LOCALE_INFO"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    return-void
.end method

.method private getProductCountryCode()V
    .locals 6

    const-string v0, "get"

    const-string v1, "ro.product.locale.region"

    const-string v2, "android.os.SystemProperties"

    const-string v3, "UNKNOWN"

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object v1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryCode by ro.product.locale.region is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "ro.product.locale"

    invoke-static {v0, v4, v2, v3}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryCode by ro.product.locale is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private getRegionSettingCountryCode()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryCode by system\'s region setting is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getSimCountryCode(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;Z)V

    return-void
.end method

.method private getSimCountryCode(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "NETWORK_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "countryCode by NetworkCountryIso is: "

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "SIM_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "countryCode by SimCountryIso is: "

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    return-void
.end method

.method private getVendorCountryCode()V
    .locals 5

    const-string v0, "VENDOR_COUNTRY"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    const-string v1, "get"

    const-string v2, "ro.hw.country"

    const-string v3, "android.os.SystemProperties"

    const-string v4, "UNKNOWN"

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object v1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCode by ro.hw.country is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v3, "eu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v3, "la"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v3, "uk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "special country of UK to map GB."

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gb"

    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    goto :goto_1

    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 0

    const-string p2, "context must be not null.Please provide app\'s Context"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getVendorCountryCode()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "get issue_country code from VENDOR_COUNTRY"

    :try_start_1
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "get issue_country code from SIM_COUNTRY"

    :try_start_2
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getLocaleCountryCode()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "get issue_country code from LOCALE_INFO"

    :try_start_3
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "get CountryCode error"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isCodeValidate()Z
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrySource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    return-object v0
.end method
