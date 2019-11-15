.class public Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;
.super Ljava/lang/Object;
.source "ClientAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LANGUAGE_CODE:Ljava/lang/String; = "zh_CN"


# instance fields
.field private appId:I

.field private appName:Ljava/lang/String;

.field private languageCode:Ljava/lang/String;

.field private logPath:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private releaseChannel:Ljava/lang/String;

.field private serviceProcessName:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appId:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionCode:I

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appId:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionCode:I

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    iput p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appId:I

    iput p2, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionCode:I

    iput-object p3, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    iput-object p4, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    iput-object p5, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    iput-object p6, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    invoke-virtual {p0, p8}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setLanguageCode(Ljava/lang/String;)V

    iput-object p9, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appId:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionCode:I

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->fromString(Ljava/lang/String;)V

    return-void
.end method

.method private fromString(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->strToInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setAppId(I)V

    aget-object v1, v0, v3

    invoke-static {v1, v3}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->strToInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setVersionCode(I)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setVersionName(Ljava/lang/String;)V

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setReleaseChannel(Ljava/lang/String;)V

    array-length v1, v0

    if-le v1, v4, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setAppName(Ljava/lang/String;)V

    :cond_0
    array-length v1, v0

    if-le v1, v5, :cond_1

    aget-object v1, v0, v5

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setPackageName(Ljava/lang/String;)V

    :cond_1
    array-length v1, v0

    if-le v1, v6, :cond_2

    aget-object v1, v0, v6

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setLanguageCode(Ljava/lang/String;)V

    :cond_2
    array-length v1, v0

    const/4 v2, 0x7

    if-le v1, v2, :cond_3

    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setLogPath(Ljava/lang/String;)V

    :cond_3
    array-length v1, v0

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setServiceProcessName(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static isHigherVersion(Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;)I
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static isTestChannel()Z
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appId:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setAppId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setVersionCode(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setVersionName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setReleaseChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setLanguageCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setLogPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->setServiceProcessName(Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appId:I

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setReleaseChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    return-void
.end method

.method public setServiceProcessName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getServiceProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
