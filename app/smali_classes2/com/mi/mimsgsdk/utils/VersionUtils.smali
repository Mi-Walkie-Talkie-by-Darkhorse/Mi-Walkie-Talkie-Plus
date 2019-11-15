.class public Lcom/mi/mimsgsdk/utils/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field private static CHANNEL_DEFAULT:Ljava/lang/String;

.field private static CHANNEL_MI_AI_KEFU:Ljava/lang/String;

.field private static CHANNEL_MI_CAR:Ljava/lang/String;

.field private static CHANNEL_MI_GOD:Ljava/lang/String;

.field private static CHANNEL_MI_QIANGZHAN:Ljava/lang/String;

.field private static CHANNEL_MI_REN:Ljava/lang/String;

.field private static CHANNEL_MI_SOUNDBOX:Ljava/lang/String;

.field private static CHANNEL_MI_WATCH:Ljava/lang/String;

.field private static CHANNEL_QWANG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "default"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_DEFAULT:Ljava/lang/String;

    const-string v0, "qWang"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_QWANG:Ljava/lang/String;

    const-string v0, "channel_mi_soundbox"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_SOUNDBOX:Ljava/lang/String;

    const-string v0, "channel_mi_god"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_GOD:Ljava/lang/String;

    const-string v0, "channel_mi_qiangzhan"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_QIANGZHAN:Ljava/lang/String;

    const-string v0, "channel_mi_ai_kefu"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_AI_KEFU:Ljava/lang/String;

    const-string v0, "channel_mi_ren"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_REN:Ljava/lang/String;

    const-string v0, "channel_mi_car"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_CAR:Ljava/lang/String;

    const-string v0, "channel_mi_watch"

    sput-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_WATCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentVersionCode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMiSDKChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/utils/VersionUtils;->CHANNEL_MI_SOUNDBOX:Ljava/lang/String;

    return-object v0
.end method

.method public static getMiSDKVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/utils/VersionUtils;->getMiSDKVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiSDKVersionCode()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.8"

    return-object v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
