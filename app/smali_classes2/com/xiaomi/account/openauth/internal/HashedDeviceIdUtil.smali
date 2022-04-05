.class public Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ANDROID_ID:Ljava/lang/String; = "android_id_"

.field private static final PSEUDO_DEVICE_ID_PREFIX:Ljava/lang/String; = "android_pseudo_"

.field private static final SP_KEY_HASHED_DEVICE_ID:Ljava/lang/String; = "hashedDeviceId"

.field private static final SP_NAME_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final TAG:Ljava/lang/String; = "HashedDeviceIdUtil"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createPseudoDeviceId()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "android_pseudo_"

    aput-object v2, v0, v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "android_id_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceIdHashed()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->legal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/account/openauth/internal/DeviceIdHasher;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSP()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private legal(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private loadHistoricalHashedDeviceId()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getSP()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "hashedDeviceId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private saveHistoricalHashedDeviceId(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getSP()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hashedDeviceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getHashedDeviceIdNoThrow()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->loadHistoricalHashedDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->legal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getDeviceIdHashed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->saveHistoricalHashedDeviceId(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->legal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->saveHistoricalHashedDeviceId(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->createPseudoDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->saveHistoricalHashedDeviceId(Ljava/lang/String;)V

    return-object v0
.end method
